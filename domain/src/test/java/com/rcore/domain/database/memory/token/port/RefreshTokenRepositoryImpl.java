package com.rcore.domain.database.memory.token.port;

import com.rcore.domain.base.port.SearchResult;
import com.rcore.domain.token.entity.RefreshTokenEntity;
import com.rcore.domain.token.port.RefreshTokenRepository;

import java.util.*;
import java.util.stream.Collectors;

public class RefreshTokenRepositoryImpl implements RefreshTokenRepository {
    private Map<String, RefreshTokenEntity> container = new HashMap<>();

    @Override
    public RefreshTokenEntity save(RefreshTokenEntity object) {
        container.put(object.getId(), object);
        return object;
    }

    @Override
    public Boolean delete(RefreshTokenEntity object) {
         container.remove(object.getId());
         return true;
    }

    @Override
    public Boolean deleteById(String id) {
        container.remove(id);
        return true;
    }

    @Override
    public Long count() {
        return (long) container.size();
    }

    @Override
    public Optional<RefreshTokenEntity> findById(String id) {
        return Optional.ofNullable(container.get(id));
    }

    @Override
    public SearchResult<RefreshTokenEntity> find(Long size, Long skip) {
        return SearchResult.withItemsAndCount(
                container.values()
                        .stream()
                        .skip(skip)
                        .limit(size)
                        .collect(Collectors.toList()),
                count()
        );
    }

    @Override
    public void expireRefreshToken(RefreshTokenEntity refreshTokenEntity) {
        for (RefreshTokenEntity entity : container.values()) {
            if (entity.getId().equals(refreshTokenEntity.getId())) {

                entity.setStatus(RefreshTokenEntity.Status.INACTIVE);

            }
        }
    }

    @Override
    public List<RefreshTokenEntity> findAllActiveByUserId(String userId) {
        List<RefreshTokenEntity> result = new ArrayList<>();
        for (RefreshTokenEntity refreshTokenEntity : container.values()) {
            if (refreshTokenEntity.getUserId().equals(userId) && refreshTokenEntity.isActive() == true) {
                result.add(refreshTokenEntity);
            }
        }
        return result;
    }
}