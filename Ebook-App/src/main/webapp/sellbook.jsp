<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Sell Book</title>
<%@include file="all_component/allCss.jsp"%>
</head>
<body style="background-color: #f7f7f7;">
<%@include file="all_component/navbar.jsp" %>

<div class="container mt-4">
<div class="row">
<div class="col-md-4 offset-md-4">
<div class="card">
<div class="card-body">
<h5 class="text-center text-primary p-1">Sell Old Books </h5>


<c:if test="${not empty succMsg}">
<p class="text-center text-success">${succMsg}</p>
<c:remove var="succMsg" scope="session"/>
</c:if>

<c:if test="${not empty failedMsg}">
<p class="text-center text-danger">${failedMsg}</p>
<c:remove var="failedMsg" scope="session"/>
</c:if>

<form action="addoldbook" method="post" enctype="multipart/form-data">
 <input type="hidden" value="${userobj.email}" name="user" >
 <div class="form-group">
    <label for="exampleInputName1">Book Name</label>
    <input type="text" class="form-control"  aria-describedby="emailHelp" placeholder="Enter Book Name" required="required" name="bname">
   
  </div>


  <div class="form-group">
    <label for="exampleInputEmail1">Author Name</label>
    <input type="text" class="form-control"  aria-describedby="emailHelp" placeholder="Enter Author Name" required="required" name="author"> 
  </div>
  
  
       <div class="form-group">
    <label for="exampleInputPhone1">Price</label>
    <input type="number" class="form-control"  aria-describedby="emailHelp" placeholder="Enter Price" required="required" name="price">
   
  </div>
  
    
     <div class="form-group">
    <label for="exampleFormControlField">Upload Photo</label>
    <input type="file" class="form-control" id="exampleFormControlField" name="bimg">
   
  </div>
    
   
    
  <div class="text-center mt-3">
  <button type="submit" class="btn btn-primary">Sell</button>
  </div>
</form>


</div>
</div>
</div>
</div>
</div>



<div class="mt-4">
<%@include file="all_component/footer.jsp"%>
</div>
</body>
</html>