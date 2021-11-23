package com.examenfinal.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.examenfinal.dao.ShowRepository;
import com.examenfinal.model.Show;

@Service
public class ShowService {
	
	@Autowired
	private ShowRepository showRepository;
	
	
	public Show findById(Long id) {
		Optional<Show> optionalShow = showRepository.findById(id);
		if (optionalShow.isPresent()) {
			return optionalShow.get();
		} else {
			return null;
		}
	}
	
	
	public List<Show> findAllShows(){
		return showRepository.findAll();
	} 
	
	public void saveShow(Show show) {
		showRepository.save(show);
	}
	
	public void updateShow(Show show) {
		showRepository.save(show);
	}
	
	public void deleteShow(Long id) {
		showRepository.deleteById(id);
	}
	

}
