package com.myproject.demo.dao;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import com.myproject.demo.model.Tickets;

public interface TicketsRepo extends CrudRepository<Tickets,Integer>{

	@Query("select ticket from Tickets where trans_id=?1")
	List<String> findTicketByTrans(String trans_id);
}
