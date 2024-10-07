
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<!doctype html>
<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- Bootstrap CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">

<title>Add Employee</title>
</head>
<body style="background: #e2e2e2;">

<!-- navbar starts -->
	<nav class="navbar navbar-expand-lg navbar-light bg-primary">
		<div class="container-fluid">
			<a class="navbar-brand" href="#">NexGen HR</a>
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
				aria-controls="navbarSupportedContent" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarSupportedContent">
				<ul class="navbar-nav me-auto mb-2 mb-lg-0">
					<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="home">Home</a></li>
					<li class="nav-item"><a class="nav-link" href="addEmp">Add
							Employee</a></li>
				</ul>
			</div>
		</div>
	</nav>
<!-- navbar ends -->
	<div class="container">
		<div class="row">
			<div class="col-md-6 offset-md-3">
				<div class="card my-2">
					<div class="card-header mt-2">
						<h3 class="text-center">Add New Employee</h3>
						<c:if test="${not empty msg}">
							<h5 class="bg-success text-center ">${msg}</h5>
							<c:remove var="msg" />
						</c:if>
						<div class="card-body">
							<form action="createEmp" method="post">
								<div class="mb-2">
									<label class="my-2">Employee Full Name</label> <input
										type="text" name="name" class="form-control" required /> <label
										class="my-2">Employee Full Address</label> <input type="text"
										name="address" class="form-control" required /> <label
										class="my-2">Employee Email</label> <input type="email"
										name="email" class="form-control" required /> <label
										class="my-2">Employee Password</label> <input type="password"
										name="password" class="form-control" required /> <label
										class="my-2">Employee Designation</label> <input type="text"
										name="designation" class="form-control" required /> <label
										class="my-2">Employee Salary</label> <input type="text"
										name="salary" class="form-control" required />
								</div>
								<button class="btn btn-primary mt-2" style="margin-left: 250px;"
									type="submit">Submit</button>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>


	</div>






	<!-- Optional JavaScript; choose one of the two! -->
	<!-- Option 1: Bootstrap Bundle with Popper -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
		crossorigin="anonymous"></script>
	<!-- Option 2: Separate Popper and Bootstrap JS -->
	<!--
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
    -->
</body>
</html>