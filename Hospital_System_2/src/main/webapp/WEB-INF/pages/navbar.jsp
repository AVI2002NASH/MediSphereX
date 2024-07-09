  <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
  <%@ page isELIgnored = "false" %>
 
 
 <nav class="navbar py-4 navbar-expand-lg ftco_navbar navbar-light bg-light flex-row">
    	<div class="container">
    		<div class="row no-gutters d-flex align-items-start align-items-center px-3 px-md-0">
    			<div class="col-lg-2 pr-4 align-items-center">
		    		<a class="navbar-brand" href="index">Medi<span>SphereX</span></a>
	    		</div>
	    		<div class="col-lg-10 d-none d-md-block">
		    		<div class="row d-flex">
			    		<div class="col-md-4 pr-4 d-flex topper align-items-center">
			    			<div class="icon bg-white mr-2 d-flex justify-content-center align-items-center"><span class="icon-map"></span></div>
						    <span class="text">Address: Sec-82 Mohali 160082</span>
					    </div>
					    <div class="col-md pr-4 d-flex topper align-items-center">
					    	<div class="icon bg-white mr-2 d-flex justify-content-center align-items-center"><span class="icon-paper-plane"></span></div>
						    <span class="text">Email: medisphereX@gmail.com</span>
					    </div>
					    <div class="col-md pr-4 d-flex topper align-items-center">
					    	<div class="icon bg-white mr-2 d-flex justify-content-center align-items-center"><span class="icon-phone2"></span></div>
						    <span class="text">Phone: +91 8264730484</span>
					    </div>
				    </div>
			    </div>
		    </div>
		  </div>
    </nav>
    
    
    <c:if test="${empty userObj }">
    
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark ftco-navbar-light " id="ftco-navbar">
	    <div class="container d-flex align-items-center">
				<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#ftco-nav" aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
	        <span class="oi oi-menu"></span> Menu
	      </button>
	      <div class="collapse navbar-collapse" id="ftco-nav">
	        <ul class="navbar-nav mr-auto">
	        	<li class="nav-item active"><a href="index" class="nav-link pl-0">Home</a></li>
	        	<li class="nav-item"><a href="about" class="nav-link">About</a></li>
	        	<li class="nav-item"><a href="doctor" class="nav-link">Doctor</a></li>
	        	<li class="nav-item"><a href="department" class="nav-link">Departments</a></li>
	        	
	        	<li class="nav-item"><a href="blog" class="nav-link">Blog</a></li>
              <li class="nav-item"><a href="user_appointment" class="nav-link">Appointment</a></li>
              	                          <li class="nav-item"><a href="doctor_login" class="nav-link">Doctor Login</a></li>
              	            
                              <li class="nav-item"><a href="user_login" class="nav-link">User</a></li>
              
              <li class="nav-item"><a href="admin_login" class="nav-link"><i class="fa-solid fa-right-to-bracket"></i> Admin</a></li>
                  
                 
	        </ul>
	      </div>
	    </div>
	  </nav>
 </c:if>
 
 
	  <c:if test="${not empty userObj }">
	 <nav class="navbar navbar-expand-lg navbar-dark bg-primary" id="ftco-navbar">
	    <div class="container  align-items-center">
				<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#ftco-nav" aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
	        <span class="oi oi-menu"></span> Menu
	      </button>
	      <div class="collapse navbar-collapse" id="ftco-nav">
	        <ul class="navbar-nav ml-auto">
	        	<li class="nav-item active"><a href="user_appointment.jsp" class="nav-link pl-0">Appointment</a></li>
	        	<li class="nav-item"><a href="view_appointment.jsp" class="nav-link">View Appointment</a></li>
					
				
					<div class="dropdown">
						<button class="btn btn-secondary dropdown-toggle" type="button"
							id="dropdownMenuButton1" data-bs-toggle="dropdown"
							aria-expanded="false">
							<i class="fa-solid fa-circle-user"></i> ${userObj.fullname}
						</button>
						<ul class="dropdown-menu" aria-labelledby="dropdownMenuButton1">
							<li><a class="dropdown-item" href="userLogout"> Logout</a></li>
						</ul>
					</div>



				</ul>
	        
	        	
	      </div>
	    </div>
	  </nav>
	
</c:if>




	  
	  
	  
	  
	  
	  
	  
	  