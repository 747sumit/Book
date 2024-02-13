
<%@page import="com.entity.User"%>
<%@page import="com.entity.BookDtls"%>
<%@page import="java.util.List"%>
<%@page import="com.DAO.BookDAOImpl"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.DB.DBConnect"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Ebook: Index </title>
<%@include file="all_component/allCss.jsp"%>
<style type="text/css">
.back-img
{
   background: url("img/1.jpg");
   height:50vh;
   width:100vw;
   background-repeat:no-repeat;
   background-size: cover;
}

.crd-ho:hover
{
background-color: #f7f7f7; 
}

</style>
</head>
<body style="background-color: #f7f7f7;">

<%
User u=(User)session.getAttribute("userobj");

%>
<%@include file="all_component/navbar.jsp" %>
<div>
<div class="container-fluid back-img">
<h2 class="text-center" style="color:white;">Ebook Management System</h2>
</div>
</div>


<!-- start recent book -->


<div class="container" >
<h3 class="text-center mt-3">Recent Books</h3>
<div class="row">
<%
BookDAOImpl dao1=new BookDAOImpl(DBConnect.getConn());
List<BookDtls> list1 =dao1.getRecentBook();
for(BookDtls b:list1)
{%>

<div class="col-md-3">
<div class="card crd-ho">
<div class="card-body text-center">

<img alt="" src="book//<%=b.getPhotoName() %>" style="height:200px; width:150px;" class="img-thumblin">
<p><%=b.getBookName() %></p>
<p><%=b.getAuthor() %></p>
<p>Category :<%=b.getBookCategory() %></p>
<%
if (b.getBookCategory().equals("New"))
{
%>
<div class="row">

<%
if(u==null)
{%>
<a href="login.jsp" class="btn btn-danger btn-sm ml"><i class="fa-solid fa-cart-plus"></i> Add Cart</a>

<%}else{%> 
<a href="cart?bid=<%=b.getBookId()%>&&uid=<%=u.getId()%>" class="btn btn-danger btn-sm ml"><i class="fa-solid fa-cart-plus"></i> Add Cart</a>

 <%}%>




<a href="viewbook.jsp?bid=<%=b.getBookId()%>" class="btn btn-success btn-sm ml-1">View Details</a>


<a href="" class="btn btn-danger btn-sm ml-1" ><%=b.getPrice()%><i class="fa-solid fa-indian-rupee-sign"></i></a>

</div>
<%}else{%>

<div class="row ml-4">
<a href="viewbook.jsp?bid=<%=b.getBookId()%>" class="btn btn-success btn-sm ml-1">View Details</a>
<a href="" class="btn btn-danger btn-sm ml-1" ><%=b.getPrice()%><i class="fa-solid fa-indian-rupee-sign"></i></a>
</div>

<%} %>


</div>
</div>
</div>
<%} %>


</div>
<div class="text-center mt-4">
<a href="recentbook.jsp" class="btn btn-danger btn-sm ">View all</a>
</div>
</div>

<!-- end -->



<!-- start new book -->
<div class="container" >
<h3 class="text-center mt-3">New Books</h3>
<div class="row">
<%
BookDAOImpl dao=new BookDAOImpl(DBConnect.getConn());
List<BookDtls> list =dao.getNewBook();
for(BookDtls b:list)
{%>

<div class="col-md-3">
<div class="card crd-ho">
<div class="card-body text-center">

<img alt="" src="book//<%=b.getPhotoName() %>" style="height:200px; width:150px;" class="img-thumblin">
<p><%=b.getBookName() %></p>
<p><%=b.getAuthor() %></p>
<p>Category :<%=b.getBookCategory() %></p>
<div class="row">
<%
if(u==null)
{%>
<a href="login.jsp" class="btn btn-danger btn-sm ml"><i class="fa-solid fa-cart-plus"></i> Add Cart</a>

<%}else{%> 
<a href="cart?bid=<%=b.getBookId()%>&&uid=<%=u.getId()%>" class="btn btn-danger btn-sm ml"><i class="fa-solid fa-cart-plus"></i> Add Cart</a>

 <%}%>
 
<a href="viewbook.jsp?bid=<%=b.getBookId()%>" class="btn btn-success btn-sm ml-1">View Details</a>
<a href="" class="btn btn-danger btn-sm ml-1" ><%=b.getPrice()%><i class="fa-solid fa-indian-rupee-sign"></i></a>
</div>
</div>
</div>
</div>
<%} %>


</div>
<div class="text-center mt-4">
<a href="newbook.jsp" class="btn btn-danger btn-sm ">View all</a>
</div>
</div>

<!-- end -->


<!-- start old book -->

<div class="container" >
<h3 class="text-center mt-3">Old Books</h3>
<div class="row">
<%
BookDAOImpl dao3=new BookDAOImpl(DBConnect.getConn());
List<BookDtls> list3 =dao3.getOldBook();
for(BookDtls b:list3)
{%>

<div class="col-md-3">
<div class="card crd-ho">
<div class="card-body text-center">

<img alt="" src="book//<%=b.getPhotoName() %>" style="height:200px; width:150px;" class="img-thumblin">
<p><%=b.getBookName() %></p>
<p><%=b.getAuthor() %></p>
<p>Category :<%=b.getBookCategory() %></p>
<div class="row ml-4">

<a href="viewbook.jsp?bid=<%=b.getBookId()%>" class="btn btn-success btn-sm ml-1">View Details</a>
<a href="" class="btn btn-danger btn-sm ml-1" ><%=b.getPrice()%><i class="fa-solid fa-indian-rupee-sign"></i></a>
</div>
</div>
</div>
</div>
<%} %>


</div>
<div class="text-center mt-4">
<a href="oldbook.jsp" class="btn btn-danger btn-sm ">View all</a>
</div>
</div>


<!-- end -->
<div class="mt-4">
<%@include file="all_component/footer.jsp"%>
</div>
</body>
</html>