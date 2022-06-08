package com.webbanhang.model;

import javax.persistence.*;


import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.List;


@Data
@NoArgsConstructor
@AllArgsConstructor
@Entity
@Table(name = "Groupproduct")
public class GroupProduct{

	@Id
	@Column(name="ID")
	private int id;

	@Column(name="Content")
	private String content;

	private String images;

	@Column(name="Name")
	private String name;

	@Column(name="Status")
	private int status;

	//bi-directional many-to-one association to Product
	@OneToMany(mappedBy="groupProduct")
	private List<Product> products;


}