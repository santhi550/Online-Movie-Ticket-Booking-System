package com.myproject.demo.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class auth_user {
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int auth_user_id;
	private String full_name;
	private String email;
	private String password;
	private String location;
	private String status;
	
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public int getAuth_user_id() {
		return auth_user_id;
	}
	public void setAuth_user_id(int auth_user_id) {
		this.auth_user_id = auth_user_id;
	}
	public String getFull_name() {
		return full_name;
	}
	public void setFull_name(String full_name) {
		this.full_name = full_name;
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
	public String getLocation() {
		return location;
	}
	public void setLocation(String location) {
		this.location = location;
	}
	@Override
	public String toString() {
		return "auth_user [auth_user_id=" + auth_user_id + ", full_name=" + full_name + ", email=" + email
				+ ", password=" + password + ", location=" + location + ", status=" + status + "]";
	}
	

}
