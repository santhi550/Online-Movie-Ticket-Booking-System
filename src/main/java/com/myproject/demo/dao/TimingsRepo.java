package com.myproject.demo.dao;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import com.myproject.demo.model.Timings;

public interface TimingsRepo extends CrudRepository<Timings,Integer>{

	@Query("from Timings where tid=?1")
	List<Timings> findAllByTid(Integer tid);
}
