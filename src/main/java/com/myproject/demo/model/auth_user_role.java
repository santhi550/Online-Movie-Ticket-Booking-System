package com.myproject.demo.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class auth_user_role {

	@Id
	private int auth_user_id;
	private int auth_role_id;
	public int getAuth_user_id() {
		return auth_user_id;
	}
	public void setAuth_user_id(int auth_user_id) {
		this.auth_user_id = auth_user_id;
	}
	public int getAuth_role_id() {
		return auth_role_id;
	}
	public void setAuth_role_id(int auth_role_id) {
		this.auth_role_id = auth_role_id;
	}
}
