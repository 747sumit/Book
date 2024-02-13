<%@page import="com.entity.Book_Order"%>
<%@page import="java.util.List"%>
<%@page import="com.DAO.BookOrderImpl"%>
<%@page import="com.DB.DBConnect"%>
<%@page import="com.DAO.BookDAOImpl"%>
<%@page import="com.entity.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>All Orders</title>
<%@include file="allCss.jsp"%>
</head>
<body  style="background-color: #f7f7f7;">

<c:if test="${empty userobj}">
         <c:redirect url="login.jsp"/>
</c:if>
<%@include file="navbar.jsp"%>
<div><h3 class="text-center">Admin All Orders</h3></div>
<div class="container">
<table class="table table-striped my-4">
  <thead class="bg-primary text-white">
    <tr>
      <th scope="col">Order Id</th>
      <th scope="col">Name</th>
      <th scope="col">Email</th>
      <th scope="col">Address</th>
      <th scope="col">Ph No</th>
      <th scope="col">Book Name</th>
      <th scope="col">Author</th>
      <th scope="col">Price</th>
      <th scope="col">Payment Type</th>
    </tr>
  </thead>
  <tbody>
  <%
  
  BookOrderImpl dao=new BookOrderImpl(DBConnect.getConn());
 List<Book_Order> blist=  dao.getAllOrder();
 for(Book_Order b : blist)
 {%>
	     <tr>
      <th scope="row"><%=b.getOrderid() %></th>
      <td><%=b.getUserName() %></td>
      <td><%=b.getEmail() %></td>
      <td><%=b.getFulladd() %></td>
      <td><%=b.getPhno() %></td>
      <td><%=b.getBookName() %></td>
      <td><%=b.getAuthor() %></td>
      <td><%=b.getPrice() %></td>
      <td><%=b.getPaymentType() %></td>
   


    </tr>
	
	 
 
 <% }
  %>
  
  


  </tbody>
</table>
<div class="text-center">
<a href="home.jsp" class="btn btn-primary mt-3 mr-2">Home</a></div>
</div>
<%@include file="footer.jsp"%>
</body>
</html>