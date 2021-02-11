package com.karin.pomodoro.services;

import java.util.Optional;

import org.mindrot.jbcrypt.BCrypt;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import com.karin.pomodoro.models.User;
import com.karin.pomodoro.repositories.UserRepository;


@Service
public class UserService {
	private final UserRepository userRepo;
	private BCryptPasswordEncoder bCryptPasswordEncoder;
	
	public UserService(UserRepository userRepository,BCryptPasswordEncoder bCryptPasswordEncoder) {
        this.userRepo = userRepository;
        this.bCryptPasswordEncoder = bCryptPasswordEncoder;
    }
	 public void registerUser(User user) {
		 user.setPassword(bCryptPasswordEncoder.encode(user.getPassword()));
	     userRepo.save(user);
	     }
	 
	 public User findUserById(Long id) {
	    	Optional<User> u = userRepo.findById(id);
	    	if(u.isPresent()) {
	            return u.get();
	    	} else {
	    	    return null;
	    	}
	    }
	 public User authenticateUser(String email, String password) {
	        User user = userRepo.findByEmail(email);
	        if(user != null) {
	            if(BCrypt.checkpw(password, user.getPassword())) {
	                return user;
	            	}           
	        	}
	        return null;
	        }
	 
	 public User findByEmail(String email) {
	        return userRepo.findByEmail(email);
	    }
	public User findByName(String name) {
		return userRepo.findByName(name);
	}
    

}
