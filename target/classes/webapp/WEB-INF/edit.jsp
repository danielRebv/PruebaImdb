<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
<link
	href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Raleway:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i"
	rel="stylesheet">
<script src="https://kit.fontawesome.com/bb6a9a313e.js"
	crossorigin="anonymous"></script>
<title>IMDb</title>
</head>
<body>
	<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
		<div class="container">
			<a class="navbar-brand" href="/">TV Shows</a>
			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#navbarNav" aria-controls="navbarNav"
				aria-expanded="false" aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>

			<div class="collapse navbar-collapse" id="navbarNav">
				<ul class="navbar-nav ml-auto">
					<li class="nav-item"><a class="nav-link" href="/shows/new">Add
							a Show</a></li>
					<li class="nav-item">
						<form id="logoutForm" method="POST" action="/logout">
							<input type="hidden" name="${_csrf.parameterName}"
								value="${_csrf.token}" /><input type="submit" value="Logout"
								class="btn btn-link text-secondary" />
						</form>
					</li>
				</ul>
			</div>
		</div>
	</nav>
	<div class="container mt-3">
		<h1 class="font-wwight-bold">${editShow.showTitle}</h1>
		<form:errors path="show.*" />
		<div class="text-center">
			<c:if test="${error != null}">
				<c:out value="${errors}"></c:out>
			</c:if>
		</div>


		<form:form method="post" action="/shows/${editShow.id}/edit"
			modelAttribute="editShow">
			<div class="form-group row pt-2">
				<form:label path="showTitle"
					class="col-sm-2 col-form-label col-form-label-sm">Show Title: </form:label>
				<div class="col-sm-10">
					<form:input type="text" path="showTitle" class="form-control" />
				</div>
			</div>
			<div class="text-center my-2">
				<small> <form:errors path="showTitle" /></small>
			</div>

			<div class="form-group row">
				<form:label path="showNetwork"
					class="col-sm-2 col-form-label col-form-label-sm">Network: </form:label>
				<div class="col-sm-10">
					<form:input type="text" path="showNetwork" class="form-control" />
				</div>
			</div>
			<div class="text-center my-2">
				<small> <form:errors path="showNetwork" /></small>
			</div>
			<div class="text-center pt-4">
				<input type="submit" value="Update" class="btn btn-lg btn-primary" />
			</div>
		</form:form>



		<c:if test="${currentUser.id == creatorShow.id}">
			<a href="/shows/${editShow.id}/delete" class="btn btn-lg btn-danger">Delete</a>
		</c:if>


		<div class="mt-5 pb-5">
			<a href="/shows" class="btn btn-dark">Go back</a>
		</div>
	</div>
	<script
		src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js"
		integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js"
		integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13"
		crossorigin="anonymous"></script>
</body>
</html>