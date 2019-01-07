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
.navbar-dark{
color: white;
}
h5{
font-family: 'Thasadith', sans-serif;
}
p{
font-family: 'Thasadith', sans-serif;
}
body{
background-color: #333333;
}

.createForm{
background-color: white;
}
</style>

</head>
<body>
	<nav class="navbar navbar-dark bg-dark" id="topNav">
		<a class="navbar-brand" href="home.do"><img
			src="http://pngimg.com/uploads/porsche_logo/porsche_logo_PNG7.png"
			width="25" height="30" alt="porsche-logo">Porsche Motorsport
			Library</a> 
			<a class="nav-item nav-link " href="home.do" >Home</a> <a
			class="nav-item nav-link " href="createCar.do">Create Car</a>
			<a class="nav-item nav-link " href="pickCar.do" >Add Race</a> 
		<form class="form-inline" action="getCar.do" method="GET">
			<input class="form-control mr-sm-2" type="number"
				placeholder="Search By ID" name="id"  aria-label="Search">
			<button class="btn btn-outline-success my-2 my-sm-0" type="submit">Go</button>
		</form>
	</nav>
<div class="createForm">
<h1>Add Race Information to the Porsche ${car.model}</h1>

<br>
	<form action="createdRI.do" method="post">
		<div class="form-group">
			<label id="wins">Wins</label> <input type="number" id="wins"
				name="wins"></input>
		</div>
		<div class="form-group">
			<label id="losses">Losses</label> <input type="number"
				id="losses" name="losses"></input>
		</div>
		<div class="form-group">
			<label id="championships">Championships</label> <input type="number"
				id="championships" name="championships"></input>
		</div>
		<div class="form-group">
			<label id="carid"></label> <input type="hidden"
				id="carid" name="carid" value=${car.id}></input>
		</div>
		<div class="form-group">
			<label id="racetrackId">Racetrack Id</label> <input type="number"
				id="racetrackId" name="racetrackId"></input>
		</div>
		<input type="submit" class="btn btn-secondary" value="Submit" />
	</form>
</div>

</body>
</html>