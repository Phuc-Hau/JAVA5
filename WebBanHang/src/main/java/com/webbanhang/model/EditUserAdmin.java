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
	
	private String img;
	
	private int idcutomer;

	private String address;

	private String birthday;

	private String name;

	private String provinces;

	private String tel;
	
	private String district;
	
	private String sex;
	
	public EditUserAdmin(User user, Cutomer cutomer) {
		this.iduser = user.getId();
		this.username = user.getUsername();
		this.email = user.getEmail();
		this.password= user.getPassword();
		this.rules= user.getRules();
		this.status= user.isStatus();
		this.img = user.getImg();
		
		this.idcutomer = cutomer.getId();
		this.address = cutomer.getAddress();
		this.birthday = cutomer.getBirthday();
		this.name = cutomer.getName();
		this.provinces = cutomer.getProcvince();
		this.tel = cutomer.getTel();
		this.district = cutomer.getDistrict();
		this.sex = cutomer.getSex();
	}
	
	
	public User getUser() {
		User user = new User();
		user.setId(iduser);
		user.setEmail(email);
		user.setPassword(password);
		user.setRules(rules);
		user.setStatus(status);
		user.setUsername(username);
		user.setImg(img);
		return user;
	}
	
	public Cutomer getCutomer() {
		Cutomer cutomer = new Cutomer();
		cutomer.setId(idcutomer);
		cutomer.setAddress(address);
		cutomer.setBirthday(birthday);
		cutomer.setName(name);
		cutomer.setProcvince(provinces);
		cutomer.setTel(tel);
		cutomer.setDistrict(district);
		cutomer.setSex(sex);
		return cutomer;
	}
	
}
