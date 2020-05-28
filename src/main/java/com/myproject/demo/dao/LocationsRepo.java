package com.myproject.demo.dao;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import com.myproject.demo.model.Locations;

public interface LocationsRepo extends CrudRepository<Locations,Integer> {

	@Query("select distinct location from Locations")
	List<String> findAllLocations();
	
	@Query("select tid from Locations where location=?1")
	List<Integer> findTheatresByLocation(String location);
}
