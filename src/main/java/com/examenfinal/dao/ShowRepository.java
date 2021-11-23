package com.examenfinal.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.examenfinal.model.Show;

public interface ShowRepository extends JpaRepository<Show, Long>{
	List<Show> findAll();
}
