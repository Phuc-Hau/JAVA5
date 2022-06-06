package com.webbanhang.model;


import java.sql.Date;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;


@Data
@NoArgsConstructor
@AllArgsConstructor
@Entity
@Table(name = "Product")
public class Product{

	@Id
	@Column(name="Id")
	private int id;

	@Column(name="Amount")
	private int amount;

	@Column(name="Date")
	private Date date;

	@Column(name="Detail")
	private String detail;

	@Column(name="Image")
	private String image;

	@Column(name="Name")
	private String name;

	@Column(name="Price")
	private double price;

	@Column(name="Pricenew")
	private double pricenew;

	@Column(name="Status")
	private int status;

	//bi-directional many-to-one association to OrderDetail
	@OneToMany(mappedBy="product")
	private List<OrderDetail> orderDetails;

	//bi-directional many-to-one association to GroupProduct
	@ManyToOne
	@JoinColumn(name="GroupID")
	private GroupProduct groupProduct;

	
}