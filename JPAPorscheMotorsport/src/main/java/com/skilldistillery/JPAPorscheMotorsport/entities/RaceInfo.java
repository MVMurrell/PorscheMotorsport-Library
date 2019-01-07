package com.skilldistillery.JPAPorscheMotorsport.entities;

import java.util.ArrayList;

import javax.persistence.Column;
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
@JoinColumn(name="car_id")
private Racecars car;

@Column(name="racetrack_id")
private int racetrackId;


@Override
public String toString() {
	return "RaceInfo [id=" + id + ", car=" + car + ", racetrack=" + racetrackId + ", losses=" + losses
			+ ", championships=" + championships + ", wins=" + wins
			+ "]";
}

public int getRacetrackId() {
	return racetrackId;
}



public void setRacetrack(int racetrackId) {
	this.racetrackId = racetrackId;
}

private int losses;

private int championships;




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


}
