
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>
<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">

<!-- JQUERY CDN    if doesn't worked bootstrap 2 jquery cnd at bottom then use this CDN-->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

<!-- FONT AWESOME CDN -->
<script src="https://kit.fontawesome.com/9ccd7bd56c.js"
	crossorigin="anonymous"></script>

<!-- CDN FOR SWEET ALERT  -->
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>

<!-- DATA TABLE JAVA SCRIPT 3 CDN LINK for head  -->
<script src="https://code.jquery.com/jquery-3.5.1.js"></script>
<script
	src="https://cdn.datatables.net/1.12.1/js/jquery.dataTables.min.js"></script>
<script
	src="https://cdn.datatables.net/1.12.1/js/dataTables.bootstrap4.min.js"></script>

<!-- DATA TABLE 2 CSS LINKS for head -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.2/css/bootstrap.css">
<link rel="stylesheet"
	href="https://cdn.datatables.net/1.12.1/css/dataTables.bootstrap4.min.css">


<title>Home Page</title>
</head>
<body>
	<h1>All User Data</h1>
	<br>

	<!-- JAVA SCRIPT CODE FOR DATA TABLE PAGINATION  -->
	<script>
		$(document).ready(function() {
			//alert("hello")
			$('#example').DataTable();
		});
	</script>

	<table id="example" class="table table-success">
		<thead>
			<tr>
				<th>Select</th>
				<th>Id</th>
				<th>UserName</th>
				<th>First Name</th>
				<th>LastName</th>
				<th>Age</th>
				<th>Delete</th>
				<th>Edit</th>
			</tr>
		</thead>

		<tbody>
			<c:forEach var="user" items="${users}">
				<tr>
					<!-- muldelete = added input tag only for select-->
					<td><div class="form-check">
							<input class="form-check-input" type="checkbox" name="check"
								value=${user.id}>
						</div></td>
					<td>${user.id}</td>
					<td>${user.username}</td>
					<td>${user.firstname}</td>
					<td>${user.lastname}</td>
					<td>${user.age}</td>
					<td><a href="/deletejspuser?id=${user.id }"><i
							class="fa-solid fa-trash-can"></i></a></td>
					<td><a href="/editjspuser?id=${user.id }"><i
							class="fa-solid fa-pen-to-square"></i></a></td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
	<button class="btn btn-primary">Multiple Delete</button>


	<div class="container text-center" id="tasksDiv">
		<h3>All Users</h3>
		<hr>
		<div class="table-responsive">
			<table class="table table-success">
				<thead>
					<tr>
						<th>Id</th>
						<th>UserName</th>
						<th>First Name</th>
						<th>LastName</th>
						<th>Age</th>
						<th>Delete</th>
						<th>Edit</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="user" items="${users}">
						<tr>
							<td>${user.id}</td>
							<td>${user.username}</td>
							<td>${user.firstname}</td>
							<td>${user.lastname}</td>
							<td>${user.age}</td>
							<td><a href="/deletejspuser?id=${user.id }"><i
									class="fa-solid fa-trash-can"></i></a></td>
							<td><a href="/editjspuser?id=${user.id }"><i
									class="fa-solid fa-pen-to-square"></i></a></td>

						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>




		<!-- Optional JavaScript -->
		<!-- jQuery first, then Popper.js, then Bootstrap JS -->
		<!-- <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
			integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
			crossorigin="anonymous"></script> -->
		<script
			src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js"
			integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
			crossorigin="anonymous"></script>
		<script
			src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js"
			integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
			crossorigin="anonymous"></script>
</body>
</html>