package com.skilldistillery.bootmvc.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.skilldistillery.JPAPorscheMotorsport.entities.RaceInfo;
import com.skilldistillery.JPAPorscheMotorsport.entities.Racecars;
import com.skilldistillery.bootmvc.data.RaceCarsDAOImpl;
import com.skilldistillery.bootmvc.data.RaceInfoDAOImpl;

@Controller
public class RaceInfoController {

	@Autowired
	private RaceInfoDAOImpl dao;
	@Autowired
	private RaceCarsDAOImpl daoCar;
	
	
	
	@RequestMapping(path="createRI.do" , method=RequestMethod.GET)
	public ModelAndView createRI(int carId) {
		ModelAndView mv = new ModelAndView();
		Racecars car = daoCar.find(carId);
		mv.addObject("car",car);
		mv.setViewName("WEB-INF/race/createRaceInfo.jsp");
		System.out.println(car);
		return mv;
		
	}
	
	@RequestMapping(path="createdRI.do", method=RequestMethod.POST)
	public ModelAndView createRI(@RequestParam("wins") int wins, @RequestParam("losses") int losses, @RequestParam("championships") int championships, @RequestParam("carid") int carId, @RequestParam("racetrackId") int racetrackId ) {
		ModelAndView mv = new ModelAndView();
		RaceInfo ri = new RaceInfo();
		ri.setWins(wins);
		ri.setLosses(losses);
		ri.setChampionships(championships);
		ri.setRacetrack(racetrackId);
		ri = dao.createRI(ri);
		ri = dao.find(ri.getId());
		ri.setCar(daoCar.find(carId));
		mv.addObject("ri", ri);
		mv.addObject("car" , daoCar.find(carId));
		mv.setViewName("WEB-INF/race/createdRaceInfo.jsp");
		return mv;
	}
	
	@RequestMapping(path="delete.do", method=RequestMethod.POST)
	public ModelAndView deleteRI(@RequestParam("id")int id) {
		ModelAndView mv = new ModelAndView();
		RaceInfo ri = dao.find(id);
		dao.destroyRI(id);
		mv.addObject("ri", ri);
		mv.setViewName("WEB-INF/race/deletedRaceInfo.jsp");
		return mv;
	}
	
}
