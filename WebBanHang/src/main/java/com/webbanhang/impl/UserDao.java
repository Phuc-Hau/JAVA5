package com.webbanhang.impl;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.webbanhang.model.User;

public interface UserDao extends JpaRepository<User, Integer>{

	@Query("SELECT o FROM User o WHERE o.email = ?1 ")
	User findByEmail(String email);
	
}
