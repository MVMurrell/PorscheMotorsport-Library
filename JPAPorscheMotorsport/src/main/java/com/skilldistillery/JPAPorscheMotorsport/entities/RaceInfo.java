package com.skilldistillery.JPAPorscheMotorsport.entities;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name="race_info")
public class RaceInfo {

@Id
@GeneratedValue(strategy=GenerationType.IDENTITY)
private int id;

@ManyToOne
@JoinColumn(name="id")
private Racecars car;

private int racetrack;

private int racecarsId;

public int getRacecarID() {
	return racecarsId;
}

public void setRacecarID(int racecarID) {
	this.racecarsId = racecarID;
}

@Override
public String toString() {
	return "RaceInfo [id=" + id + ", car=" + car + ", racetrack=" + racetrack + ", losses=" + losses
			+ ", championships=" + championships + ", category=" + category + ", wins=" + wins
			+ "]";
}

public int getRacetrack() {
	return racetrack;
}

public void setRacetrack(int racetrack) {
	this.racetrack = racetrack;
}

private int losses;

private int championships;


private String category;

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


public String getCategory() {
	return category;
}

public void setCategory(String category) {
	this.category = category;
}


}
