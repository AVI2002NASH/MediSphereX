<%@page import="java.sql.Connection" %>
<%@page import="com.model.Doctor" %>
<%@page import="java.util.*" %>
<%@page import="com.dao.DoctorDao" %>

   <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
  <%@ page isELIgnored = "false" %>
  
<html>
<head>
    <title>User HomePg</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    
<%@include file="header.jsp" %>
  </head>

<body>
    <%@include file="navbar.jsp" %>

	<div class="container-fulid backImg p-5">
<p class="text-center fs-2 text-white"></p>
</div>
	<div class="container p-3">
<div class="row">
		<div class="col-md-6 p-5">
			<img alt="" src="images/about.jpg" class="container-fluid">
		</div>
		<div class="col-md-6">
			<div class="card paint-card">
				<div class="card-body">
					<p class="text-center display-4 ">User Appointment</p>
					<c:if test="${not empty errorMsg4}">
						<p class="fs-4 text-center text-danger">${errorMsg4}</p>
						<c:remove var="errorMsg4" scope="session" />

					</c:if>
					<c:if test="${not empty succMsg4}">

						<p class=" fs-4 text-center text-success">${succMsg4}</p>
						<c:remove var="succMsg4" scope="session" />
					</c:if>



					<form class="row g-3" action="addappointment" method="post" onsubmit="return validateForm()">
					
						<input type="hidden" name="userid" value="${userObj.id}">
						<div class="col-md-6">
							<label for="inputEmaiL4" class="form-Label">Full Name</label> 
							<input required type="text" class="form-control" name="fullname">
						</div>
						
						<div class="col-md-6">
							<label>Gender</label> <select class="form-control" name="gender"
								required>
								<option value="male">Male</option>
								<option value="female">Female</option>
							</select>
						</div>
						
						<div class="col-md-6">
							<label for="inputEmaiL4" class="form-Label">Age</label> <input
								required type="number" class="form-control" name="age">
						</div>

						<div class="col-md-6">
							<label for="inputEmail4" class="form-LabeL">Appointment
								Date</label> <input type="date" class="form-control" required
								name="appoint_date">
						</div>
						<div class="col-md-6">
							<label for="inputEmaiL4" class="form-LabeL">Email</label> <input
								required type="email" class="form-control" name="email">

						</div>

						<div class="col-md-6">
							<label for="inputEmaiL4" class="form-Label">Phone No</label> <input
								maxlength="10" required type="number" class="form-control"
								name="phno">
						</div>
						<div class="col-md-6">
							<label for="inputEmaiL4" class="form-LabeL">Diseases</label> <input
								required type="text" class="form-control" name="diseases">
						</div>

						<div class="col-md-6">
							<label for="inputPassword4" class="form-Label">Doctor</label>
					
						<select required class="form-control" name="doct">
							<option value="">--select--</option>
									<%
DoctorDao dao = new DoctorDao();
List<Doctor> list = dao.getAllDoctor();
for (Doctor d: list) {
	%>
									<option value="<%=d.getId()%>"><%=d.getFullName()%> (<%=d.getSpecialist()%>)</option>
									<%
} %>
								</select> 
						</div>
						<div class="col-md-12">
							<label>Full Address</label>
							<textarea required name="address" class="form-control" rows="3"
								cols=""></textarea>
								</div>
							
							
					
							<c:if test="${empty userObj }">
						
								<a href="user_login.jsp"
									class="col-md-6 offset-md-3 btn btn-success">Submit</a>
							</c:if>
							
							<c:if test="${not empty userObj }">
					
								<button class="col-md-6 offset-md-3 btn btn-success">Submit</button>
							</c:if>
					</form>
				</div>
			</div>
		</div>
	</div>

</div>
	
    <div id="ftco-loader" class="show fullscreen"><svg class="circular" width="48px" height="48px"><circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee"/><circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10" stroke="#F96D00"/></svg></div>

<script>
  var currentDate = new Date().toISOString().split('T')[0];
  document.getElementById("appoint_date").min = currentDate;

  function validateForm() {
    var fullnameInput = document.getElementById("fullname");
    var genderInput = document.querySelector("select[name='gender']");
    var ageInput = document.getElementById("age");
    var appointDateInput = document.getElementById("appoint_date");
    var emailInput = document.getElementById("email");
    var phnoInput = document.getElementById("phno");
    var diseasesInput = document.getElementById("diseases");
    var doctInput = document.getElementById("doct");
    var addressInput = document.getElementById("address");
    var fullnameError = document.getElementById("fullname-error");
    var genderError = document.getElementById("gender-error");
    var ageError = document.getElementById("age-error");
    var appointDateError = document.getElementById("appoint_date-error");
    var emailError = document.getElementById("email-error");
    var phnoError = document.getElementById("phno-error");
    var diseasesError = document.getElementById("diseases-error");
    var doctError = document.getElementById("doct-error");
    var addressError = document.getElementById("address-error");
    var isValid = true;

    // Validate Full Name
    if (!fullnameInput.validity.valid) {
      fullnameError.textContent = "Please enter a valid name (only letters and spaces are allowed).";
      fullnameInput.classList.add("is-invalid");
      isValid = false;
    } else {
      fullnameError.textContent = "";
      fullnameInput.classList.remove("is-invalid");
    }

    // Validate Gender
    if (genderInput.value === "") {
      genderError.textContent = "Please select a gender.";
      genderInput.classList.add("is-invalid");
      isValid = false;
    } else {
      genderError.textContent = "";
      genderInput.classList.remove("is-invalid");
    }

    // Validate Age
    if (ageInput.value < 1 || ageInput.value > 120) {
      ageError.textContent = "Please enter a valid age (between 1 and 120).";
      ageInput.classList.add("is-invalid");
      isValid = false;
    } else {
      ageError.textContent = "";
      ageInput.classList.remove("is-invalid");
    }

    // Validate Appointment Date
    if (appointDateInput.value < currentDate) {
      appointDateError.textContent = "Please select a date that is not in the past.";
      appointDateInput.classList.add("is-invalid");
      isValid = false;
    } else {
      appointDateError.textContent = "";
      appointDateInput.classList.remove("is-invalid");
    }

    // Validate Email
    if (!emailInput.validity.valid) {
      emailError.textContent = "Please enter a valid email address.";
      emailInput.classList.add("is-invalid");
      isValid = false;
    } else {
      emailError.textContent = "";
      emailInput.classList.remove("is-invalid");
    }

    // Validate Phone Number
    if (!phnoInput.validity.valid) {
      phnoError.textContent = "Please enter a valid 10-digit phone number.";
      phnoInput.classList.add("is-invalid");
      isValid = false;
    } else {
      phnoError.textContent = "";
      phnoInput.classList.remove("is-invalid");
    }
    </script>
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
    </html>
    