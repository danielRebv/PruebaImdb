<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
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
		<h1>Title ${show.showTitle}</h1>
		<h2>Title ${show.showNetwork}</h2>

		<h2 class="font-weight-bold">Users who rated this show</h2>

		<table class="table table-dark">
			<thead>
				<tr>
					<th scope="col">Name</th>
					<th scope="col">Rating</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="row" items="${showRatings}">
					<tr>
						<td scope="row">${row.user.username}</td>
						<td>${row.rating}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
		<c:if test="${currentUser.id == creatorShow.id}">
			<a href="/shows/${show.id}/edit" class="btn btn-lg btn-info">Edit</a>
		</c:if>

		<form:form method="post" action="/shows/${show.id}/add"
			modelAttribute="addRating">
			<form:hidden path="user.id" value="${currentUser.id}" />

			<div class="form-inline">
				<form:label path="rating">Leave a rating: </form:label>

				<div class="mx-3">
					<form:input type="number" min="1" max="5" path="rating"
						class="form-control" />
					<form:errors path="rating" />
				</div>
				<div class="">
					<input type="submit" value="Rate!" class="btn btn-primary" />
				</div>

			</div>
		</form:form>


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