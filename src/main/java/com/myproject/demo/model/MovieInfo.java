package com.myproject.demo.model;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class MovieInfo {

	@Id
	private int movie_id;
	private String genre;
	private String lan;
	private String rd;
	private String ml;
	private String story;
	private String per;
	private String link;
	public int getMovie_id() {
		return movie_id;
	}
	public void setMovie_id(int movie_id) {
		this.movie_id = movie_id;
	}
	public String getGenre() {
		return genre;
	}
	public void setGenre(String genre) {
		this.genre = genre;
	}
	public String getLan() {
		return lan;
	}
	public void setLan(String lan) {
		this.lan = lan;
	}
	public String getRd() {
		return rd;
	}
	public void setRd(String rd) {
		this.rd = rd;
	}
	public String getMl() {
		return ml;
	}
	public void setMl(String ml) {
		this.ml = ml;
	}
	public String getStory() {
		return story;
	}
	public void setStory(String story) {
		this.story = story;
	}
	public String getPer() {
		return per;
	}
	public void setPer(String per) {
		this.per = per;
	}
	public String getLink() {
		return link;
	}
	public void setLink(String link) {
		this.link = link;
	}
	@Override
	public String toString() {
		return "MovieInfo [movie_id=" + movie_id + ", genre=" + genre + ", lan=" + lan + ", rd=" + rd + ", ml=" + ml
				+ ", story=" + story + ", per=" + per + ", link=" + link + "]";
	}
	
}
