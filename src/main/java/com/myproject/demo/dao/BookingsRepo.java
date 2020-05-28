package com.myproject.demo.dao;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import com.myproject.demo.model.Bookings;

public interface BookingsRepo extends CrudRepository<Bookings,Integer>{

	@Query("select trans_id from Bookings where mid=?1 and tid=?2 and date=?3 and time=?4")
	List<String> findAllTrans(int mid,int tid,String date,String time);
	
	@Query("from Bookings where email=?1")
	List<Bookings> findAllByEmail(String email);
}
