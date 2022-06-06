package com.webbanhang.model;

import java.sql.Date;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;


@Data
@NoArgsConstructor
@AllArgsConstructor
@Entity
@Table(name = "Img")
public class Img {

	@Id
	@Column(name="ID")
	private int id;

	@Column(name="Image")
	private String image;

	//bi-directional many-to-one association to Product
	@ManyToOne
	@JoinColumn(name="Imageid")
	private Product product;

	
}
