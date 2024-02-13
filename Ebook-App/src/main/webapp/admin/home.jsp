<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
      <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin: Home</title>
<%@include file="allCss.jsp"%>
</head>
<body>
<c:if test="${empty userobj}">
         <c:redirect url="../login.jsp"/>
</c:if>
<%@include file="navbar.jsp"%>
<div class="container">
<div class="row p-5">
<div class="col-md-3">
<a href="add_books.jsp" style="text-decoration:none;">
<div class="card">
<div class="card-body text-center">
<i class="fa-solid fa-square-plus fa-3x text-primary"></i><br>
<h4>Add Books</h4>
........
</div>
</div>
</a>
</div>




<div class="col-md-3">
<a href="all_books.jsp" style="text-decoration:none;">
<div class="card">
<div class="card-body text-center">
<i class="fa-solid fa-book-open fa-3x text-danger"></i></i><br>
<h4>All Books</h4>
........
</div>
</div>
</a>
</div>



<div class="col-md-3">
<a href="orders.jsp" style="text-decoration:none;">
<div class="card">
<div class="card-body text-center">
<i class="fa-solid fa-box-open fa-3x text-warning"></i></i><br>
<h4>Order</h4>
........
</div>
</div>
</a>
</div>




<div class="col-md-3">
<a href="../logout" style="text-decoration:none;">
<div class="card">
<div class="card-body text-center">
<i class="fa-solid fa-right-from-bracket fa-3x text-primary"></i></i><br>
<h4>Logout</h4>
........
</div>
</div>
</div>

</div>
</a>
</div>


<%@include file="footer.jsp"%>
</body>
</html>