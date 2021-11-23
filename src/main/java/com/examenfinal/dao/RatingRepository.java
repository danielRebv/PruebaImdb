package com.examenfinal.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.examenfinal.model.Rating;

public interface RatingRepository extends JpaRepository<Rating, Long>{
	List<Rating> findAll();
}

