package com.hephaestus.authentication_service.dao;

import com.hephaestus.authentication_service.model.User;
import org.springframework.data.jpa.repository.JpaRepository;

public interface UserDao extends JpaRepository<User, Long> {
    User findByUserName(String userName);
}
