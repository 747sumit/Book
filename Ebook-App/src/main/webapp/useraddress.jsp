<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit Address</title>
<%@include file="all_component/allCss.jsp"%>
</head>
<body style="background-color: #f7f7f7;">
<%@include file="all_component/navbar.jsp" %>

<div class="container mt-4">
<div class="row p-3">
<div class="col-md-6 offset-md-3">
<div class="card">
<div class="card-body">
<h5 class="text-center text-primary p-1">Edit Address </h5>

<form action="#" method="post">

<div class="form-row">


    <div class="form-group col-md-6">
      <label for="inputPassword4">Address</label>
      <input type="text" class="form-control" id="inputPassword4">
    </div>
 
    <div class="form-group col-md-6">
      <label for="inputEmail4">Landmark</label>
      <input type="text" class="form-control" id="inputEmail4">
    </div>
    
      </div>
       
       
        <div class="form-row">
      
    <div class="form-group col-md-4">
      <label for="inputPassword4">City</label>
      <input type="text" class="form-control" id="inputPassword4">
    </div>

  
  
  

    <div class="form-group col-md-4">
      <label for="inputEmail4">State</label>
      <input type="text" class="form-control" id="inputEmail4" >
    </div>
    
    
      <div class="form-group col-md-4">
      <label for="inputPassword4">Pin Code</label>
      <input type="text" class="form-control" id="inputPassword4" >
    </div>
  </div>
    
    </div>
    
  
  <div class="text-center mt-3 mb-3">
  <button type="submit" class="btn btn-primary">Update</button>
  </div>
  

</form>


</div>
</div>
</div>
</div>
</div>




<%@include file="all_component/footer.jsp"%>

</body>
</html>