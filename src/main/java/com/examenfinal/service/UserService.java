package com.examenfinal.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import com.examenfinal.dao.RoleRepository;
import com.examenfinal.dao.UserRepository;
import com.examenfinal.model.User;

@Service
public class UserService {
	
		
		@Autowired
		private UserRepository userRepository;
		
		@Autowired
		private RoleRepository roleRepository;
		
		@Autowired
		private BCryptPasswordEncoder bCryptPasswordEncoder;
		
		public void saveWithUserRole(User user) {
			user.setPassword(bCryptPasswordEncoder.encode(user.getPassword()));
			user.setRoles(roleRepository.findByName("ROLE_USER"));
		}
		
		public void savedWithAdminRole(User user) {
			user.setPassword(bCryptPasswordEncoder.encode(user.getPassword()));
			user.setRoles(roleRepository.findByName("ROLE_ADMIN"));
		}
		
		public User findByUsername(String username) {
			return userRepository.findByUsername(username);
		}
		
		public User findUserBy(Long id) {
			Optional <User> optionalUser = userRepository.findById(id);
			if (optionalUser.isPresent()) {
				return optionalUser.get();
			} else {
				return null;
			}
			
		}
		public User findUserByEmail(String email) {
			return userRepository.findByEmail(email);
		}
		
		public List<User> findAllUser(){
			return userRepository.findAll();
		}
		
		public void createUser(User user) {
			userRepository.save(user);
		}
		
		public void updateUser(User user) {
			userRepository.save(user);
		}
		
		public void deleteUser(Long id) {
			userRepository.deleteById(id);
		}

}