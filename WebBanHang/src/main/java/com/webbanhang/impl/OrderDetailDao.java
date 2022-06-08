package com.webbanhang.impl;

import org.springframework.data.jpa.repository.JpaRepository;

import com.webbanhang.model.OrderDetail;

public interface OrderDetailDao extends JpaRepository<OrderDetail, Integer>{

}
