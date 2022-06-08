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
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name="ID")
	private int id;

	@Column(name="Email")
	private String email;

	@Column(name="Password")
	private String password;

	@Column(name="Rules")
	private int rules;

	@Column(name="Status")
	private boolean status;

	@Column(name="Username")
	private String username;

	//bi-directional many-to-one association to Cutomer
	@ManyToOne
	@JoinColumn(name="Cutomers_id")
	private Cutomer cutomer;

}