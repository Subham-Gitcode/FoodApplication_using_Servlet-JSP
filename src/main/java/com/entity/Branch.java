package com.entity;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

import org.hibernate.annotations.ManyToAny;

@Entity
public class Branch {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	@Column(nullable = false)
	private String  branch_name;
	@Column(nullable = false)
	private String  address;
	@Column(nullable = false, unique = true)
	private String  email;
	@Column(nullable = false)
	private String  password;
	@Column(nullable = false)
	private long  phoneno;
	@Column(nullable = false)
	private String  branchM_name;
	
	
	@ManyToOne(cascade = CascadeType.PERSIST)
	@JoinColumn(name="admin")
	private Users user;


	public int getId() {
		return id;
	}


	public void setId(int id) {
		this.id = id;
	}


	public String getBranch_name() {
		return branch_name;
	}


	public void setBranch_name(String branch_name) {
		this.branch_name = branch_name;
	}


	public String getAddress() {
		return address;
	}


	public void setAddress(String address) {
		this.address = address;
	}


	public String getEmail() {
		return email;
	}


	public void setEmail(String email) {
		this.email = email;
	}


	public String getPassword() {
		return password;
	}


	public void setPassword(String password) {
		this.password = password;
	}


	public long getPhoneno() {
		return phoneno;
	}


	public void setPhoneno(long phoneno) {
		this.phoneno = phoneno;
	}


	public String getBranchM_name() {
		return branchM_name;
	}


	public void setBranchM_name(String branchM_name) {
		this.branchM_name = branchM_name;
	}


	public Users getUser() {
		return user;
	}


	public void setUser(Users user) {
		this.user = user;
	}


	
	

}
