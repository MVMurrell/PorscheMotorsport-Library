package com.skilldistillery.bootmvc.data;

import java.util.List;

import com.skilldistillery.JPAPorscheMotorsport.entities.Racecars;

public interface RaceCarsDAO {

	public Racecars find(int id);
	public List<Racecars> getCarByKeyword(String keyword);
	public Racecars createCar(Racecars car);
	public Racecars updateCar(int id, Racecars car);
	public boolean destroy(int id);
}
