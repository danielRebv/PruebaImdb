<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset=utf-8>
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
			<a class="navbar-brand" href="#"> TV Shows</a>

			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#navbarNav" aria-controls="navbarNav"
				aria-expanded="false" aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>

			<div class="collapse navbar-collapse" id="navbarNav">
				<ul class="navbar-nav ml-auto">
					<li class="nav-item"><a class="nav-link" href="/login">Login
					</a></li>
					<li class="nav-item"><a class="nav-link" href="/registration">Registration
							<span class="sr-only">(current)</span>
					</a>
				</ul>
			</div>
		</div>
	</nav>

	<div class="container">
		<div class="mt-3 text-center">
			<form:errors path="user.*" />
		</div>
		<h1>Register!</h1>

		<form:form method="post" action="/registration" modelAttribute="user">
			<div class="form-group">
				<form:label path="username">Username:</form:label>
				<form:input path="username" type="text" class="form-control"
					placeholder="Username" />
			</div>
			<div class="form-group">
				<form:label path="email">Email:</form:label>
				<form:input path="email" class="form-control" placeholder="Email" />
				<small id="emailHelper" class="form-text text-muted">We'll
					never share your email with anyone else.</small>
			</div>
			<div class="form-group">
				<form:label path="password">Password:</form:label>
				<form:input path="password" type="password" class="form-control"
					placeholder="Password" />
			</div>
			<div class="form-group">
				<form:label path="passwordConfirmation">Password confirmation:</form:label>
				<form:input path="passwordConfirmation" type="password"
					class="form-control" placeholder="passwordConfirmation" />
			</div>
			<div class="pt-4">
				<input type="submit" value="Register!" class="btn btn-primary" />
			</div>
		</form:form>
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