<%@page import="com.connec.Connectionclass"%>
<%@page import="com.meth.Methods"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
     <%@page isELIgnored="false" %>
<%@page import="com.entity.Student" %>
<%@page import="com.connec.Connectionclass" %>
<%@page import="com.meth.Methods" %>
<%@page import="java.util.*" %>
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
<div style="width:90%;margin:auto ;padding:30px; box-shadow:  0px 0px 15px gray;">
<h2 style="text-align: center;">List of Student</h2>

<c:if test="${not empty succmsg }">
<p class="text-center text-success">${succmsg } </p>
<c:remove var="succmsg"/>
</c:if>

<c:if test="${not empty errmsg }">
<p class="text-center text-success">${errmsg }</p>
<c:remove var="errmsg"/>
</c:if>
<div>
<table class="table">
  <thead>
    <tr>
      <th scope="col">ROLL NUMBER</th>
      <th scope="col">FUll NAME</th>
      <th scope="col">DATE OF BIRTH</th>
      <th scope="col">ADDRESS</th>
      <th scope="col">CLASS</th>
      <th scope="col">ACTION</th>
    </tr>
  </thead>
  <tbody>
  <%
  Methods m=new Methods(Connectionclass.getConnection());
  List<Student>sl=m.list();
  for(Student s:sl){
  %>
    <tr>
      <th scope="row"><%=s.getRoll_number() %></th>
      <td><%=s.getFull_name() %></td>
      <td><%=s.getDate_of_birth() %></td>
      <td><%=s.getAddress() %></td>
      <td><%=s.getStclass() %></td>
      
      <td><a href="edit_student.jsp?id=<%=s.getId() %>" class="btn btn-sm btn-primary"><i class="fa-solid fa-pen-to-square"></i>Edit</a>
      
      <a href="delete?id=<%=s.getId() %>"class="btn btn-sm btn-danger ms-1"><i class="fa-solid fa-trash-can"></i>Delete</a>
      </td>
    </tr>
    
    <%} %>
    
  </tbody>
</table>
</div>

</div>
</div>
</body>
</html>