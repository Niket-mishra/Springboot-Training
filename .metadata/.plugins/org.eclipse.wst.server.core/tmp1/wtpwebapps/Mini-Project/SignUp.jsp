<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Customer SignUp</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body class = "bg-light">
<div class="position-absolute top-50 start-50 translate-middle  p-4 mb-5 rounded shadow-lg bg-white">
<h2 class ="mb-4 fst-italic text-primary">Sign Up Page</h2>
<form action="SignUpController" method="post">
<div class="input-group mb-3">
  <span class="input-group-text">First & Last Name</span>
  <input type="text" aria-label="text" class="form-control" placeholder="First Name" name ="fname" required>
   <input type="text" aria-label="text" class="form-control" placeholder="Last Name" name="lname" required>
</div>
<div class="input-group mb-3">
  <span class="input-group-text">Login Id</span>
  <input type="email" aria-label="Email" class="form-control" placeholder="Enter Your Email" name="email" required>
</div>

<div class="input-group mb-3">
  <span class="input-group-text">Password</span>
  <input type="password" aria-label="password" class="form-control" placeholder="Create New Password" name="pass" required>
</div>

<div class="vstack gap-2 col-md-12 mx-auto">
<input type ="submit" value ="Sign Up" class="btn btn-success">
<input type ="reset" value ="Cancel" class = "btn btn-danger">
<a href="Login.jsp" class = "fst-italic align-bottom d-flex justify-content-end link-success link-offset-2 link-underline-opacity-25 link-underline-opacity-100-hover">Login Here !!</a>
</div>
</form>
</div>
</body>
</html>