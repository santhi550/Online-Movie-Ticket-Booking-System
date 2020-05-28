package com.myproject.demo.model;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Theatres {

	@Id
	private int tid;
	private String tname;
	private int seats;
	private String seating_plan;
	public String getSeating_plan() {
		return seating_plan;
	}
	public void setSeating_plan(String seating_plan) {
		this.seating_plan = seating_plan;
	}
	public int getTid() {
		return tid;
	}
	public void setTid(int tid) {
		this.tid = tid;
	}
	public String getTname() {
		return tname;
	}
	public void setTname(String tname) {
		this.tname = tname;
	}
	public int getSeats() {
		return seats;
	}
	public void setSeats(int seats) {
		this.seats = seats;
	}
	@Override
	public String toString() {
		return "Theatres [tid=" + tid + ", tname=" + tname + ", seats=" + seats + ", seating_plan=" + seating_plan
				+ "]";
	}
	
}
