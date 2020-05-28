package com.myproject.demo.dao;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import com.myproject.demo.model.Movie_Theatre;

public interface Movie_TheatreRepo extends CrudRepository<Movie_Theatre,Integer>{

	@Query("select distinct movie_id from Movie_Theatre where tid=?1")
	List<Integer> findMoviesByTid(Integer tid);
	
	@Query("from Movie_Theatre where tid=?1 and movie_id=?2")
	Movie_Theatre findMovieByTid(Integer tid,Integer movie_id);
}
