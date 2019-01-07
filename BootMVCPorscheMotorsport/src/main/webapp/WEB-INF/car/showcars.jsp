<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Porsche Search Results</title>

<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
	integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
	crossorigin="anonymous">
	<link href="https://fonts.googleapis.com/css?family=Michroma|Thasadith" rel="stylesheet">
	
	<style>
	ul{
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
	<nav class="navbar nav-tabs navbar-dark bg-dark" id="topNav">
		<a class="navbar-brand" href="home.do"><img
			src="http://pngimg.com/uploads/porsche_logo/porsche_logo_PNG7.png"
			width="25" height="30" alt="porsche-logo"> Porsche Motorsport
			Library</a> <a class="nav-item nav-link " href="home.do">Home</a> <a
			class="nav-item nav-link " href="createCar.do">Create Car</a>
		<form class="form-inline" action="getCar.do" method="GET">
			<input class="form-control mr-sm-2" type="number"
				placeholder="Search By ID" name="id"  aria-label="Search">
			<button class="btn btn-outline-success my-2 my-sm-0" type="submit">Go</button>
		</form>
	</nav>
	<%-- <c:choose> --%>
		<%-- <c:when test="${fn:length(cars) gt 0} "> --%>
			<c:forEach items="${cars}" var="c">

				<ul class="list-group">
					<li class="list-group-item">Porsche ${c.model}</li>
					<li class="list-group-item">Car ID: ${c.id}</li>
					<li class="list-group-item">Production Year: ${c.firstYear}</li>
				</ul>
				<div>
					<form:form action="getCar.do" method="GET">
						<input type="hidden" value="${c.id}" name="id" />
						<input type="submit" class="btn btn-primary"
							value="Get Full Details" />
					</form:form>
				</div>
				<div>
					<form:form action="updateCar.do" method="GET">
						<input type="hidden" value="${c.id}" name="id" />
						<input type="submit" class="btn btn-secondary" value="Update Car" />
					</form:form>
				</div>
				<div>
					<form:form action="deleteCar.do" method="post">
						<input type="hidden" value="${c.id}" name="id" />
						<input type="submit" class="btn btn-danger" value="Delete Car" />
					</form:form>
				</div>
				<div>
					<form:form action="createRI.do" method="GET">
						<input type="hidden" value="${c.id}" name="carId" />
						<input type="submit" class="btn btn-secondary" value="Add Race" />
					</form:form>
				</div>
			</c:forEach>
		<%-- </c:when>
		<c:otherwise>No Cars Found</c:otherwise> --%>
	<%-- </c:choose> --%>

</body>
</html>