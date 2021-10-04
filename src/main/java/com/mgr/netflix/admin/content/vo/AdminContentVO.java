package com.mgr.netflix.admin.content.vo;

public class AdminContentVO {
	private String content_id;
	private String content_title;
	private int content_rating;
	private int content_making;
	private String summary;
	private int runningtime;
	private String category_name;
	private String genre_name;
	private String director_name;
	private String actor_name;
	private String country;
	private String is_main;
	private String imagequality;	
	private String characteristic;
	private String english_title;
	
	public String getImagequality() {
		return imagequality;
	}
	public void setImagequality(String imagequality) {
		this.imagequality = imagequality;
	}
	
	
	public String getContent_id() {
		return content_id;
	}
	public void setContent_id(String content_id) {
		this.content_id = content_id;
	}
	public String getContent_title() {
		return content_title;
	}
	public void setContent_title(String content_title) {
		this.content_title = content_title;
	}
	public int getContent_rating() {
		return content_rating;
	}
	public void setContent_rating(int content_rating) {
		this.content_rating = content_rating;
	}
	public int getContent_making() {
		return content_making;
	}
	public void setContent_making(int content_making) {
		this.content_making = content_making;
	}
	public String getSummary() {
		return summary;
	}
	public void setSummary(String summary) {
		this.summary = summary;
	}
	public int getRunningtime() {
		return runningtime;
	}
	public void setRunningtime(int runningtime) {
		this.runningtime = runningtime;
	}
	public String getCategory_name() {
		return category_name;
	}
	public void setCategory_name(String category_name) {
		this.category_name = category_name;
	}
	public String getGenre_name() {
		return genre_name;
	}
	public void setGenre_name(String genre_name) {
		this.genre_name = genre_name;
	}

	public String getDirector_name() {
		return director_name;
	}
	public void setDirector_name(String director_name) {
		this.director_name = director_name;
	}
	public String getActor_name() {
		return actor_name;
	}
	public void setActor_name(String actor_name) {
		this.actor_name = actor_name;
	}
	public String getCountry() {
		return country;
	}
	public void setCountry(String country) {
		this.country = country;
	}
	public String getIs_main() {
		return is_main;
	}
	public void setIs_main(String is_main) {
		this.is_main = is_main;
	}
	public String getCharacteristic() {
		return characteristic;
	}
	public void setCharacteristic(String characteristic) {
		this.characteristic = characteristic;
	}
	public String getEnglish_title() {
		return english_title;
	}
	public void setEnglish_title(String english_title) {
		this.english_title = english_title;
	}
	

}
