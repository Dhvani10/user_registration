package com.registration.repositrory;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.registration.entity.User;

@Repository
public interface UserRepository extends JpaRepository<User, Integer> {
	List<User> findAllByOrderByDateDesc();
}
