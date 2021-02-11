package com.karin.pomodoro.services;


import java.util.ArrayList;
import java.util.List;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import com.karin.pomodoro.models.User;
import com.karin.pomodoro.repositories.UserRepository;

@Service
public class UserDetailsServiceImplementation implements UserDetailsService{
	private final UserRepository uRepo;
	
	public UserDetailsServiceImplementation(UserRepository uRepo) {
		this.uRepo = uRepo;
	}

	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		User user = uRepo.findByEmail(username);
        if(user == null) {
            throw new UsernameNotFoundException("User not found");
        }
		return new org.springframework.security.core.userdetails.User(user.getEmail(), user.getPassword(),getAuthorities(user));
    }
    
   private List<GrantedAuthority> getAuthorities(User user){
        List<GrantedAuthority> authorities = new ArrayList<GrantedAuthority>();
        authorities.add(new SimpleGrantedAuthority("ROLE_USER"));
        return authorities;
    }
	
	
}
