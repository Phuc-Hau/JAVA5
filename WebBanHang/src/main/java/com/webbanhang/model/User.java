package com.webbanhang.model;


import javax.persistence.*;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;


@Data
@NoArgsConstructor
@AllArgsConstructor
@Entity
@Table(name = "[User]")
public class User {


	@Id
	@Column(name="ID")
	private int id;

	@Column(name="Username")
	private String username;
	
	@Column(name="Email")
	private String email;

	@Column(name="Password")
	private String password;

	@Column(name="Status")
	private boolean status;
	
	@Column(name="Rules")
	private int rules;

	
	//bi-directional many-to-one association to Cutomer
	@ManyToOne
	@JoinColumn(name="Cutomers_id")
	private Cutomer cutomer;


}