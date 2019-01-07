package com.skilldistillery.bootmvc.data;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.skilldistillery.JPAPorscheMotorsport.entities.RaceInfo;
import com.skilldistillery.JPAPorscheMotorsport.entities.Racecars;

@Transactional
@Service
public class RaceInfoDAOImpl implements RaceInfoDAO {

		
		@PersistenceContext
		EntityManager em;

		@Transactional	
		@Override
		public RaceInfo get(Racecars car, int index) {
			Racecars car1 = em.find(Racecars.class, car.getId());
			RaceInfo info = car1.getRi().get(index);
			return info;
		}
		
		@Transactional	
		@Override
		public RaceInfo find(int id) {
			RaceInfo info = em.find(RaceInfo.class, id);
			return info;
		}
		
		
		@Override
		public RaceInfo updateRI(int id, RaceInfo info) {
			RaceInfo managed = em.find(RaceInfo.class, id);
			managed.setCar(info.getCar());
			managed.setChampionships(info.getChampionships());
			managed.setLosses(info.getLosses());
			managed.setWins(info.getWins());
			managed.setRacetrack(info.getRacetrackId());
			return managed;
		}
		@Override
		public boolean destroyRI(int id) {
			RaceInfo ri = em.find(RaceInfo.class, id);
			em.remove(ri);
			boolean removed = !em.contains(ri);
			return removed;
		}
		@Override
		public RaceInfo createRI(RaceInfo ri) {
			em.persist(ri);
			em.flush();
			return ri;
		}


	}


