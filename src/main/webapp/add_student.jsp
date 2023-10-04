<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
     <%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@include file="bootstrap.jsp" %>
</head>
<body>
<%@include file="navbar.jsp" %>

<div style="padding :30px;">
<div style="width:700px;margin: auto ;padding:30px; box-shadow:  0px 0px 15px gray;">
<h2 style="text-align: center;">Add a Student</h2>

<c:if test="${not empty succmsg }">
<p class="text-center text-success">${succmsg } </p>
<c:remove var="succmsg "/>
</c:if>

<c:if test="${not empty errmsg }">
<p class="text-center text-success">${errmsg }</p>
<c:remove var="errmsg "/>
</c:if>
<div>
<form action="add" method="post">

  <div class="mb-3">
    <label for="exampleInputRollnumber" class="form-label">Roll Number</label>
    <input type="number" class="form-control" id="exampleInputRollnumber" name="rollnumber">
  </div>
  
  <div class="mb-3">
    <label for="exampleInputFullname" class="form-label">Full Name</label>
    <input type="text" class="form-control" id="exampleInputFullname" name="fullname">

  </div>
  
    <div class="mb-3">
    <label for="exampleInputDateofbirth" class="form-label">Date of Birth</label>
    <input type="Date" class="form-control" id="exampleInputDateofbirth" name="dateofbirth">
  </div>
  
    <div class="mb-3">
    <label for="exampleInputAddress" class="form-label">Address</label>
    <input type="text" class="form-control" id="exampleInputAddress" name="address">
  </div>
  
  <div class="mb-3">
    <label for="exampleInputClass" class="form-label">Class</label>
    
    <input type="number" class="form-control" id="exampleInputClass" name="class">
  </div>
  <div class="mb-3 form-check">
    <input type="checkbox" class="form-check-input" id="exampleCheck1">
    <label class="form-check-label" for="exampleCheck1">Check me out</label>
  </div>
  <button type="submit" class="btn btn-primary">Submit</button>
</form>
</div>

</div>
</div>




</body>
</html>