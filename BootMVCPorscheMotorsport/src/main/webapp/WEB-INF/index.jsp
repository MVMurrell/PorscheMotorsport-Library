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
		<form class="form-inline" action="getCar.do" method="GET">
			<input class="form-control mr-sm-2" type="number"
				placeholder="Search By ID" name="id"  aria-label="Search">
			<button class="btn btn-outline-success my-2 my-sm-0" type="submit">Go</button>
		</form>
	</nav>
	<!-- <div id="header">
	<header class="header">
	
		<h1 id="header">Porsche Motorsport Library</h1>
		</header> -->
	<div id="carouselExampleIndicators"
		class="carousel slide carousel-fade" data-ride="carousel">
		<ol class="carousel-indicators">
			<li data-target="#917" data-slide-to="0" class="active"></li>
			<li data-target="#959" data-slide-to="1"></li>
			<li data-target="#919" data-slide-to="2"></li>
		</ol>
		<div class="carousel-inner">
			<div class="carousel-item active">
				<img class="d-block w-100"
					src="https://cdn.drivemag.net/media/default/0001/81/Porsche-917-037-made-road-legal-in-Monaco-0-2722-default-large.jpeg"
					alt="First slide">
				<div class="carousel-caption d-none d-md-block">
					<h5>Porsche 917</h5>
					<p>1969 - 1971</p>
				</div>
			</div>
			<div class="carousel-item">
				<img class="d-block w-100"
					src="https://manofmany.com/wp-content/uploads/2015/06/1985-Porsche-959-Paris-Dakar-4.jpg/897x505"
					alt="Second slide">
				<div class="carousel-caption d-none d-md-block">
					<h5>Porsche 959</h5>
					<p>1986-1993</p>
				</div>
			</div>
			<div class="carousel-item">
				<img class="d-block w-100"
					src="https://s1.cdn.autoevolution.com/images/news/gallery/2016-porsche-919-hybrid-lmp1-race-car-packs-900-horsepower_1.jpg"
					alt="Third slide">
				<div class="carousel-caption d-none d-md-block">
					<h5>Porsche 919 Hybrid</h5>
					<p>2014, 2015, 2018</p>
				</div>
			</div>
		</div>
		<a class="carousel-control-prev" href="#carouselExampleIndicators"
			role="button" data-slide="prev"> <span
			class="carousel-control-prev-icon" aria-hidden="true"></span> <span
			class="sr-only">Previous</span>
		</a> <a class="carousel-control-next" href="#carouselExampleIndicators"
			role="button" data-slide="next"> <span
			class="carousel-control-next-icon" aria-hidden="true"></span> <span
			class="sr-only">Next</span>
		</a>
	</div>



	<!-- <form action="getCar.do" method="GET">
		Car ID: <input type="number" name="id" /> <input type="submit"
			value="Get Car" required min="1" />
	</form>
	
	<form action="createCar.do" method="GET">
		<input type="submit" value="Create Car" />
	</form> -->
	</div>

	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
		integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
		crossorigin="anonymous"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"
		integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49"
		crossorigin="anonymous"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"
		integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy"
		crossorigin="anonymous"></script>
</body>
</html>