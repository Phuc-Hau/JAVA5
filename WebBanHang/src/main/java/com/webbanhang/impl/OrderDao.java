package com.webbanhang.impl;

import org.springframework.data.jpa.repository.JpaRepository;

import com.webbanhang.model.Order;

public interface OrderDao extends JpaRepository<Order, Integer>{

}
