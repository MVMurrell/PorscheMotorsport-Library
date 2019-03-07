package com.skilldistillery.bootmvc.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.skilldistillery.JPAPorscheMotorsport.entities.Racecars;
import com.skilldistillery.bootmvc.data.RaceCarsDAOImpl;

@Controller
public class CarController {
	
	@Autowired
	private RaceCarsDAOImpl dao;
	
	@RequestMapping(path="/")
	public String index() {
	  return "WEB-INF/index.jsp";
	  // return "index"; // if using a ViewResolver.
	}
	@RequestMapping(path="home.do", method=RequestMethod.GET)
	public String home() {
		return "WEB-INF/index.jsp";
		// return "index"; // if using a ViewResolver.
	}
	
	@RequestMapping(path="getCar.do" , method=RequestMethod.GET)
	public ModelAndView getCar(int id) {
		ModelAndView mv = new ModelAndView();
		Racecars car = dao.find(id);
		mv.addObject("car", car);
		mv.setViewName("WEB-INF/car/showcar.jsp");
		return mv;
	}
	@RequestMapping(path="getCarK.do" , method=RequestMethod.GET)
	public String getCar(Model model, String keyword) {
		List <Racecars> cars = dao.getCarByKeyword(keyword);
		model.addAttribute("cars", cars);
		return "WEB-INF/car/showcars.jsp";
	}
	
	@RequestMapping(path="createCar.do", method=RequestMethod.GET)
	public String create() {
	return "WEB-INF/car/createcar.jsp";
	}
	
	@RequestMapping(path="createCar.do" , method=RequestMethod.POST)
	public ModelAndView createCar(@RequestParam("model") String model1 , @RequestParam("engineSize") int engine , 
			@RequestParam("horsepower") int hp , @RequestParam("torque") int torque , @RequestParam("topSpeed") int speed , 
			@RequestParam("enginePosition") String enginePosition, @RequestParam("weight") int weight, @RequestParam("value") int value, 
			@RequestParam("subModels") String subModels, @RequestParam("drivetrain") String drivetrain , 
			@RequestParam("engineType") String engineType, @RequestParam("productionRun") int productionRun, 
			@RequestParam("designer") String designer, @RequestParam("transmission") String transmission, 
			@RequestParam("cylinders") int cylinders,  @RequestParam("firstYear") int firstYear){
            ModelAndView mv = new ModelAndView("WEB-INF/car/createdcar.jsp");
			Racecars car = new Racecars();
			car.setId(0);
            car.setModel(model1);
            car.setEngineSize(engine);
            car.setHorsepower(hp);
            car.setTorque(torque);
            car.setTopSpeed(speed);
            car.setEnginePosition(enginePosition);
            car.setWeight(weight);
            car.setValue(value);
            car.setSubModels(subModels);
            car.setDrivetrain(drivetrain);
            car.setEngineType(engineType);
            car.setProductionRun(productionRun);
            car.setDesigner(designer);
            car.setTransmission(transmission);
            car.setCylinders(cylinders);
//            car.setLocation(location);
            car.setFirstYear(firstYear);
            car = dao.createCar(car);
            if (car != null) 
            {
            	mv.addObject("car", car);
            }
            if (car == null ) {
            	mv.addObject("error", "Could not create entry. review your information and try again.");
            }
		return mv;
	}
	
	@RequestMapping(path="deleteCar.do", method=RequestMethod.POST)
	public ModelAndView destroyCar(@RequestParam("id") int id) {
	Racecars car = dao.find(id);
//	String output = "Car with id " + id + " and Model " + dao.find(id).getModel() + " has been deleted.";
	ModelAndView mv = new ModelAndView();
	dao.destroy(id);
	mv.addObject("car", car);
	mv.setViewName("WEB-INF/car/deletedcar.jsp");
	return mv;
	
	
	}
	@RequestMapping(path="updateCar.do" , method=RequestMethod.GET)
	public String updateCar(Model model, int id) {
		Racecars car = dao.find(id);
		model.addAttribute("car", car);
		return "WEB-INF/car/updatecar.jsp";
		
	}
	@RequestMapping(path="updateCar.do" , method=RequestMethod.POST)
	public ModelAndView updateCar(@RequestParam("id")int id, @RequestParam("subModels") String subModels, 
			@RequestParam("value") int value, @RequestParam("productionRun") int productionRun,
			@RequestParam("firstYear")int firstYear) {
	ModelAndView mv = new ModelAndView();
	Racecars car = new Racecars();
	car.setSubModels(subModels);
	car.setValue(value);
	car.setProductionRun(productionRun);
	car.setFirstYear(firstYear);
	car = dao.updateCar(id, car);
	mv.setViewName("WEB-INF/car/updatedcar.jsp");
	mv.addObject("car", car);
	return mv;
	}
}
	
	
	
	
	
