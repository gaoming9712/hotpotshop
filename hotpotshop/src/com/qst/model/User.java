package com.qst.model;

public class User {
	private Integer uid;
	private String username;
	private String password;
	public Integer getId() {
		return uid;
	}
	public void setId(Integer uid) {
		this.uid = uid;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
}
