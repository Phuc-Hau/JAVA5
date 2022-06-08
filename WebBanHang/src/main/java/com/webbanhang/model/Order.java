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
@Table(name="Orders")
public class Order {
	@Id
	@Column(name="Id")
	private int id;

	@Column(name="Date")
	private Timestamp date;

	@Column(name="Status")
	private int status;

	@Column(name="Totalmoney")
	private double totalmoney;

	//bi-directional many-to-one association to OrderDetail
	@OneToMany(mappedBy="order")
	private List<OrderDetail> orderDetails;

	//bi-directional many-to-one association to Cutomer
	@ManyToOne
	@JoinColumn(name="Customer_id")
	private Cutomer cutomer;


}