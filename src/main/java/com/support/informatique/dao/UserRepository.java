package com.support.informatique.dao;

import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.support.informatique.entities.User;



@Repository
public interface UserRepository extends CrudRepository<User, Integer> {
	@Query("Select u.email from User u where u.email=:x")
	String findByEmail(@Param("x") String name);
	@Query("Select u.username from User u where u.username=:x")
	String findName(@Param("x") String name);
	@Query("Select u from User u where u.idUser=:x")
	User findById(@Param("x") Integer id);
	@Query("Select u from User u where u.username=:x")
	User findByUsername(@Param("x") String username);
	@Query("Select u from User u where u.typeUser=:x")
	Iterable<User> findTech(@Param("x") String type);
	@Transactional
	@Modifying
	@Query("Delete User u where u.idUser=:x")
	void deletebyId(@Param("x") Integer id);

}
