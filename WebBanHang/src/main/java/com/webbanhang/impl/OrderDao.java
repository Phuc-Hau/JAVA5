package com.webbanhang.impl;


import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.webbanhang.model.Order;

public interface OrderDao extends JpaRepository<Order, Integer>{

	
	@Query("select o from Order o where o.status=0 and o.cutomer.id= ?1")
	Order findIdCutomer(int i);
	
	@Query("SELECT MAX(o.id) FROM Order o")
	int maxId();
	
	@Query("SELECT SUM(o.quantity*(o.product.price-o.product.price*o.product.pricenew)) "
			+ "  FROM OrderDetail o where o.order.id = ?1")
	int sumPrice(int idOrder);
}
