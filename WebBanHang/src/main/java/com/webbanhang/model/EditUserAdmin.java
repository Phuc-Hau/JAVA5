package com.webbanhang.model;


import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class EditUserAdmin {

	private int iduser;

	private String email;

	private String password;

	private int rules;

	private boolean status;

	private String username;
	
	private int idcutomer;

	private String address;

	private String birthday;

	private String name;

	private String procvince;

	private String tel;
	
	public EditUserAdmin(User user, Cutomer cutomer) {
		this.iduser = user.getId();
		this.username = user.getUsername();
		this.email = user.getEmail();
		this.password= user.getPassword();
		this.rules= user.getRules();
		this.status= user.isStatus();
		
		this.idcutomer = cutomer.getId();
		this.address = cutomer.getAddress();
		this.birthday = cutomer.getBirthday();
		this.name = cutomer.getName();
		this.procvince = cutomer.getProcvince();
		this.tel = cutomer.getTel();
	}
	
	
	public User getUser() {
		User user = new User();
		user.setId(iduser);
		user.setEmail(email);
		user.setPassword(password);
		user.setRules(rules);
		user.setStatus(status);
		user.setUsername(username);
		return user;
	}
	
	public Cutomer getCutomer() {
		Cutomer cutomer = new Cutomer();
		cutomer.setId(idcutomer);
		cutomer.setAddress(address);
		cutomer.setBirthday(birthday);
		cutomer.setName(name);
		cutomer.setProcvince(procvince);
		cutomer.setTel(tel);
		return cutomer;
	}
	
}
