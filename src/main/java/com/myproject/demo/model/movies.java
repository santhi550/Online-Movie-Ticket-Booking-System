package com.myproject.demo.model;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class movies {
	
	@Id
	private int movie_id;
	private String movie_name;
	private String img;
	public String getImg() {
		return img;
	}
	public void setImg(String img) {
		this.img = img;
	}
	public int getMovie_id() {
		return movie_id;
	}
	public void setMovie_id(int movie_id) {
		this.movie_id = movie_id;
	}
	public String getMovie_name() {
		return movie_name;
	}
	public void setMovie_name(String movie_name) {
		this.movie_name = movie_name;
	}
	@Override
	public String toString() {
		return "movies [movie_id=" + movie_id + ", movie_name=" + movie_name + ", img=" + img + "]";
	}
	

}
