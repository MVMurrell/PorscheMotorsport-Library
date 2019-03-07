<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
	integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
	crossorigin="anonymous">
<link href="https://fonts.googleapis.com/css?family=Michroma|Thasadith"
	rel="stylesheet">
<style>

.ul {
	font-family: 'Thasadith', sans-serif;
}

h1{
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

<header>
	<h1>Add an Automobile to the Library</h1>
</header>
<br>
	<form action="createCar.do" method="post">
		<div class="form-group">
			<label id="model">Model</label> <input type="text" id="model"
				name="model"></input>
		</div>
		<div class="form-group">
			<label id="engineSize">Engine Size(liters)</label> <input type="text" 
				id="engineSize" name="engineSize" required></input>
		</div>
		<div class="form-group">
			<label id="horsepower">Horsepower</label> <input type="number"
				id="horsepower" name="horsepower" required></input>
		</div>
		<div class="form-group">
			<label id="torque">Torque(lbs/ft)</label> <input type="number"
				id="torque" name="torque" required></input>
		</div>
		<div class="form-group">
			<label id="topSpeed">Top Speed (mph)</label> <input type="number"
				id="topSpeed" name="topSpeed" required></input>
		</div>
		<div class="form-group">
			<label id="enginePosition">Engine Position</label> <input type="text"
				id="enginePosition" name="enginePosition" required></input>
		</div>
		<div class="form-group">
			<label id="weight">Weight(lbs)</label> <input type="number"
				id="weight" name="weight" required></input>
		</div>
		<div class="form-group">
			<label id="value">Market Value ($)</label> <input type="number"
				id="value" name="value" required></input>
		</div>
		<div class="form-group">
			<label id="subModels">Sub Models</label> <input type="text"
				id="subModels" name="subModels" rows="3" required></input>
		</div>
		<div class="form-group">
			<label id="drivetrain">Drivetrain</label> <input type="text"
				id="drivetrain" name="drivetrain" required></input>
		</div>
		<div class="form-group">
			<label id="engineType">Engine Type</label> <input type="text"
				id="engineType" name="engineType" required></input>
		</div>
		<div class="form-group">
			<label id="productionRun">Production Run</label> <input type="number"
				id="productionRun" name="productionRun" required></input>
		</div>
		<div class="form-group">
			<label id="designer">Designer</label> <input type="text"
				id="designer" name="designer" required></input>
		</div>
		<div class="form-group">
			<label id="transmission">Transmission</label> <input type="text"
				id="transmission" name="transmission" required></input>
		</div>
		<div class="form-group">
			<label id="cylinders">Number of Cylinders</label> <input
				type="number" id="cyclinders" name="cylinders" required></input>
		</div>
		<!-- <div class="form-group">
			<label id="location">Location</label> <input type="text"
				id="location" name="location"></input>
		</div> -->
		<div class="form-group">
			<label id="firstYear">First Year of Production</label> <input
				type="number" id="firstYear" name="firstYear" required min="1940"></input>
		</div>
		<input type="submit" class="btn btn-secondary" value="Submit" />
	</form>

</body>
</html>