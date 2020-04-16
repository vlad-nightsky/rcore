package com.rcore.restapi.security.web;

import com.rcore.adapter.domain.token.TokenAdapter;
import com.rcore.adapter.domain.token.dto.AccessTokenDTO;
import com.rcore.adapter.domain.token.dto.RefreshTokenDTO;
import com.rcore.adapter.domain.user.UserAdapter;
import com.rcore.adapter.domain.user.dto.TokenPairDTO;
import com.rcore.adapter.domain.user.dto.UserDTO;
import com.rcore.domain.token.exception.AuthenticationException;
import com.rcore.domain.user.exception.AdminUserIsExistException;
import com.rcore.domain.user.exception.UserBlockedException;
import com.rcore.domain.user.exception.UserNotFoundException;
import com.rcore.restapi.exceptions.InternalServerException;
import com.rcore.restapi.routes.BaseAuthRoutes;
import com.rcore.restapi.security.web.api.AuthenticationDTO;
import com.rcore.restapi.security.web.api.RefreshTokenRequest;
import com.rcore.restapi.security.web.api.UserCredentialsDTO;
import com.rcore.restapi.web.api.response.OkApiResponse;
import com.rcore.restapi.web.api.response.SuccessApiResponse;
import com.rcore.security.infrastructure.AuthTokenGenerator;
import com.rcore.security.infrastructure.jwt.exceptions.JWTGenerateException;
import com.rcore.security.infrastructure.jwt.exceptions.JWTParseException;
import lombok.RequiredArgsConstructor;
import lombok.SneakyThrows;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

@RequiredArgsConstructor
@RestController
public class BaseAuthEndpoints {

    @Value("${rcore.security.jwt.key}")
    private String secretKey;

    private final UserAdapter userAdapter;
    private final TokenAdapter tokenAdapter;
    private final AuthTokenGenerator<AccessTokenDTO> accessTokenGenerator;
    private final AuthTokenGenerator<RefreshTokenDTO> refreshTokenGenerator;

    @PostMapping(value = BaseAuthRoutes.INIT_ADMIN)
    public OkApiResponse initAdmin(@RequestBody UserCredentialsDTO request) throws AdminUserIsExistException {
        userAdapter.getAdmin().initAdminUser(request.getEmail(), request.getPassword());
        return OkApiResponse.of();
    }

    @PostMapping(value = BaseAuthRoutes.LOGIN)
    public SuccessApiResponse<AuthenticationDTO> login(@RequestBody UserCredentialsDTO request) throws UserNotFoundException, UserBlockedException, AuthenticationException, JWTGenerateException {
        TokenPairDTO tokenPair = userAdapter.getAll()
                .authentication(request.getEmail(), request.getPassword());

        return SuccessApiResponse.of(AuthenticationDTO.builder()
                .accessToken(accessTokenGenerator.generate(tokenPair.getAccessToken(), secretKey))
                .refreshToken(refreshTokenGenerator.generate(tokenPair.getRefreshToken(), secretKey))
                .build());
    }

    @PostMapping(value = BaseAuthRoutes.REFRESH)
    public SuccessApiResponse<AuthenticationDTO> refresh(@RequestBody RefreshTokenRequest request) throws JWTParseException, UserNotFoundException, UserBlockedException, AuthenticationException, JWTGenerateException {
        TokenPairDTO tokenPair = userAdapter.getAll()
                .getNewTokenPairByRefreshToken(refreshTokenGenerator.parseToken(request.getRefreshToken(), secretKey));

        return SuccessApiResponse.of(AuthenticationDTO.builder()
                .accessToken(accessTokenGenerator.generate(tokenPair.getAccessToken(), secretKey))
                .refreshToken(refreshTokenGenerator.generate(tokenPair.getRefreshToken(), secretKey))
                .build());
    }

    @PostMapping(value = BaseAuthRoutes.LOGOUT)
    public OkApiResponse logout() throws AuthenticationException {
        UserDTO user = tokenAdapter.currentUser();
        tokenAdapter.logout(user);
        return OkApiResponse.of();
    }
}
