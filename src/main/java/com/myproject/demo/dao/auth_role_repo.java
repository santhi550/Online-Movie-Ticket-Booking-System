package com.myproject.demo.dao;

import java.util.List;

import org.springframework.data.jdbc.repository.query.Query;
import org.springframework.data.repository.CrudRepository;

import com.myproject.demo.model.auth_role;

public interface auth_role_repo extends CrudRepository<auth_role,Integer>{
	
}
