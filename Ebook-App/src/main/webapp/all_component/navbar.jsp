   <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <%@page isELIgnored="false" %>
<div>
<div style="height: 10px; width: 100vw;background-color: #303f9f;"></div>

<div class="container-fluid p-3 bg-light">
<div class="row">
<div class="col-md-3 text-success">
<h3><a href="index.jsp" style="text-decoration:none" class="text-success"><i class="fa-solid fa-book"> </i> Ebooks</a></h3>
 </div>
 <div class="col-md-6">
    <form class="form-inline my-2 my-lg-0" action="search.jsp" method="post">
      <input class="form-control mr-sm-2" type="search" name="ch" placeholder="Search" aria-label="Search">
      <button class="btn btn-primary my-2 my-sm-0" type="submit"><i class="fa-solid fa-magnifying-glass"></i> Search</button>
    </form>
 
 </div>

 <c:if test="${not empty userobj }">
 
   <div class="col-md-3 ">
   
   <a href="checkout.jsp" class="btn btn-primary"><i class="fa-solid fa-cart-plus"></i> Cart</a>
   
  <a href="#" class="btn btn-success"><i class="fa-solid fa-user-plus"></i> ${userobj.name}</a>
  <a href="logout" class="btn btn-danger"><i class="fa-solid fa-right-to-bracket"></i> Logout</a>
 </div>
 
 </c:if>
 
 
  <c:if test="${empty userobj }">
 
   <div class="col-md-3 ">
  <a href="login.jsp" class="btn btn-success"><i class="fa-solid fa-right-to-bracket"></i> Login</a>
  <a href="register.jsp" class="btn btn-primary"><i class="fa-solid fa-user-plus"></i> Register</a>
 </div>
 
 </c:if>
 

</div>
</div>

<nav class="navbar navbar-expand-lg navbar-dark bg-custom">
  <a class="navbar-brand" href="#"><i class="fa-solid fa-house"></i></a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="index.jsp"> Home <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item active">
        <a class="nav-link" href="recentbook.jsp"><i class="fa-solid fa-book-open"></i> Recent Book</a>
      </li>
      
        <li class="nav-item active">
        <a class="nav-link" href="newbook.jsp"><i class="fa-solid fa-book-open"></i> New Book</a>
      </li>
      
          
        <li class="nav-item active">
        <a class="nav-link" href="oldbook.jsp"><i class="fa-solid fa-book-open"></i> Old Book</a>
      </li>
 
    </ul>
    <form class="form-inline my-2 my-lg-0">
     <a href="setting.jsp" class="btn btn-dark my-2 my-sm-0 m-1 " style="color:white; border:2px solid white" type="submit" ><i class="fa-solid fa-gear text-white" ></i> Setting</a>
      <a href="#" class="btn btn-danger my-2 my-sm-0" type="submit" style="color:white; border:2px solid white"> <i class="fa-solid fa-address-book "></i> Contact Us</a>
    </form>
  </div>
</nav>
</div>