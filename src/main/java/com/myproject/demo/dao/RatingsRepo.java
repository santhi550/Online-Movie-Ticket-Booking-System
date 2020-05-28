package com.myproject.demo.dao;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import com.myproject.demo.model.Ratings;

public interface RatingsRepo extends CrudRepository<Ratings,Integer>{

	@Query("select id from Ratings where auth_user_id=?1 and mid=?2")
	Integer findRatingById(int auth_user_id,int mid);
	
	@Query("select avg(rating) from Ratings where mid=?1")
	float findAverageByMid(int mid);
	
	@Query("from Ratings where mid=?1")
	List<Ratings> findAllByMid(int mid);
}
