<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   
    <%@page import="java.sql.Connection" %>
        <%@page import="com.model.Doctor" %>
<%@page import="java.sql.Connection" %>
<%@page import="com.dao.DoctorDao" %>
<%@page import="com.model.Doctor" %>
<%@page import="java.util.*" %>
 <%@page import="com.dao.AppointmentDAO" %>
        
    <%@page import="com.model.Appointment" %>
    
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
  <%@ page isELIgnored = "false" %>
  
<!DOCTYPE html>
<html>
<head>
<%@include file="header.jsp" %>

<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@include file="navbar.jsp" %>

<div class="container p-3">
<div class="row">
<div class="col-md-6 offset-md-3">
<div class="card paint-card">
<div class="card-body">



<p class="text-center display-4">Patient Comment</p>
<%
int id = Integer.parseInt (request.getParameter ("id")) ;
AppointmentDAO dao = new AppointmentDAO() ;
Appointment ap = dao.getAppointmentById(id);
%>
<form class="row" action="../updateStatus" method="post">

<div class="col-md-6">
<br>
<label>Patient Name</label>
<input type="text" readonly value="<%=ap.getFullName()%>" class="form-control">


</div>

<div class="col-md-6">
<br>
<label>Age</label>
<input type="number" readonly value="<%=ap.getAge()%>" class="form-control">


</div>
<div class="col-md-6">
<br>
<label>Mob No</label>
<input type="number" readonly value="<%=ap.getPhNo() %>" class="form-control">


</div>

<div class="col-md-6">
<br>
<label>Diseases</label>
<input type="text" readonly value="<%=ap.getDiseases()%>" class="form-control">


</div>
<div class="col-md-6">
<br>
<label>Comment</label>
<textarea  required name="comm"  class="form-control" row="3" cols=""></textarea>


</div>

<input type="hidden" name="id" value="<%=ap.getId() %>">


<input type="hidden" name="did" value="<%=ap.getDoctorId() %>">


<button class="mt-3 btn btn-primary col-md-6 offset-md-3">Submit</button>
</form>

</div>
</div>
</div>
</div>
</div>











</body>
</html>