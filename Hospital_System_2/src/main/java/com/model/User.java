package com.model;

import javax.persistence.*;

@SuppressWarnings("restriction")
@Entity
@Table(name = "user_dtls")

public class User {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)

	@Column(name = "id")
	private int id;
	@Column(name = "full_name")
	private String fullname;
	@Column(name = "email")
	private String email;

	@Column(name = "password")
	private String password;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getFullname() {
		return fullname;
	}

	public void setFullname(String fullname) {
		this.fullname = fullname;
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

	public User() {
		super();
		// TODO Auto-generated constructor stub
	}

	public User(String fullname, String email, String password) {
		super();
		this.fullname = fullname;
		this.email = email;
		this.password = password;
	}

	public void setPassword(String password) {
		this.password = password;
	}
}
