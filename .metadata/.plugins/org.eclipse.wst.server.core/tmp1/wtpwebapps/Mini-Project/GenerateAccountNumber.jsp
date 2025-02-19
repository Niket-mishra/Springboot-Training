<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Generate Account Number</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
<style>
	#subDiv1 {
     	display: none;
     	margin-top: 10px;
     	cursor: pointer;
        	}
</style>
</head>
<body>
<% String name = String.valueOf(session.getAttribute("name1")); %>
<h2 class ="mb-4 mt-4 fst-italic text-primary text-center">Welcome : <%=name %></h2>
<nav class="navbar navbar-expand-lg bg-body-tertiary mb-5">
  <div class="container-fluid">
    <a class="navbar-brand" href="/"><b><i>Bank App</i></b></a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarText" aria-controls="navbarText" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse ms-3" id="navbarText">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
         <li class="nav-item">
          <a class="nav-link active fst-italic align-bottom d-flex justify-content-end link-success link-offset-2 link-underline-opacity-25 link-underline-opacity-100-hover" id="myAnchor" onclick="subDiv()" >Customer Details</a>
        </li>
      </ul>
      <span class="navbar-text">
        <b> <a href ="AdminHomePage.jsp" class="text-decoration-none">Admin Page</a> &nbsp;</b>
      </span>
    </div>
  </div>
</nav>

<div id ="subDiv1">
<h4 class ="mb-4 fst-italic text-primary ms-5 ps-5">Customer Details</h4>
<div  class="ps-4 ms-5 pe-4 me-5 rounded bg-white">
<table class="table table-hover ms-5 me-5 ps-5 pe-5 mb-4" border="1">
  <thead>
  <tr>
  		<th>First Name</th>
  	  	<th>Last name</th>
  	  	<th>Email</th>
  	  	<th>Account Number</th>
  	  	<th>Balance</th>
  	  	<th>Bank Name</th>
  </tr>
  </thead>
  <tbody>
  <tr>
  
  <td><%=String.valueOf(session.getAttribute("fname")) %></td>
  <td><%=String.valueOf(session.getAttribute("lname")) %></td>
  <td><%=String.valueOf(session.getAttribute("email")) %></td>
  <td><%=String.valueOf(session.getAttribute("accNo")) %></td>
  <td><%=String.valueOf(session.getAttribute("bal")) %></td>
  <td>SBI</td>
  </tr>
  </tbody>
</table>
<button class="btn btn-success align-self-end justify-content-end pe-5 ps-5 ms-5 rounded-5">Generate Account Number</button>

</div>
</div>
<script type="text/javascript">
function subDiv(){
	var divElement = document.getElementById("subDiv1");
	 if (divElement.style.display = "none") {
     	divElement.style.display = "inline";
		}
}
</script>
</body>
</html>