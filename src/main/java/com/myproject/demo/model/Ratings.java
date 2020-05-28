package com.myproject.demo.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Ratings {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int id;
	private int auth_user_id;
	private int mid;
	private int rating;
	public int getAuth_user_id() {
		return auth_user_id;
	}
	public void setAuth_user_id(int auth_user_id) {
		this.auth_user_id = auth_user_id;
	}
	public int getMid() {
		return mid;
	}
	public void setMid(int mid) {
		this.mid = mid;
	}
	public int getRating() {
		return rating;
	}
	public void setRating(int rating) {
		this.rating = rating;
	}
	@Override
	public String toString() {
		return "Ratings [auth_user_id=" + auth_user_id + ", mid=" + mid + ", rating=" + rating + "]";
	}
}
