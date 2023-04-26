package com.whitefox.springbookstore.models.enums;

import org.springframework.security.core.GrantedAuthority;

public enum Role implements GrantedAuthority {
    ROLE_USER,
    ROLE_TRADER,
    ROLE_ADMIN;

    @Override
    public String getAuthority() {
        return name();
    }
}
