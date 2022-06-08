package com.webbanhang.model;

import java.util.List;

import javax.persistence.*;


import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;


@Data
@NoArgsConstructor
@AllArgsConstructor
@Entity
@Table(name = "Orderdetail")
public class OrderDetail {

	@Id
	@Column(name="Id")
	private int id;

	@Column(name="Quantity")
	private int quantity;

	//bi-directional many-to-one association to Order
	@ManyToOne
	@JoinColumn(name="Order_Id")
	private Order order;

	//bi-directional many-to-one association to Product
	@ManyToOne
	@JoinColumn(name="Product_Id")
	private Product product;


	
}