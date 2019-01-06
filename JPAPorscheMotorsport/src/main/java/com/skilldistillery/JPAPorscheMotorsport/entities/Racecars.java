package com.skilldistillery.JPAPorscheMotorsport.entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;

@Entity
public class Racecars {
	
@Id
@GeneratedValue(strategy=GenerationType.IDENTITY)
private int id;

@OneToOne
@JoinColumn(name="id")
private RaceInfo ri;

public RaceInfo getRi() {
	return ri;
}

public void setRi(RaceInfo ri) {
	this.ri = ri;
}

private String model;

@Column(name="engine_size")
private Double engineSize;

private Integer horsepower;

private Integer torque;

@Column(name="top_speed")
private Integer topSpeed;

@Column(name="engine_position")
private String enginePosition;

private Integer weight;

private Integer value;

@Column(name="sub_models")
private String subModels;

private String drivetrain;

@Column(name="engine_type")
private String engineType;

@Column(name="production_run")
private Integer productionRun;

private String designer;

private String transmission;

private Integer cylinders;

private String location;

@Column(name="first_year_of_production")
private Integer firstYear;

@Override
public String toString() {
	return "Racecars [id=" + id + ", model=" + model + ", engineSize=" + engineSize + ", horsepower=" + horsepower
			+ ", torque=" + torque + ", topSpeed=" + topSpeed + ", enginePosition=" + enginePosition + ", weight="
			+ weight + ", value=" + value + ", subModels=" + subModels + ", drivetrain=" + drivetrain + ", engineType="
			+ engineType + ", productionRun=" + productionRun + ", designer=" + designer + ", transmission="
			+ transmission + ", cylinders=" + cylinders + ", location=" + location + ", firstYear=" + firstYear + "]";
}

public Racecars() {
	super();
}

public Racecars(int id, String model, Double engineSize, Integer horsepower, Integer torque, Integer topSpeed,
		String enginePosition, Integer weight, Integer value, String subModels, String drivetrain, String engineType,
		Integer productionRun, String designer, String transmission, Integer cylinders, String location,
		Integer firstYear) {
	super();
	this.id = id;
	this.model = model;
	this.engineSize = engineSize;
	this.horsepower = horsepower;
	this.torque = torque;
	this.topSpeed = topSpeed;
	this.enginePosition = enginePosition;
	this.weight = weight;
	this.value = value;
	this.subModels = subModels;
	this.drivetrain = drivetrain;
	this.engineType = engineType;
	this.productionRun = productionRun;
	this.designer = designer;
	this.transmission = transmission;
	this.cylinders = cylinders;
	this.location = location;
	this.firstYear = firstYear;
}

@Override
public int hashCode() {
	final int prime = 31;
	int result = 1;
	result = prime * result + ((cylinders == null) ? 0 : cylinders.hashCode());
	result = prime * result + ((designer == null) ? 0 : designer.hashCode());
	result = prime * result + ((drivetrain == null) ? 0 : drivetrain.hashCode());
	result = prime * result + ((enginePosition == null) ? 0 : enginePosition.hashCode());
	result = prime * result + ((engineSize == null) ? 0 : engineSize.hashCode());
	result = prime * result + ((engineType == null) ? 0 : engineType.hashCode());
	result = prime * result + ((firstYear == null) ? 0 : firstYear.hashCode());
	result = prime * result + ((horsepower == null) ? 0 : horsepower.hashCode());
	result = prime * result + id;
	result = prime * result + ((location == null) ? 0 : location.hashCode());
	result = prime * result + ((model == null) ? 0 : model.hashCode());
	result = prime * result + ((productionRun == null) ? 0 : productionRun.hashCode());
	result = prime * result + ((subModels == null) ? 0 : subModels.hashCode());
	result = prime * result + ((topSpeed == null) ? 0 : topSpeed.hashCode());
	result = prime * result + ((torque == null) ? 0 : torque.hashCode());
	result = prime * result + ((transmission == null) ? 0 : transmission.hashCode());
	result = prime * result + ((value == null) ? 0 : value.hashCode());
	result = prime * result + ((weight == null) ? 0 : weight.hashCode());
	return result;
}

public int getId() {
	return id;
}

public void setId(int id) {
	this.id = id;
}

public String getModel() {
	return model;
}

public void setModel(String model) {
	this.model = model;
}

public Double getEngineSize() {
	return engineSize;
}

public void setEngineSize(Double engineSize) {
	this.engineSize = engineSize;
}

public Integer getHorsepower() {
	return horsepower;
}

public void setHorsepower(Integer horsepower) {
	this.horsepower = horsepower;
}

public Integer getTorque() {
	return torque;
}

public void setTorque(Integer torque) {
	this.torque = torque;
}

public Integer getTopSpeed() {
	return topSpeed;
}

public void setTopSpeed(Integer topSpeed) {
	this.topSpeed = topSpeed;
}

public String getEnginePosition() {
	return enginePosition;
}

public void setEnginePosition(String enginePosition) {
	this.enginePosition = enginePosition;
}

public Integer getWeight() {
	return weight;
}

public void setWeight(Integer weight) {
	this.weight = weight;
}

public Integer getValue() {
	return value;
}

public void setValue(Integer value) {
	this.value = value;
}

public String getSubModels() {
	return subModels;
}

public void setSubModels(String subModels) {
	this.subModels = subModels;
}

public String getDrivetrain() {
	return drivetrain;
}

public void setDrivetrain(String drivetrain) {
	this.drivetrain = drivetrain;
}

public String getEngineType() {
	return engineType;
}

public void setEngineType(String engineType) {
	this.engineType = engineType;
}

public Integer getProductionRun() {
	return productionRun;
}

public void setProductionRun(Integer productionRun) {
	this.productionRun = productionRun;
}

public String getDesigner() {
	return designer;
}

public void setDesigner(String designer) {
	this.designer = designer;
}

public String getTransmission() {
	return transmission;
}

public void setTransmission(String transmission) {
	this.transmission = transmission;
}

public Integer getCylinders() {
	return cylinders;
}

public void setCylinders(Integer cylinders) {
	this.cylinders = cylinders;
}

public String getLocation() {
	return location;
}

public void setLocation(String location) {
	this.location = location;
}

public Integer getFirstYear() {
	return firstYear;
}

public void setFirstYear(Integer firstYear) {
	this.firstYear = firstYear;
}

@Override
public boolean equals(Object obj) {
	if (this == obj)
		return true;
	if (obj == null)
		return false;
	if (getClass() != obj.getClass())
		return false;
	Racecars other = (Racecars) obj;
	if (cylinders == null) {
		if (other.cylinders != null)
			return false;
	} else if (!cylinders.equals(other.cylinders))
		return false;
	if (designer == null) {
		if (other.designer != null)
			return false;
	} else if (!designer.equals(other.designer))
		return false;
	if (drivetrain == null) {
		if (other.drivetrain != null)
			return false;
	} else if (!drivetrain.equals(other.drivetrain))
		return false;
	if (enginePosition == null) {
		if (other.enginePosition != null)
			return false;
	} else if (!enginePosition.equals(other.enginePosition))
		return false;
	if (engineSize == null) {
		if (other.engineSize != null)
			return false;
	} else if (!engineSize.equals(other.engineSize))
		return false;
	if (engineType == null) {
		if (other.engineType != null)
			return false;
	} else if (!engineType.equals(other.engineType))
		return false;
	if (firstYear == null) {
		if (other.firstYear != null)
			return false;
	} else if (!firstYear.equals(other.firstYear))
		return false;
	if (horsepower == null) {
		if (other.horsepower != null)
			return false;
	} else if (!horsepower.equals(other.horsepower))
		return false;
	if (id != other.id)
		return false;
	if (location == null) {
		if (other.location != null)
			return false;
	} else if (!location.equals(other.location))
		return false;
	if (model == null) {
		if (other.model != null)
			return false;
	} else if (!model.equals(other.model))
		return false;
	if (productionRun == null) {
		if (other.productionRun != null)
			return false;
	} else if (!productionRun.equals(other.productionRun))
		return false;
	if (subModels == null) {
		if (other.subModels != null)
			return false;
	} else if (!subModels.equals(other.subModels))
		return false;
	if (topSpeed == null) {
		if (other.topSpeed != null)
			return false;
	} else if (!topSpeed.equals(other.topSpeed))
		return false;
	if (torque == null) {
		if (other.torque != null)
			return false;
	} else if (!torque.equals(other.torque))
		return false;
	if (transmission == null) {
		if (other.transmission != null)
			return false;
	} else if (!transmission.equals(other.transmission))
		return false;
	if (value == null) {
		if (other.value != null)
			return false;
	} else if (!value.equals(other.value))
		return false;
	if (weight == null) {
		if (other.weight != null)
			return false;
	} else if (!weight.equals(other.weight))
		return false;
	return true;
}


}