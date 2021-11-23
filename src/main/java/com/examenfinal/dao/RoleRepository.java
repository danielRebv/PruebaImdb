package com.examenfinal.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.examenfinal.model.Role;

public interface RoleRepository extends JpaRepository<Role, Long>{
	List<Role> findAll();
	
	List<Role> findByName(String name);

}

