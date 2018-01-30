package com.support.informatique.service;

import java.util.List;

import com.support.informatique.entities.User;

public interface UserService {

	<S extends User> S save(S entity);

	User findOne(Integer id);

	boolean exists(Integer id);

	Iterable<User> findTech(String type);

	Iterable<User> findAll();

	List<String> findByType(String type);

	User findByConfirmationToken(String token);

	long count();

	void delete(User entity);

	User findByEmail(String name);

	String getEmail(String email);

	User findById(Integer id);

	void deletebyId(Integer id);

	String findName(String name);

	User findByUsername(String username);

}