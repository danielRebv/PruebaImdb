package com.examenfinal.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.examenfinal.dao.RatingRepository;
import com.examenfinal.model.Rating;

public class RatingService {
	@Autowired
	private RatingRepository ratingRepository;
	
	public List<Rating> findAllRatings(){
		return ratingRepository.findAll();
	}
	
	public Rating findRatingById(Long id) {
		return ratingRepository.findById(id).orElse(null);
	}
	
	public void addRating(Rating rating) {
		ratingRepository.save(rating);
	}

}