package com.rcore.domain.security.exceptions;

public enum AuthorizationErrorReason {
    ACCESS_TOKEN_NOT_PROVIDED,
    ACCESS_TOKEN_MALFORMED,
    ACCESS_TOKEN_MODIFIED,
    ACCESS_TOKEN_NOT_EXIST,
    ACCESS_TOKEN_INACTIVATED,
    ACCESS_TOKEN_REFRESHED,
    ACCESS_TOKEN_EXPIRED,
    CREDENTIAL_NOT_EXIST,
    CREDENTIAL_BLOCKED,
    CREDENTIAL_PERMISSIONS_INSUFFICIENT
}
