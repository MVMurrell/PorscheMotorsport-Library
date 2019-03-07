<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>Porsche Created</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
	integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
	crossorigin="anonymous">
<link href="https://fonts.googleapis.com/css?family=Michroma|Thasadith"
	rel="stylesheet">

<style>
ul {
	font-family: 'Thasadith', sans-serif;
}
#topNav {
	font-family: 'Michroma', sans-serif;
	color: black;
	font-size: 20;
}
</style>
</head>
<body>
	<nav class="navbar sticky-top navbar-dark bg-dark" id="topNav">
		<a class="navbar-brand" href="home.do"><img
			src="http://pngimg.com/uploads/porsche_logo/porsche_logo_PNG7.png"
			width="25" height="30" alt="porsche-logo"> Porsche Motorsport
			Library</a> <a class="nav-item nav-link " href="home.do">Home</a> <a
			class="nav-item nav-link " href="createCar.do">Create Car</a>
		<form class="form-inline" action="getCar.do" method="GET">
			<input class="form-control mr-sm-2" type="number"
				placeholder="Search By ID" name="id" aria-label="Search">
			<button class="btn btn-outline-success my-2 my-sm-0" type="submit">Go</button>
		</form>
	</nav>
	<header>This Automobile has been added to the Library</header>
	<ul class="list-group">
		<li class="list-group-item">Id: ${car.id}</li>
		<li class="list-group-item">Model: ${car.model}</li>
		<li class="list-group-item">Engine Size: ${car.engineSize}</li>
		<li class="list-group-item">Horsepower: ${car.horsepower}</li>
		<li class="list-group-item">Torque: ${car.torque}</li>
		<li class="list-group-item">Top Speed: ${car.topSpeed}</li>
		<li class="list-group-item">Engine Position:
			${car.enginePosition}</li>
		<li class="list-group-item">Weight: ${car.weight}</li>
		<li class="list-group-item">Market Value: ${car.value}</li>
		<li class="list-group-item">Sub Models: ${car.subModels}</li>
		<li class="list-group-item">Drivetrain: ${car.drivetrain}</li>
		<li class="list-group-item">Engine Type: ${car.engineType}</li>
		<li class="list-group-item">Production Run: ${car.productionRun}</li>
		<li class="list-group-item">Designer: ${car.designer}</li>
		<li class="list-group-item">Transmission: ${car.transmission}</li>
		<li class="list-group-item">Engine Cylinders: ${car.cylinders}</li>
<%-- 		<li class="list-group-item">Location: ${car.location}</li>
 --%>		<li class="list-group-item">First Year of Production:
			${car.firstYear}</li>
	</ul>
	<div class="nav">
				<div>
					<form:form action="updateCar.do" method="GET">
						<input type="hidden" value="${car.id}" name="id" />
						<input type="submit" class="btn btn-secondary" value="Update Car" />
					</form:form>
				</div>
				<div>
					<form:form action="deleteCar.do" method="post">
						<input type="hidden" value="${car.id}" name="id" />
						<input type="submit" class="btn btn-danger" value="Delete Car" />
					</form:form>
				</div>
			</div>
</body>
</html>