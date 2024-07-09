
<%@page import="java.sql.Connection" %>
   <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
  <%@ page isELIgnored = "false" %>
   <%@ page import = "com.dao.*" %>
      <%@ page import = "com.model.*" %>
   
<html>
<head>
    <title>MediSphereX</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Index Page</title>
<%@include file="header.jsp" %>
  </head>

<body >
<c:if test="${empty doctObj }">
<c:redirect url="../doctor_login.jsp"></c:redirect>
</c:if>
    <%@include file="navbar.jsp" %>
    
   <p class="text-center display-4">Doctor Dashboard</p>
	<div class="container p-5">
		<div class="row">
			<%
			Doctor d=(Doctor)session.getAttribute("doctObj");
		DoctorDao dao= new DoctorDao();
		
		
		%>
			<div class="col-md-4 offset-md-2">
			
				<div class="card paint-card">
				<div class="card-body text-center text-success">
				<i class="fas fa-user-md fa-3x"></i><br>
				<p class="fs-4 text-center">
					Doctor <br><%=dao.countDoctor() %>
					</p>
					</div>
					
					</div>
					
					</div>
				<div class="col-md-4">
					<div class="card paint-card">
						<div class="card-body text-center text-success">
							<i class="far fa-calendar-check fa-3x"></i><br>
							<p class="fs-4 text-center">
								Total Appointment <br> <%=dao.countAppointmentByDoctorId(d.getId()) %>
								</р>
						</div>
					</div>
			
</div>
</div>
</div>
 <!-- loader -->
  <div id="ftco-loader" class="show fullscreen"><svg class="circular" width="48px" height="48px"><circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee"/><circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10" stroke="#F96D00"/></svg></div>

 <script src="resources/js/jquery.min.js"></script>
  <script src="resources/js/jquery-migrate-3.0.1.min.js"></script>
  <script src="resources/js/popper.min.js"></script>
  <script src="resources/js/bootstrap.min.js"></script>
  <script src="resources/js/jquery.easing.1.3.js"></script>
  <script src="resources/js/jquery.waypoints.min.js"></script>
  <script src="resources/js/jquery.stellar.min.js"></script>
  <script src="resources/js/owl.carousel.min.js"></script>
  <script src="resources/js/jquery.magnific-popup.min.js"></script>
  <script src="resources/js/aos.js"></script>
  <script src="resources/js/jquery.animateNumber.min.js"></script>
  <script src="resources/js/bootstrap-datepicker.js"></script>
  <script src="resources/js/jquery.timepicker.min.js"></script>
  <script src="resources/js/scrollax.min.js"></script>
  <script src="resources/https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
  <script src="resources/js/google-map.js"></script>
  <script src="resources/js/main.js"></script>
    

   </body>