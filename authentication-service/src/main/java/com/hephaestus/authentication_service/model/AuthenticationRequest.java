package com.hephaestus.authentication_service.model;

import lombok.Data;

@Data
public class AuthenticationRequest {
    private String username;
    private String password;
}
