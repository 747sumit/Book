<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Setting</title>
<style>


</style>
<%@include file="all_component/allCss.jsp"%>
</head>
<body  style="background-color: #f7f7f7;">
<c:if test="${empty userobj}">
         <c:redirect url="login.jsp"/>
</c:if>
<%@include file="all_component/navbar.jsp" %>

<div class="container">
<h3 class="text-center">Hello ${userobj.name} </h3>
<div class="row p-5">
<div class="col-md-4">
<a href="sellbook.jsp" style="text-decoration:none;" >
<div class="card">
<div class="card-body text-center">

<div class="text-primary">
<i class="fa-solid fa-sack-dollar fa-3x"></i>
</div>
<h4 style="color:black;">Sell Old Book</h4>



</div>
</div>
</a>
</div>

<div class="col-md-4">
<a href="Old_books.jsp" style="text-decoration:none;" >
<div class="card">
<div class="card-body text-center">

<div class="text-primary">
<i class="fa-solid fa-book fa-3x"></i>
</div>
<h4 style="color:black;">Old Book</h4>



</div>
</div>
</a>
</div>


<div class="col-md-4">
<a href="Editprofile.jsp" style="text-decoration:none; color:black;" >
<div class="card">
<div class="card-body text-center">

<div class="text-success">
<i class="fa-solid fa-user-pen fa-3x"></i>
</div>
<h4>Edit Profile</h4>



</div>
</div>
</a>
</div>





<div class="col-md-6 mt-3">
<a href="order.jsp" style="text-decoration:none; color:black;" >
<div class="card">
<div class="card-body text-center">

<div class="text-danger">
<i class="fa-solid fa-box-open fa-3x"></i>
</div>
<h4>My Order</h4>
<p>Track Your Order</p>


</div>
</div>
</a>
</div>

<div class="col-md-6 mt-3">
<a href="helpline.jsp" style="text-decoration:none; color:black;" >
<div class="card">
<div class="card-body text-center">

<div class="text-primary">
<i class="fa-solid fa-headset fa-3x"></i>
</div>
<h4>Help Center</h4>
<p>24x7 Available</p>

</div>
</div>
</a>
</div>









</div>
</div>


<%@include file="all_component/footer.jsp"%>
</body>
</html>