<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<nav class="navbar navbar-dark bg-dark" id="topNav">
		<a class="navbar-brand" href="home.do"><img
			src="http://pngimg.com/uploads/porsche_logo/porsche_logo_PNG7.png"
			width="25" height="30" alt="porsche-logo">Porsche Motorsport
			Library</a> 
			<a class="nav-item nav-link " href="home.do" >Home</a> <a
			class="nav-item nav-link " href="createCar.do">Create Car</a>
		<form class="form-inline" action="getCar.do" method="GET">
			<input class="form-control mr-sm-2" type="number"
				placeholder="Search By ID" name="id"  aria-label="Search">
			<button class="btn btn-outline-success my-2 my-sm-0" type="submit">Go</button>
		</form>
		<br>
	<header>This Racing Information Has Been Deleted</header>
	<ul class="list-group">
		<li class="list-group-item">Id: ${ri.id}</li>
		<li class="list-group-item">Wins: ${ri.wins}</li>
		<li class="list-group-item">Losses: ${car.losses}</li>
		<li class="list-group-item">Championships: ${car.championships}</li>
		<li class="list-group-item">RacetrackId: ${ri.racetrackId}</li>

		<div>
			<form:form action="home.do" method="GET">
				<input type="submit" class="btn btn-primary"
					value="Search for a Car" />
			</form:form>

</body>
</html>