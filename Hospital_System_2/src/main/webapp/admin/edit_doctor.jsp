<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
   <%@ page import = "com.dao.SpecialistDAOImpl" %>
   <%@ page import = "java.util.*" %>
     <%@ page import = "com.model.Specialist" %>
     <%@ page import = "com.model.Doctor" %>
     <%@ page import = "com.dao.DoctorDao" %>
   
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
  <%@ page isELIgnored = "false" %>
  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Doctor List</title>
<%@include file="header.jsp" %>
<style type="text/css">

.paint-card{
box-shadow:0 0 10px 0 rgba(0,0,0,0.3);
}


</style>
</head>



<body>
<%@ include file="navbar.jsp" %>

<div class="row">

	<div class="col-md-4 offset-md-4">
		<div class="card paint-card">
			<div class="card-body">
				<p class="fs-3 text-center">Edit Doctor Details</p>
				<c:if test="${not empty errorMsg}">
					<p class="fs-3 text-center text-danger">${errorMsg}</p>
					<c:remove var="errorMsg" scope="session" />
				</c:if>
				<c:if test="${not empty succMsg}">
					<div class="fs-3 text-center text-success" role="alert">
						${succMsg}</div>
					<c:remove var="succMsg" scope="session" />
				</c:if>
				
				
				
					<%
					int id = Integer.parseInt(request.getParameter("id"));
					DoctorDao dao2 = new DoctorDao();
					Doctor d = dao2.getDoctorById(id);
					%>
					<form action="../updateDoctor" method="post">
					
					
						<div class="mb-3">
							<label class="form-label">Full Name</label> <input type="text"
								required name="fullname" class="form-control"
								value="<%=d.getFullName() %>">
						</div>
						
						
						
						<div class="mb-3">
							<label class="form-label">DOB</label> <input type="date" required
								name="dob" class="form-control"  value="<%=d.getDob() %>">
						</div>
						<div class="mb-3">
							<label class="form-label">Qualification</label> <input required
								name="qualification" type="text" class="form-control" value="<%=d.getQualification() %>">
						</div>
						<div class="mb-3">
							<label class="form-Label">Specialist</label> <select
								name="specialist" required class="form-control" >
								<option><%=d.getSpecialist() %></option>



								<%
							SpecialistDAOImpl dao = new SpecialistDAOImpl();

							List<Specialist> list = dao.getAllSpecialists();
							for (Specialist s : list) {
							%>
								<option><%=s.getSpecialistName()%></option>
								<%
}
%>




							</select>
						</div>
						<div class="mb-3">
							<label class="form-label">Email</label> <input type="text"
								required name="email" class="form-control" value="<%=d.getEmail() %>">
						</div>
						<div class="mb-3">
							<label class="form-Label"> Mob No</label> <input type="text"
								required name="mobno" class="form-control" value="<%=d.getMobNo() %>">
						</div>


						<div class="mb-3">
							<label class="form-Label">Password</label> <input required
								name="password" type="text" class="form-control" value="<%=d.getPassword()%>">
						</div>
						<input type="hidden" name="id" value="<%=d.getId()%>">
						<button type="submit" class="btn btn-primary col-md-12">Update</button>
					</form>
				</div>
		</div>
		
		
	</div>

	







</div>





















</body>
</html>