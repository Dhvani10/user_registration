package com.registration.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.registration.entity.User;
import com.registration.repositrory.UserRepository;

@Repository
public class UserService {

	@Autowired
	private UserRepository userRepository;

	public List<User> findAll() {
		return userRepository.findAll();
	}

	public List<User> findAllByOrderByDateDesc() {
		return userRepository.findAllByOrderByDateDesc();
	}
	
	public Optional<User> findById(int id) {
		return userRepository.findById(id);
	}

	public List<User> save(User user) {
		userRepository.save(user);
		return userRepository.findAll();
	}

	public List<User> update(User user) {
		userRepository.save(user);
		return userRepository.findAll();
	}

	public List<User> delete(int id) {
		userRepository.delete(userRepository.findById(id).get());
		return userRepository.findAll();
	}
}
