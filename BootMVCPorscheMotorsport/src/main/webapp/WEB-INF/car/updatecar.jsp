<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
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

	<h1>Edit The ${car.model}</h1>

	<form action="updateCar.do" method="POST">
		<div textarea class="form-group">
			Sub Models:</label> <input type="text" name="subModels" rows="4"
				value="${car.subModels}" />
		</div>
		<div class="form-group">
			Market Value:</label> <input type="text" name="value" value="${car.value}" />
		</div>
		<div class="form-group">
			Production Run:</label> <input type="text" name="productionRun"
				value="${car.productionRun}" />
		</div>
		<div class="form-group">
			First Year of Production:</label> <input type="text" name="firstYear"
				value="${car.firstYear}" />
		</div>
		<div class="form-group">
			Race Info ID:</label> <input type="number" name="RaceID"
				value="${car.raceInfoId}" />
		</div>
		<label for="id"></label> <input type="hidden" name="id"
			value="${car.id}" /> <input type="submit" class="btn btn-secondary"
			value="Submit" />
	</form>
</body>
</html>