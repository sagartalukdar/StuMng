
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="com.connec.Connectionclass"%>
<%@page import="com.meth.Methods"%>
<%@page import="com.entity.Student"%>
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
<h2 style="text-align: center;">Edit  Student</h2>
<div>

<%
int id=Integer.parseInt(request.getParameter("id"));
Methods m=new Methods(Connectionclass.getConnection());
Student st=m.getStudent(id);
%>
<form action="edit" method="post">

  <div class="mb-3">
    <label for="exampleInputRollnumber" class="form-label">Roll Number</label>
    <input type="number" class="form-control" id="exampleInputRollnumber" name="rollnumber" value="<%=st.getRoll_number()%>">
  </div>
  
  <div class="mb-3">
    <label for="exampleInputFullname" class="form-label">Full Name</label>
    <input type="text" class="form-control" id="exampleInputFullname" name="fullname" value="<%=st.getFull_name() %>">

  </div>
  
    <div class="mb-3">
    <label for="exampleInputDateofbirth" class="form-label">Date of Birth</label>
    <input type="Date" class="form-control" id="exampleInputDateofbirth" name="dateofbirth" value="<%=st.getDate_of_birth()%>" >
  </div>
  
    <div class="mb-3">
    <label for="exampleInputAddress" class="form-label">Address</label>
    <input type="text" class="form-control" id="exampleInputAddress"  name="address" value="<%= st.getAddress()%>">
  </div>
  
  <div class="mb-3">
    <label for="exampleInputClass" class="form-label">Class</label>
    
    <input type="number" class="form-control" id="exampleInputClass" name="class" value="<%=st.getStclass()%>">
  </div>
  <div class="mb-3 form-check">
    <input type="checkbox" class="form-check-input" id="exampleCheck1">
    <label class="form-check-label" for="exampleCheck1">Check me out</label>
  </div>
  <input type="hidden" name="id" value="<%=st.getId()%>">
  <button type="submit" class="btn btn-primary">Submit</button>
</form>
</div>
</body>
</html>