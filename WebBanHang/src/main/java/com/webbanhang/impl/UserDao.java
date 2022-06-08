package com.webbanhang.impl;

import org.springframework.data.jpa.repository.JpaRepository;

import com.webbanhang.model.User;

public interface UserDao extends JpaRepository<User, Integer>{

}
