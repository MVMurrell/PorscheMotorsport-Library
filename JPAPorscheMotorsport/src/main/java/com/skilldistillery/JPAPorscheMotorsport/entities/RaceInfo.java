package com.skilldistillery.JPAPorscheMotorsport.entities;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name="race_info")
public class RaceInfo {

@Id
@GeneratedValue(strategy=GenerationType.IDENTITY)
private int id;

@OneToOne(mappedBy="ri")
private Racecars car;

public Racecars getCar() {
	return car;
}

public void setCar(Racecars car) {
	this.car = car;
}

private int wins;

public int getId() {
	return id;
}

public void setId(int id) {
	this.id = id;
}

public int getWins() {
	return wins;
}

public void setWins(int wins) {
	this.wins = wins;
}

public int getLosses() {
	return losses;
}

public void setLosses(int losses) {
	this.losses = losses;
}

public int getChampionships() {
	return championships;
}

public void setChampionships(int championships) {
	this.championships = championships;
}

public int getRaces() {
	return races;
}

public void setRaces(int races) {
	this.races = races;
}

public String getCategory() {
	return category;
}

public void setCategory(String category) {
	this.category = category;
}

private int losses;

private int championships;

private int races;

private String category;

}
