package com.examenfinal.model;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.validation.constraints.Size;

@Entity
@Table(name = "shows")
public class Show {
	@Id
	@GeneratedValue(strategy = GenerationType.SEQUENCE)
	@Column(name = "show_id", nullable = false, unique = true)
	private Long id;
	
	@Size(min = 1, message = "title must be present")
	private String showTitle;
	
	@Size(min = 1, message = "network must be present")
	private String network;
	
	@OneToMany(fetch = FetchType.LAZY)
	@JoinColumn(name = "user_id")
	private User creatorShow;
	
	@ManyToMany(cascade = CascadeType.ALL, fetch = FetchType.EAGER)
	@JoinTable(name = "show_rating", joinColumns = @JoinColumn(name = "show_id"), inverseJoinColumns = @JoinColumn(name = "rating_id"))
	private List<Rating> rating; 
	
	

	public Show() {
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getShowTitle() {
		return showTitle;
	}

	public void setShowTitle(String showTitle) {
		this.showTitle = showTitle;
	}

	public String getNetwork() {
		return network;
	}

	public void setNetwork(String network) {
		this.network = network;
	}

	public User getCreatorShow() {
		return creatorShow;
	}

	public void setCreatorShow(User creatorShow) {
		this.creatorShow = creatorShow;
	}

	public List<Rating> getRating() {
		return rating;
	}

	public void setRating(List<Rating> rating) {
		this.rating = rating;
	}
	
	
	
	

}
