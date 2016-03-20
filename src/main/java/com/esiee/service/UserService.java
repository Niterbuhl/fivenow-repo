package com.esiee.service;

import java.util.List;

import com.esiee.beans.User;
import com.esiee.exception.UserNotFound;
public interface UserService {
    
    public User create(User user);
    public User delete(int id) throws UserNotFound;
    public List<User> findAll();
    public User update(User user) throws UserNotFound;
    public User findById(int id);
    public User findByNom(String nom);
 
}
