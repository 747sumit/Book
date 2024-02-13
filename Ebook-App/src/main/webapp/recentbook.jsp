<%@page import="com.entity.User"%>
<%@page import="com.DB.DBConnect"%>
<%@page import="com.entity.BookDtls"%>
<%@page import="java.util.List"%>
<%@page import="com.DAO.BookDAOImpl"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
      <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>All Recent Book</title>
<%@include file="all_component/allCss.jsp"%>
<style type="text/css">
.crd-ho:hover
{
background-color: #f7f7f7; 
}
</style>
</head>
<body>
<%
User u=(User)session.getAttribute("userobj");

%>
<%@include file="all_component/navbar.jsp" %>
<div class="container" >
<h3 class="text-center mt-3">Recent Books</h3>
<div class="row">
<%
BookDAOImpl dao1=new BookDAOImpl(DBConnect.getConn());
List<BookDtls> list1 =dao1.getAllRecentBook();
for(BookDtls b:list1)
{%>

<div class="col-md-3">
<div class="card crd-ho mt-2">
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
 
<a href="" class="btn btn-success btn-sm ml-1">View Details</a>
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
</div>

<%@include file="all_component/footer.jsp"%>
</body>
</html>