package com.support.informatique.dao;

import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import com.support.informatique.entities.Ticket;
import com.support.informatique.entities.User;





@Component
public interface TicketRepository extends CrudRepository<Ticket, Integer> {
	@Query("Select u from Ticket u where u.user=:x")
	Ticket findByuserId(@Param("x") User user);
	@Query("Select u from Ticket u where u.idTicket=:x")
	Ticket findById(@Param("x") Integer id);
	
	@Transactional
	@Modifying
	@Query("Delete Ticket u where u.idTicket=:x")
	void deletebyId(@Param("x") Integer id);
}
