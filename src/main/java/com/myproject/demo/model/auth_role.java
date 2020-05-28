package com.myproject.demo.model;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class auth_role {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int auth_role_id;
	private String role_name;
	private String role_desc;
	public int getAuth_role_id() {
		return auth_role_id;
	}
	public void setAuth_role_id(int auth_role_id) {
		this.auth_role_id = auth_role_id;
	}
	public String getRole_name() {
		return role_name;
	}
	public void setRole_name(String role_name) {
		this.role_name = role_name;
	}
	public String getRole_desc() {
		return role_desc;
	}
	public void setRole_desc(String role_desc) {
		this.role_desc = role_desc;
	}
	
}