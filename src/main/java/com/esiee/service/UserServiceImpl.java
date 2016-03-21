package com.esiee.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.esiee.beans.User;
import com.esiee.repository.UserRepository;
import com.esiee.exception.UserNotFound;

@Service
public class UserServiceImpl implements UserService {

	@Resource
	private UserRepository userRepository;
		
	@Override
	@Transactional
	public User create(User user) {
		User createdUser = user;
		return userRepository.save(createdUser);
	}

	@Override
	@Transactional(rollbackFor=UserNotFound.class)
	public User delete(int id) throws UserNotFound {
		User deletedUser = userRepository.findOne(id);
		
		if (deletedUser == null)
            throw new UserNotFound();
		
		userRepository.delete(deletedUser);
		return deletedUser;
	}

	@Override
	@Transactional
	public List<User> findAll() {
		return userRepository.findAll();
	}

	@Override
	@Transactional(rollbackFor=UserNotFound.class)
	public User update(User user) throws UserNotFound {
		User updatedUser = userRepository.findOne(user.getId());
		
		if (updatedUser == null)
            throw new UserNotFound();
		
		updatedUser.setNom(user.getNom());
        updatedUser.setPrenom(user.getPrenom());
		return null;
	}

	@Override
	@Transactional
	public User findById(int id) {
		return userRepository.findOne(id);
	}
	
	@Override
	@Transactional
	public User findByNom(String nom) {
		return userRepository.findByNom(nom);
	}

}
