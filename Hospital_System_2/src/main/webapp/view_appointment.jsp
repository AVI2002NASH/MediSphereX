<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.Connection" %>
<%@page import="com.dao.DoctorDao" %>
<%@page import="com.model.Doctor" %>
<%@page import="com.model.Appointment" %>
<%@page import="com.dao.AppointmentDAO" %>

<%@page import="com.model.User" %>


<%@page import="java.util.*" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@include file="header.jsp"%>
<style type="text/css">


 .paint-card {
box-shadow: 0 0 10px 0 rgba（0,0,0,0.3);
}


 </style>
</head>
<body>
<%@include file="navbar.jsp"%>



<div class="container-fluid text-center p-3">

<div class="row">
<div class="col-md-9">
<div class="card paint-card">
<div class="card-body">
<p class=" h1 fw-bold text-center text-success">Appointment List</p>
						<table class="table">


							<thead>
								<tr>

									<th scope="col">Full Name</th>
									<th scope="col">Gender</th>
									<th scope="col">Age</th>
									<th scope="col">Appoint Date</th>
									<th scope="col">Diseases</th>
									<th scope="col">Doctor Name</th>
									<th scope="col">Status</th>
								</tr>
							</thead>
							<tbody>
<% 
User user = (User) session.getAttribute("userObj");

AppointmentDAO dao = new AppointmentDAO();
DoctorDao dao2 = new DoctorDao();
List<Appointment> list = dao.getAllAppointmentByLoginUser(user.getId()) ;
for (Appointment ap : list) {
	Doctor d = dao2.getDoctorById(ap.getDoctorId());
%>
								<tr>
									<th><%=ap.getFullName() %> </th>
									<td> <%=ap.getGender() %></td>
									<td><%=ap.getAge()%></td>
									<td><%=ap.getAppoinDate()%></td>
									
									
									<td><%=ap.getDiseases() %></td>
                             <td><%=d.getFullName() %></td>
								<td>
								<% if("Pending".equals(ap.getStatus())) {
									%><a href="#" class="btn btn-sm btn-warning">Pending</a> <% 
								}
							else {%> 
							<%=ap.getStatus()%>
						<%}
}
%>		
								
								
								</td>											
								</tr>
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



