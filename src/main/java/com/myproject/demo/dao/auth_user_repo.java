package com.myproject.demo.dao;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import com.myproject.demo.model.auth_user;

public interface auth_user_repo extends CrudRepository<auth_user,Integer>{

	@Query("select auth_user_id from auth_user where email=?1")
	Integer findByEmail(String email);
	
	@Query("select email from auth_user")
	List<String> findByAllEmail();
	
	@Query("select location from auth_user where email=?1")
	String findLocationByEmail(String email);
	
	@Query("select full_name from auth_user where email=?1")
	String findNameByEmail(String email);
	
	@Query("select auth_user_id from auth_user where email=?1")
	Integer findIdByEmail(String email);
}
