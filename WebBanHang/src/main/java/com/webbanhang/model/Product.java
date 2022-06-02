package com.webbanhang.model;

import javax.persistence.*;


import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.sql.Timestamp;
import java.util.List;


@Data
@NoArgsConstructor
@AllArgsConstructor
@Entity
public class Product{

	@Id
	@Column(name="Id")
	private int id;

	@Column(name="Date")
	private Timestamp date;

	@Column(name="Detail")
	private String detail;

	@Column(name="Image")
	private String image;

	@Column(name="Name")
	private String name;

	@Column(name="Order")
	private int order;

	@Column(name="Price")
	private double price;

	@Column(name="PriceNew")
	private double priceNew;

	@Column(name="Status")
	private int status;

	//bi-directional many-to-one association to OrderDetail
	@OneToMany(mappedBy="product")
	private List<OrderDetail> orderDetails;

	//bi-directional many-to-one association to GroupProduct
	@ManyToOne
	@JoinColumn(name="GroupProduct_ID")
	private GroupProduct groupProduct;

	
}