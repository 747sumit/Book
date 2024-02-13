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
<title>Old Books</title>

<%@include file="all_component/allCss.jsp"%>
</head>
<body  style="background-color: #f7f7f7;">
<c:if test="${empty userobj}">
         <c:redirect url="login.jsp"/>
</c:if>
<%@include file="all_component/navbar.jsp" %>

<c:if test="${not empty succMsg}">
<p class="text-center text-success">${succMsg}</p>
<c:remove var="succMsg" scope="session"/>
</c:if>

<c:if test="${not empty failedMsg}">
<p class="text-center text-danger">${failedMsg}</p>
<c:remove var="failedMsg" scope="session"/>
</c:if>
<div class="container mt-4">
<table class="table table-striped">
  <thead class="bg-primary text-white">
    <tr>
      <th scope="col">Book Name</th>
      <th scope="col">Author</th>
      <th scope="col">Price</th>
      <th scope="col">Category</th>
      <th scope="col">Action</th>
    </tr>
  </thead>
  <tbody>
  <%User u=(User)session.getAttribute("userobj");
  String email=u.getEmail();
  BookDAOImpl dao=new BookDAOImpl(DBConnect.getConn());
  List<BookDtls> list=dao.getBookByOld(email, "Old");
  for(BookDtls b:list)
  {
	   %>
	  
	      <tr>
   
      <td><%=b.getBookName() %></td>
      <td><%=b.getAuthor() %></td>
      <td><%=b.getPrice() %></td>
      <td><%=b.getBookCategory() %></td>
  
      <td>
      <a href="doldbook?em=<%=email%>&&id=<%=b.getBookId()%>" class="btn btn-sm btn-danger"><i class="fa-solid fa-trash-can"></i> Delete</a>
      </td>
    </tr>
	  
      <%
  }
  
  %>

  </tbody>
</table>


</div>


<%@include file="all_component/footer.jsp" %>
</body>
</html>