<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
  <%@ page isELIgnored = "false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>User Login</title>
<%@include file="header.jsp" %>
</head>
<body>
<%@include file="navbar.jsp" %>
   <script>
	function myFunction() {
	    var x = document.getElementById("mypassword");
	    if (x.type === "password") {
	        x.type = "text";
	    } else {
	        x.type = "password";
	    }
	}
</script>
    
    <div class="modal modal-signin position-static d-block  py-1" tabindex="-1" role="dialog" id="modalSignin" style="opacity:0.9;background-image:url();background-size: cover;">
    <div class="modal-dialog" role="document">
      <div class="modal-content rounded-4 shadow">
        <div class="modal-header p-5 pb-4 border-bottom-5">
          <!-- <h5 class="modal-title">Modal title</h5> -->
          <h2 class=" display-6 fw-semibold mb-0">User Login</h2>
        </div>
        
        
        
  <c:if test="${not empty succMsg2 }">
        <p class="text-center text-success fs-3">${succMsg2}</p>
       <c:remove var="succMsg2" scope="session" />
</c:if>

<c:if test="${not empty errorMsg2 }">
     <p class="text-center text-danger fs-5">${errorMsg2}</p>
     <c:remove var="errorMsg2" scope="session" />
</c:if>




        <div class="modal-body p-5 pt-0">
          <form action="userLogin" method="post">
           
              <div class="form-floating mb-3">
                <input type="text" class="form-control rounded-3" id="add" placeholder="Email" name="email" 
                required >
                <label for="add">Email</label>
              </div>
               <div class="form-floating mb-3">
               <input type="password" class="form-control rounded-3" name="password" placeholder="****" required id="mypassword">                    
                 <label for="mypassword">Password</label>
              </div>
              <input type="checkbox" onclick="myFunction()">Show Password
          
            <button class="w-100 mb-2 btn btn-lg rounded-3 btn-primary" type="submit" >Submit</button>
            <small class="text-muted">By clicking Submit button, you agree to the terms of use.</small>
            <br> Don't have an account? <a href="users" class="text-decord">
create one</a>
            <hr class="my-4">
            
          </form>
        </div>
      </div>
    </div>
  </div>
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
</html>