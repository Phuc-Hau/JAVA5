package com.webbanhang.impl;

import org.springframework.data.jpa.repository.JpaRepository;

import com.webbanhang.model.Product;

public interface ProductDao extends JpaRepository<Product, Integer>{

}
