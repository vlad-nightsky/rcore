package com.rcore.domain.user.config;

import com.rcore.domain.role.port.RoleRepository;
import com.rcore.domain.token.exception.AuthorizationException;
import com.rcore.domain.token.port.AccessTokenStorage;
import com.rcore.domain.token.port.RefreshTokenRepository;
import com.rcore.domain.token.port.RefreshTokenStorage;
import com.rcore.domain.token.usecase.AuthorizationByTokenUseCase;
import com.rcore.domain.token.usecase.CreateAccessTokenUseCase;
import com.rcore.domain.token.usecase.CreateRefreshTokenUseCase;
import com.rcore.domain.token.usecase.ExpireTokenUseCase;
import com.rcore.domain.user.port.UserIdGenerator;
import com.rcore.domain.user.port.PasswordGenerator;
import com.rcore.domain.user.port.UserRepository;
import com.rcore.domain.user.usecase.admin.*;
import com.rcore.domain.user.usecase.all.CreateUserByPhoneNumber;
import com.rcore.domain.user.usecase.all.EmailAuthenticationUseCase;
import com.rcore.domain.user.usecase.all.ViewUserUserCase;
import lombok.RequiredArgsConstructor;

public class UserConfig {

    @RequiredArgsConstructor
    public static class Admin {
        protected final UserRepository userRepository;
        protected final UserIdGenerator userIdGenerator;
        protected final PasswordGenerator passwordGenerator;
        protected final ExpireTokenUseCase expireTokenUseCase;
        protected final RoleRepository roleRepository;
        protected final AuthorizationByTokenUseCase authorizationByTokenUseCase;

        public ActivateUseCase activateUseCase() throws AuthorizationException {
            return new ActivateUseCase(this.userRepository, authorizationByTokenUseCase);
        }

        public BlockUseCase BlockUseCase() throws AuthorizationException {
            return new BlockUseCase(this.userRepository, expireTokenUseCase, authorizationByTokenUseCase);
        }

        public ChangeRoleUseCase ChangeRoleUseCase() throws AuthorizationException {
            return new ChangeRoleUseCase(this.userRepository, authorizationByTokenUseCase);
        }

        public CreateUserUseCase CreateUseCase() throws AuthorizationException {
            return new CreateUserUseCase(this.userRepository, passwordGenerator, userIdGenerator, authorizationByTokenUseCase);
        }

        public DeleteUserUseCase DeleteUserUseCase() throws AuthorizationException {
            return new DeleteUserUseCase(this.userRepository, authorizationByTokenUseCase);
        }

        public InitAdminUseCase InitAdminUseCase() {
            return new InitAdminUseCase(userRepository, passwordGenerator, userIdGenerator, roleRepository);
        }

        public UpdateUserUseCase UpdateUserUseCase() throws AuthorizationException {
            return new UpdateUserUseCase(this.userRepository, authorizationByTokenUseCase);
        }

        public ViewUserUseCase ViewUserUseCase() throws AuthorizationException {
            return new ViewUserUseCase(this.userRepository, authorizationByTokenUseCase);
        }
    }

    @RequiredArgsConstructor
    public static class All {
        private final UserRepository userRepository;
        private final UserIdGenerator userIdGenerator;
        private final PasswordGenerator passwordGenerator;
        private final CreateRefreshTokenUseCase createRefreshTokenUseCase;
        private final CreateAccessTokenUseCase createAccessTokenUseCase;
        private final RefreshTokenStorage refreshTokenStorage;
        private final AccessTokenStorage accessTokenStorage;

        public EmailAuthenticationUseCase emailAuthenticationUseCase() {
            return new EmailAuthenticationUseCase(userRepository, passwordGenerator, createRefreshTokenUseCase, createAccessTokenUseCase, refreshTokenStorage, accessTokenStorage);
        }

        public ViewUserUserCase viewUserUserCase() {
            return new ViewUserUserCase(userRepository);
        }

        public CreateUserByPhoneNumber createUserByPhoneNumber() {
            return new CreateUserByPhoneNumber(userRepository, userIdGenerator);
        }

    }

    public final Admin admin;
    public final All all;

    public UserConfig(
            UserRepository userRepository,
            UserIdGenerator userIdGenerator,
            PasswordGenerator passwordGenerator,
            ExpireTokenUseCase expireTokenUseCase,
            CreateRefreshTokenUseCase createRefreshTokenUseCase,
            CreateAccessTokenUseCase createAccessTokenUseCase,
            RoleRepository roleRepository,
            AuthorizationByTokenUseCase authorizationByTokenUseCase,
            RefreshTokenStorage refreshTokenStorage,
            AccessTokenStorage accessTokenStorage) {

        this.admin = new Admin(userRepository, userIdGenerator, passwordGenerator, expireTokenUseCase, roleRepository, authorizationByTokenUseCase);
        this.all = new All(userRepository, userIdGenerator, passwordGenerator, createRefreshTokenUseCase, createAccessTokenUseCase, refreshTokenStorage, accessTokenStorage);
    }

}
