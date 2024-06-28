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
<meta charset="UTF-8">
<title>Insert title here</title>
<%@include file="header.jsp" %>

</head>
<body>
    <%@include file="navbar.jsp" %>
    
    <div class="container p-3">
<div class="row">
<div class="col-md-12">
<div  class="card paint-card">
<div class="card-body">
<p class="fs-3 text-center">Patient Details</p>
<c:if test="${not empty errorMsg}">
<p class="fs-4 text-center text-danger">${errorMsg}</p>
<c:remove var="errorMsg" scope="session" />
</c:if>
<c:if test="${not empty succMsg}">
<p class=" fs-4 text-center text-success">${succMsg}</p>
<c:remove var="succMsg" scope="session" />
</c:if>
<table class="table">
<thead>
<tr>
<th scope="col">Full Name</th>
<th scope="col">Gender</th>
<th scope="col">Age</th>
<th scope="col">Appointment Date</th>
<th scope="col">Email</th> <th scope="col">Mob No</th>
<th scope="col">Diseases</th>
    
    <th scope="col">Status</th>
    <th scope="col">Action</th>
    </tr>
    </thead>
    <tbody>
    <%
    
    Doctor d=(Doctor) session.getAttribute("doctObj");    
    AppointmentDAO dao=new AppointmentDAO();
    List<Appointment> list=dao.getAllAppointmentByDoctorLogin(d.getId());  
    for(Appointment ap:list)
    {%>
    
        
    <tr>
    
    <th><%=ap.getFullName() %></th>
    <td><%=ap.getGender() %></td>
    <td><%=ap.getAge() %></td>
    <td><%=ap.getAppoinDate() %></td>
    <td><%=ap.getEmail() %></td>
    <td><%=ap.getPhNo() %></td>
    <td><%=ap.getDiseases() %></td>
    <td><%=ap.getStatus() %></td>
    <td>
    <% 
   if ("Pending".equals(ap.getStatus())) {
%>
       <a href="comment.jsp?id=<%=ap.getId()%>" class="btn btn-success btn-sm">Comment</a>
   <%
   
   } else {
   
   
   %>
  

   <a href="#" class="btn btn-success btn-sm disabled">Comment</a>

       <% 
   }
    
   %>
    </td>
   
    
    
    
    
    </tr>
    
    <%
    
    }
    %>
    
    
    
 
    
    </tbody>
   </table>
   </div>
   </div>
   </div>
   </div>
   </div>
   
   
    
    
    
   
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
 <div id="ftco-loader" class="show fullscreen"><svg class="circular" width="48px" height="48px"><circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee"/><circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10" stroke="#F96D00"/></svg></div>













  <script src="js/jquery.min.js"></script>
  <script src="js/jquery-migrate-3.0.1.min.js"></script>
  <script src="js/popper.min.js"></script>
  <script src="js/bootstrap.min.js"></script>
  <script src="js/jquery.easing.1.3.js"></script>
  <script src="js/jquery.waypoints.min.js"></script>
  <script src="js/jquery.stellar.min.js"></script>
  <script src="js/owl.carousel.min.js"></script>
  <script src="js/jquery.magnific-popup.min.js"></script>
  <script src="js/aos.js"></script>
  <script src="js/jquery.animateNumber.min.js"></script>
  <script src="js/bootstrap-datepicker.js"></script>
  <script src="js/jquery.timepicker.min.js"></script>
  <script src="js/scrollax.min.js"></script>
  <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
  <script src="js/google-map.js"></script>
  <script src="js/main.js"></script>
    

</body>
</html>