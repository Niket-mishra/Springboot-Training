<%@ page language="java" contentType="text/html; charset=UTF-8"
 pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
        <html>

        <head>
            <title>User Management Application</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
        </head>

        <body>
<h2 class ="mb-4 mt-4 fst-italic text-primary text-center">Welcome : ${fname}</h2>
<nav class="navbar navbar-expand-lg bg-body-tertiary mb-5">
  <div class="container-fluid">
    <a class="navbar-brand" href="/"><b><i>Bank App</i></b></a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarText" aria-controls="navbarText" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse ms-3" id="navbarText">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a href="<%=request.getContextPath()%>/new" class="nav-link active fst-italic align-bottom d-flex justify-content-end link-success link-offset-2 link-underline-opacity-25 link-underline-opacity-100-hover" id="myAnchor" onclick="showDiv()" >Add New Customer</a>
        </li>
        <li class="nav-item fst-italic align-bottom d-flex justify-content-end link-success link-offset-2 link-underline-opacity-25 link-underline-opacity-100-hover">
          <a class="nav-link" href="#" onclick="hideDiv()">Add Bank Account</a>
        </li>
        <li class="nav-item fst-italic align-bottom d-flex justify-content-end link-success link-offset-2 link-underline-opacity-25 link-underline-opacity-100-hover">
          <a class="nav-link" href="user-list.jsp" onclick="showDiv2()">View Customers</a>
        </li>
        <li class="nav-item fst-italic align-bottom d-flex justify-content-end link-success link-offset-2 link-underline-opacity-25 link-underline-opacity-100-hover">
          <a class="nav-link" onclick="showDiv3()">View Transactions</a>
        </li>
      </ul>
      <span class="navbar-text">
        <b> <a href ="AdminHomePage.jsp" class="text-decoration-none">Admin Home Page</a> &nbsp;</b>
      </span>
    </div>
  </div>
</nav>


<div class = " me-5 pe-5">
<h2 class ="mb-4 fst-italic text-primary ms-5 ps-5">Customer Details</h2>
                    <table border="1" class="table table-hover ms-5 me-5 ps-5 pe-5 mb-4">
                        <thead>
                            <tr>
                                <th>ID</th>
                                <th>First Name</th>
                                <th>Last Name</th>
                                <th>Email</th>
                                <th>Account Number</th>
                                <th>Balance</th>
                                
                            </tr>
                        </thead>
                        <tbody>

                            <c:forEach var="user" items="${listUser}">

                                <tr>
                                    <td>
                                        <c:out value="${user.id}" />
                                    </td>
                                    <td>
                                        <c:out value="${user.fname}" />
                                    </td>
                                    <td>
                                        <c:out value="${user.lname}" />
                                    </td>
                                    <td>
                                        <c:out value="${user.email}" />
                                    </td>
                                    <td>
                                        <c:out value="${user.accounts.accNo}" />
                                    </td>
                                    <td>
                                        <c:out value="${user.accounts.balance}" />
                                    </td>
                                </tr>
                            </c:forEach>
                            <!-- } -->
                        </tbody>

                    </table>
           </div>
        </body>

        </html>