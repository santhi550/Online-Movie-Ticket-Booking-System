package com.myproject.demo.dao;

import org.springframework.data.repository.CrudRepository;

import com.myproject.demo.model.movies;

public interface moviesRepo extends CrudRepository<movies,Integer>{

}
