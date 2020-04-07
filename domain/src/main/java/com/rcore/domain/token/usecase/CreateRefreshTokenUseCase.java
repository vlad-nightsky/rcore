package com.rcore.domain.token.usecase;

import com.rcore.domain.token.entity.RefreshTokenEntity;
import com.rcore.domain.token.port.RefreshTokenIdGenerator;
import com.rcore.domain.token.port.RefreshTokenRepository;
import com.rcore.domain.token.port.TokenSaltGenerator;
import com.rcore.domain.user.entity.UserEntity;

import java.util.Date;
import java.util.Optional;

public class CreateRefreshTokenUseCase {

    private final RefreshTokenIdGenerator idGenerator;
    private final RefreshTokenRepository repository;
    private final TokenSaltGenerator tokenSaltGenerator;


    public CreateRefreshTokenUseCase(RefreshTokenIdGenerator idGenerator, RefreshTokenRepository repository, TokenSaltGenerator tokenSaltGenerator) {
        this.idGenerator = idGenerator;
        this.repository = repository;
        this.tokenSaltGenerator = tokenSaltGenerator;
    }

    private RefreshTokenEntity create(String userId, RefreshTokenEntity.CreateFrom createFrom, String refreshTokenId){
        RefreshTokenEntity refreshTokenEntity = new RefreshTokenEntity();

        refreshTokenEntity.setId(this.idGenerator.generate());
        refreshTokenEntity.setUserId(userId);
        refreshTokenEntity.setExpireAt(new Date( new Date().getTime() + refreshTokenEntity.getExpireTimeRefreshToken() ));
        refreshTokenEntity.setStatus(RefreshTokenEntity.Status.ACTIVE);

        refreshTokenEntity.setCreateFromTokenId(refreshTokenId);
        refreshTokenEntity.setCreateFromType(createFrom);

        refreshTokenEntity.setSalt(tokenSaltGenerator.generate());

        return refreshTokenEntity;
    }

    public Optional<RefreshTokenEntity> create(UserEntity userEntity){
        return repository.save(create(userEntity.getId(), RefreshTokenEntity.CreateFrom.LOGIN, null));
    }

    public Optional<RefreshTokenEntity> create(RefreshTokenEntity oldRefreshTokenEntity){
        return  repository.save(create(oldRefreshTokenEntity.getUserId(), RefreshTokenEntity.CreateFrom.LOGIN, oldRefreshTokenEntity.getId()));
    }

}