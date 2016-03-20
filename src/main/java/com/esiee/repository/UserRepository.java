package com.esiee.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.transaction.annotation.Transactional;

import com.esiee.beans.User;

@Transactional
public interface UserRepository  extends JpaRepository<User, Integer>
{
	public User findByNom(String nom);
	List<User> findByNomLike(String nom);
	
	List<User> findByPrenomLike(String prenom);
}