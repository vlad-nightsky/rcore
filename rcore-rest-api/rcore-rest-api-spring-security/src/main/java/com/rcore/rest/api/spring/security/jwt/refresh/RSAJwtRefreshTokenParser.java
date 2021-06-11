package com.rcore.rest.api.spring.security.jwt.refresh;

import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.nimbusds.jose.JWSVerifier;
import com.nimbusds.jose.crypto.RSASSAVerifier;
import com.nimbusds.jose.jwk.JWK;
import com.nimbusds.jose.jwk.RSAKey;
import com.nimbusds.jwt.SignedJWT;
import com.rcore.domain.commons.exception.DomainException;
import com.rcore.domain.security.exceptions.AccessTokenExpiredException;
import com.rcore.domain.security.exceptions.AccessTokenMalformedException;
import com.rcore.domain.security.exceptions.AccessTokenModifiedException;
import com.rcore.domain.security.model.CredentialDetails;
import com.rcore.domain.security.model.RefreshTokenData;
import com.rcore.domain.security.port.TokenParser;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.List;

//TODO Поменять ошибки связанные в ACCESS TOKEN на REFRESH TOKEN
@RequiredArgsConstructor
@Slf4j
public class RSAJwtRefreshTokenParser implements TokenParser<RefreshTokenData> {

    private final String rsaPublicKey;
    private final ObjectMapper objectMapper;

    @Override
    public RefreshTokenData parseWithValidating(String token) {
        try {
            RSAKey rsa = (RSAKey) JWK.parseFromPEMEncodedObjects(rsaPublicKey);
            SignedJWT signedJWT = SignedJWT.parse(token);
            JWSVerifier verifier = new RSASSAVerifier(rsa);
            boolean isValid = signedJWT.verify(verifier);

            if (!isValid)
                throw new AccessTokenModifiedException();

            DateTimeFormatter dateTimeFormatter = DateTimeFormatter.ISO_DATE_TIME;
            LocalDateTime expiredAt = LocalDateTime.parse(signedJWT.getJWTClaimsSet().getClaim("expiredAt").toString(), dateTimeFormatter);

            if (expiredAt.isBefore(LocalDateTime.now()))
                throw new AccessTokenExpiredException();

            return RefreshTokenData.builder()
                    .id(signedJWT.getJWTClaimsSet().getClaim("tokenId").toString())
                    .credentialId(signedJWT.getJWTClaimsSet().getClaim("credentialId").toString())
                    .expiredAt(expiredAt)
                    .createdAt(LocalDateTime.parse(signedJWT.getJWTClaimsSet().getClaim("createdAt").toString(), dateTimeFormatter))
                    .roles(objectMapper.readValue(signedJWT.getJWTClaimsSet().getClaim("roles").toString(), new TypeReference<List<CredentialDetails.Role>>() {
                    }))
                    .build();
        } catch (DomainException domainException) {
            domainException.printStackTrace();
            throw domainException;
        } catch (Exception e) {
            e.printStackTrace();
            log.error("Refresh token data parsing error", e);
            throw new AccessTokenMalformedException();
        }
    }
}
