package com.skilldistillery.bootmvc.data;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import org.junit.jupiter.api.BeforeEach;
import org.springframework.stereotype.Service;

import com.skilldistillery.JPAPorscheMotorsport.entities.Racecars;


@Transactional
@Service
public class RaceCarsDAOImpl implements RaceCarsDAO {
	
	@PersistenceContext
	EntityManager em;

	@Transactional	
	@Override
	public Racecars find(int id) {
		Racecars car = em.find(Racecars.class, id);
		return car;
	}
	@Transactional
	@Override
	public List<Racecars> getCarByKeyword(String keyword) {
		String qry = "Select cars FROM Racecars cars WHERE cars.model LIKE :keyword OR cars.id LIKE :keyword";
		List<Racecars> cars = new ArrayList<Racecars>();
				cars=em.createQuery(qry, Racecars.class)
				.setParameter("keyword", "%"+keyword+"%")
				.getResultList();
		return cars;
	}
	@Transactional
	@Override
	public Racecars createCar(Racecars car) {
		em.persist(car);
		em.flush();
				return car;
	}
	@Transactional
	@Override
	public Racecars updateCar(int id, Racecars car) {
		Racecars managed = em.find(Racecars.class, id);
		managed.setSubModels(car.getSubModels());
		managed.setValue(car.getValue());
		managed.setProductionRun(car.getProductionRun());
		managed.setFirstYear(car.getFirstYear());
		return  managed;
	}
	@Transactional
	@Override
	public boolean destroy(int id) {
		Racecars car = em.find(Racecars.class, id);
		em.remove(car);
		boolean removed = !em.contains(car);
		return removed;
	}
	@Override
	public List<Racecars> getAllCars() {
		String qry = "Select c FROM Racecars c";
		List<Racecars> cars = em.createQuery(qry, Racecars.class).getResultList();
		return cars;
	}


}
