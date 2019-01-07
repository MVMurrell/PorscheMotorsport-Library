package com.skilldistillery.JPAPorscheMotorsport.entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import org.hibernate.sql.Insert;

@Entity
@Table(name="race_info")
public class RaceInfo {

@Id
@GeneratedValue(strategy=GenerationType.IDENTITY)
private int id;

@ManyToOne()
@JoinColumn(name="race_id")
private Racecars car;

private String racetrack;

//@Column(name="race_id")
//private int raceId;
//
//public int getRaceId() {
//	return raceId;
//}
//
//public void setRaceId(int raceId) {
//	this.raceId = raceId;
//}
//
//public int getRacecarID() {
//	return raceId;
//}
//
//public void setRacecarID(int racecarID) {
//	this.raceId = racecarID;
//}

@Override
public String toString() {
	return "RaceInfo [id=" + id + ", car=" + car + ", racetrack=" + racetrack + ", losses=" + losses
			+ ", championships=" + championships + ", wins=" + wins
			+ "]";
}

public String getRacetrack() {
	return racetrack;
}

public void setRacetrack(String racetrack) {
	this.racetrack = racetrack;
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
