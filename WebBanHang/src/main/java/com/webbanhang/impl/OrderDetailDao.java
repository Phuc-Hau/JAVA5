package com.webbanhang.impl;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.webbanhang.model.OrderDetail;
import com.webbanhang.model.User;

public interface OrderDetailDao extends JpaRepository<OrderDetail, Integer>{

	@Query("SELECT o FROM OrderDetail o WHERE o.order.cutomer.id = ?1 and o.order.status = 1")
	List<OrderDetail> findAllUsername(int id);

	
}
