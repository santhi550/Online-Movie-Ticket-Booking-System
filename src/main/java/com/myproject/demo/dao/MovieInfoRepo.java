package com.myproject.demo.dao;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import com.myproject.demo.model.MovieInfo;

public interface MovieInfoRepo extends CrudRepository<MovieInfo,Integer> {

	@Query("select movie_id from MovieInfo where lan=?1")
	List<Integer> findByLan(String lan);
	
	@Query("select distinct lan from MovieInfo")
	List<String> findLans();
}
