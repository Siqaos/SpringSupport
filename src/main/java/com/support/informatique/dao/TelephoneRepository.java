package com.support.informatique.dao;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Component;
import com.support.informatique.entities.Telephone;

@Component
public interface TelephoneRepository extends CrudRepository<Telephone, Integer> {
	@Query("Select u from Telephone u where u.idMateriel=:x")
	Telephone findById(@Param("x") int id);
}