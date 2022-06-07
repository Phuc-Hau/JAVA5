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
@Table(name="Cutomers")
public class Cutomer {
	

	@Id
	@Column(name="Id")
	private int id;

	private String address;

	private String birthday;

	private String name;

	private String procvince;

	private String tel;

	//bi-directional many-to-one association to Order
	@OneToMany(mappedBy="cutomer")
	private List<Order> orders;

	//bi-directional many-to-one association to User
	@OneToMany(mappedBy="cutomer")
	private List<User> users;


}