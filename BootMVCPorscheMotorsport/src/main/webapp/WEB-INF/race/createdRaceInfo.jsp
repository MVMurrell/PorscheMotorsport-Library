<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>Porsche Lookup</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
	integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
	crossorigin="anonymous">
<link rel="stylesheet" type="css"
	href="/BootMVCPorscheMotorsport/src/main/webapp/index.css">
<link href="https://fonts.googleapis.com/css?family=Michroma"
	rel="stylesheet">
<style>
#topNav {
	font-family: 'Michroma', sans-serif;
	color: black;
	font-size: 20;
}

.navbar-dark {
	color: white;
}

h5 {
	font-family: 'Thasadith', sans-serif;
}

p {
	font-family: 'Thasadith', sans-serif;
}

body {
	background-color: #333333;
}
</style>

</head>
<body>
	<nav class="navbar navbar-dark bg-dark" id="topNav">
		<a class="navbar-brand" href="home.do"><img
			src="http://pngimg.com/uploads/porsche_logo/porsche_logo_PNG7.png"
			width="25" height="30" alt="porsche-logo">Porsche Motorsport
			Library</a> <a class="nav-item nav-link " href="home.do">Home</a> <a
			class="nav-item nav-link " href="createCar.do">Create Car</a> <a
			class="nav-item nav-link " href="pickCar.do">Add Race</a>
		<form class="form-inline" action="getCar.do" method="GET">
			<input class="form-control mr-sm-2" type="number"
				placeholder="Search By ID" name="id" aria-label="Search">
			<button class="btn btn-outline-success my-2 my-sm-0" type="submit">Go</button>
		</form>
	</nav>
	<h1>Pick Car</h1>

	<br>
	<header>This Race Info has been created for the Porsche
		${car.model}</header>
	<ul class="list-group">
		<li class="list-group-item">Id: ${ri.id}</li>
		<li class="list-group-item">Wins: ${ri.wins}</li>
		<li class="list-group-item">Losses: ${ri.losses}</li>
		<li class="list-group-item">Championships: ${ri.championships}</li>
		<li class="list-group-item">RacetrackId: ${ri.racetrackId}</li>
	</ul>
	<div>
		<form:form action="home.do" method="GET">
			<input type="submit" class="btn btn-primary" value="Search for a Car" />
		</form:form>
	</div>



</body>
</html>