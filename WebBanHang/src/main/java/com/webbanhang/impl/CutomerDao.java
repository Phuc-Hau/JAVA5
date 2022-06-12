package com.webbanhang.impl;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.webbanhang.model.Cutomer;
import com.webbanhang.model.User;

public interface CutomerDao extends JpaRepository<Cutomer, Integer>{

	
	@Query("SELECT MAX(o.id) FROM Cutomer o")
	int getIdFinal();
	
	
}
