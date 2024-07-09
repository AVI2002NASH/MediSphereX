<%@page import="java.sql.Connection" %>
   <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
  <%@ page isELIgnored = "false" %>
  
<html>
<head>
    <title>MediSphereX</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Index Page</title>
<%@include file="header.jsp" %>
  </head>

<body>
    <%@include file="navbar.jsp" %>
    
   <section class="home-slider owl-carousel">
      <div class="slider-item" style="background-image:url(resources/images/bg_1.jpg);" data-stellar-background-ratio="0.5">
      	<div class="overlay"></div>
        <div class="container">
          <div class="row no-gutters slider-text align-items-center justify-content-start" data-scrollax-parent="true">
          <div class="col-md-6 text ftco-animate">
            <h1 class="mb-4">Helping Your <span>Stay Happy One</span></h1>
            <h3 class="subheading">Everyday We Bring Hope and Smile to the Patient We Serve</h3>
            <p><a href="#" class="btn btn-secondary px-4 py-3 mt-3">View our works</a></p>
          </div>
        </div>
        </div>
      </div>

      <div class="slider-item" style="background-image:url(resources/images/bg_2.jpg);">
      	<div class="overlay"></div>
        <div class="container">
          <div class="row no-gutters slider-text align-items-center justify-content-start" data-scrollax-parent="true">
          <div class="col-md-6 text ftco-animate">
            <h1 class="mb-4">We Care <span>About Your Health</span></h1>
            <h3 class="subheading">Your Health is Our Top Priority with Comprehensive, Affordable medical.</h3>
            <p><a href="#" class="btn btn-secondary px-4 py-3 mt-3">View our works</a></p>
          </div>
        </div>
        </div>
      </div>
    </section>

    <section class="ftco-services ftco-no-pb">
			<div class="container">
				<div class="row no-gutters">
          <div class="col-md-3 d-flex services align-self-stretch p-4 ftco-animate">
            <div class="media block-6 d-block text-center">
              <div class="icon d-flex justify-content-center align-items-center">
            		<span class="flaticon-doctor"></span>
              </div>
              <div class="media-body p-2 mt-3">
                <h3 class="heading">Qualitfied Doctors</h3>
                <p>Our superspecialist doctors provide the highest quality of care through a team-based, doctor-led model..</p>
              </div>
            </div>      
          </div>
          <div class="col-md-3 d-flex services align-self-stretch p-4 ftco-animate">
            <div class="media block-6 d-block text-center">
              <div class="icon d-flex justify-content-center align-items-center">
            		<span class="flaticon-ambulance"></span>
              </div>
              <div class="media-body p-2 mt-3">
                <h3 class="heading">Emergency Care</h3>
                <p>We Value Every Minute
In An Emergency. 24/7 Assistance guaranteed.</p>
              </div>
            </div>    
          </div>
          <div class="col-md-3 d-flex services align-self-stretch p-4 ftco-animate">
            <div class="media block-6 d-block text-center">
              <div class="icon d-flex justify-content-center align-items-center">
            		<span class="flaticon-stethoscope"></span>
              </div>
              <div class="media-body p-2 mt-3">
                <h3 class="heading">Outdoor Checkup</h3>
                <p>Our outdoor checkup facility offers patients a serene and comfortable environment to receive their routine medical examinations.</p>
              </div>
            </div>      
          </div>
          <div class="col-md-3 d-flex services align-self-stretch p-4 ftco-animate">
            <div class="media block-6 d-block text-center">
              <div class="icon d-flex justify-content-center align-items-center">
            		<span class="flaticon-24-hours"></span>
              </div>
              <div class="media-body p-2 mt-3">
                <h3 class="heading">24 Hours Service</h3>
                <p>At our hospital, we understand that medical emergencies can arise at any time, day or night.</p>              </div>
            </div>      
          </div>
        </div>
			</div>
		</section>
		
		<section class="ftco-section ftco-no-pt ftc-no-pb">
			<div class="container">
				<div class="row no-gutters">
					<div class="col-md-5 p-md-5 img img-2 mt-5 mt-md-0" style="background-image: url(resources/images/about.jpg);">
					</div>
					<div class="col-md-7 wrap-about py-4 py-md-5 ftco-animate">
	          <div class="heading-section mb-5">
	          	<div class="pl-md-5 ml-md-5">
		          	<span class="subheading">About MediSphereX</span>
		            <h2 class="mb-4" style="font-size: 28px;">Doctors, Pioneers, Life Savers</h2>
	            </div>
	          </div>
	          <div class="pl-md-5 ml-md-5 mb-5">
							<p>Our superspecialist doctors provide the highest quality of care through a team-based, doctor-led model. Trained at some of the world's most renowned institutions, our highly experienced doctors are distinguished experts in their respective specialities.</p>
							<div class="row mt-5 pt-2">
								<div class="col-lg-6">
									<div class="services-2 d-flex">
										<div class="icon mt-2 mr-3 d-flex justify-content-center align-items-center"><span class="flaticon-first-aid-kit"></span></div>
										<div class="text">
											<h3>Primary Care</h3>
											<p>Entrust your family's health to our experienced primary care providers. </p>
										</div>
									</div>
								</div>
								<div class="col-lg-6">
									<div class="services-2 d-flex">
										<div class="icon mt-2 mr-3 d-flex justify-content-center align-items-center"><span class="flaticon-dropper"></span></div>
										<div class="text">
											<h3>Lab Test</h3>
											<p>Our state-of-the-art laboratory delivers accurate, reliable results you can trust. </p>
										</div>
									</div>
								</div>
								<div class="col-lg-6">
									<div class="services-2 d-flex">
										<div class="icon mt-2 mr-3 d-flex justify-content-center align-items-center"><span class="flaticon-experiment-results"></span></div>
										<div class="text">
											<h3>Symptom Check</h3>
											<p>Whether you're experiencing a new health concern or need to monitor an existing condition, our team of experienced healthcare providers is here to guide you.</p>
										</div>
									</div>
								</div>
								<div class="col-lg-6">
									<div class="services-2 d-flex">
										<div class="icon mt-2 mr-3 d-flex justify-content-center align-items-center"><span class="flaticon-heart-rate"></span></div>
										<div class="text">
											<h3>Heart Rate</h3>
											<p>Our team of cardiac specialists will conduct a comprehensive assessment of your heart rate</p>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
		
		<section class="ftco-intro" style="background-image: url(resources/images/bg_3.jpg);" data-stellar-background-ratio="2.0">
			<div class="overlay"></div>
			<div class="container">
				<div class="row">
					<div class="col-md-9">
						<h2>We Provide Free Health Care Consultation</h2>
						<p class="mb-0">Your Health is Our Top Priority with Comprehensive, Affordable medical.</p>
						<div style="id=header width: 50px"><img src="resources/images\card.png"></div>
					</div>
					
			</div>
			</div>
		</section>
<br><br><br><br><br><br><br>
    <section class="ftco-section">
    	<div class="container">
    		<div class="row justify-content-center mb-5 pb-2">
          <div class="col-md-8 text-center heading-section ftco-animate">
          	<span class="subheading">Departments</span>
            <h2 class="mb-4">Clinic Departments</h2>
            <p> Each of our clinic departments is equipped with state-of-the-art medical technology and facilities, allowing us to provide comprehensive, evidence-based care for a diverse range of medical conditions and needs.</p>
          </div>
        </div>
    		<div class="ftco-departments">
					<div class="row">
            <div class="col-md-12 nav-link-wrap">
	            <div class="nav nav-pills d-flex text-center" id="v-pills-tab" role="tablist" aria-orientation="vertical">
	              <a class="nav-link ftco-animate active" id="v-pills-1-tab" data-toggle="pill" href="#v-pills-1" role="tab" aria-controls="v-pills-1" aria-selected="true">Neurology</a>

	              <a class="nav-link ftco-animate" id="v-pills-2-tab" data-toggle="pill" href="#v-pills-2" role="tab" aria-controls="v-pills-2" aria-selected="false">Surgical</a>

	              <a class="nav-link ftco-animate" id="v-pills-3-tab" data-toggle="pill" href="#v-pills-3" role="tab" aria-controls="v-pills-3" aria-selected="false">Dental</a>

	              <a class="nav-link ftco-animate" id="v-pills-4-tab" data-toggle="pill" href="#v-pills-4" role="tab" aria-controls="v-pills-4" aria-selected="false">Ophthalmology</a>

	              <a class="nav-link ftco-animate" id="v-pills-5-tab" data-toggle="pill" href="#v-pills-5" role="tab" aria-controls="v-pills-5" aria-selected="false">Cardiology</a>

	            </div>
	          </div>
	          <div class="col-md-12 tab-wrap">
	            
	            <div class="tab-content bg-light p-4 p-md-5 ftco-animate" id="v-pills-tabContent">

	              <div class="tab-pane py-2 fade show active" id="v-pills-1" role="tabpanel" aria-labelledby="day-1-tab">
	              	<div class="row departments">
	              		<div class="col-lg-4 order-lg-last d-flex align-items-stretch">
	              			
	              		</div>
	              		<div class="col-lg-8">
	              			
											<div class="row mt-5 pt-2">
												<img src="resources/images/neuro.png">
											</div>
	              		</div>
	              	</div>
	              </div>

	              <div class="tab-pane fade" id="v-pills-2" role="tabpanel" aria-labelledby="v-pills-day-2-tab">
	              	<div class="row departments">
	              		
	              		<div class="col-md-8">
	              				<div class="row mt-5 pt-2">
												<img src="resources/images/surgery.png">
											</div>
	              		</div>
	              	</div>
	              </div>
	              <div class="tab-pane fade" id="v-pills-3" role="tabpanel" aria-labelledby="v-pills-day-3-tab">
	              	<div class="row departments">
	              		
	              		<div class="col-md-8">
	              			
											<div class="row mt-5 pt-2">
												<img src="resources/images/dental.png">
											</div>
	              		</div>
	              	</div>
	              </div>

	              <div class="tab-pane fade" id="v-pills-4" role="tabpanel" aria-labelledby="v-pills-day-4-tab">
	              	<div class="row departments">
	              		
	              		<div class="col-md-8">
	              						<div class="row mt-5 pt-2">
												<img src="resources/images/optha.png">
											</div>
	              		</div>
	              	</div>
	              </div>

	              <div class="tab-pane fade" id="v-pills-5" role="tabpanel" aria-labelledby="v-pills-day-5-tab">
	              	<div class="row departments">
	              		
	              		<div class="col-md-8">
	              						<div class="row mt-5 pt-2">
												<img src="resources/images/card.png">
											</div>
	              		</div>
	              	</div>
	              </div>
	            </div>
	          </div>
	        </div>
        </div>
    	</div>
    </section>
		
		<section class="ftco-section ftco-no-pt">
			<div class="container">
				<div class="row justify-content-center mb-5 pb-2">
          <div class="col-md-8 text-center heading-section ftco-animate">
          	<span class="subheading">Doctors</span>
            <h2 class="mb-4">Our Qualified Doctors</h2>
            <p>Separated they live in. A small river named Duden flows by their place and supplies it with the necessary regelialia. It is a paradisematic country</p>
          </div>
        </div>	
				<div class="row">
					<div class="col-md-6 col-lg-3 ftco-animate">
						<div class="staff">
							<div class="img-wrap d-flex align-items-stretch">
								<div class="img align-self-stretch" style="background-image: url(resources/images/doc-1.jpg);"></div>
							</div>
							<div class="text pt-3 text-center">
								<h3>Dr Sandeep Vaishya</h3>
								<span class="position mb-2">Neurologist</span>
								<div class="faded">
									<p>Renowned Neurologist in India with more than 20 years of experience in the field having worked with some of the top institution and hospitals of India. .</p>
									<ul class="ftco-social text-center">
		                <li class="ftco-animate"><a href="#"><span class="icon-twitter"></span></a></li>
		                <li class="ftco-animate"><a href="#"><span class="icon-facebook"></span></a></li>
		                <li class="ftco-animate"><a href="#"><span class="icon-google-plus"></span></a></li>
		                <li class="ftco-animate"><a href="#"><span class="icon-instagram"></span></a></li>
		              </ul>
	              </div>
							</div>
						</div>
					</div>
					<div class="col-md-6 col-lg-3 ftco-animate">
						<div class="staff">
							<div class="img-wrap d-flex align-items-stretch">
								<div class="img align-self-stretch" style="background-image: url(resources/images/doc-1.jpg);"></div>
							</div>
							<div class="text pt-3 text-center">
								<h3>
Speciality: Ophthalmologist</h3>
								<span class="position mb-2">Ophthalmologist</span>
								<div class="faded">
									<p>With over 28 years of experience in practice and a specialization on ocular oncology, Dr. P Vijay Anand Reddy is a well-known and highly skilled ophthalmologist in India.</p>
									<ul class="ftco-social text-center">
		                <li class="ftco-animate"><a href="#"><span class="icon-twitter"></span></a></li>
		                <li class="ftco-animate"><a href="#"><span class="icon-facebook"></span></a></li>
		                <li class="ftco-animate"><a href="#"><span class="icon-google-plus"></span></a></li>
		                <li class="ftco-animate"><a href="#"><span class="icon-instagram"></span></a></li>
		              </ul>
	              </div>
							</div>
						</div>
					</div>
					<div class="col-md-6 col-lg-3 ftco-animate">
						<div class="staff">
							<div class="img-wrap d-flex align-items-stretch">
								<div class="img align-self-stretch" style="background-image: url(resources/images/doc-3.jpg);"></div>
							</div>
							<div class="text pt-3 text-center">
								<h3>Dr Aman Popli </h3>
								<span class="position mb-2">Dentist</span>
								<div class="faded">
									<p>One of the best Prosthodontist and amongst the top 10 dentists in India. </p>
									<ul class="ftco-social text-center">
		                <li class="ftco-animate"><a href="#"><span class="icon-twitter"></span></a></li>
		                <li class="ftco-animate"><a href="#"><span class="icon-facebook"></span></a></li>
		                <li class="ftco-animate"><a href="#"><span class="icon-google-plus"></span></a></li>
		                <li class="ftco-animate"><a href="#"><span class="icon-instagram"></span></a></li>
		              </ul>
	              </div>
							</div>
						</div>
					</div>
					<div class="col-md-6 col-lg-3 ftco-animate">
						<div class="staff">
							<div class="img-wrap d-flex align-items-stretch">
								<div class="img align-self-stretch" style="background-image: url(resources/images/doc-4.jpg);"></div>
							</div>
							<div class="text pt-3 text-center">
								<h3>Dr Aathira Ravindranath</h3>
								<span class="position mb-2">Pediatrician</span>
								<div class="faded">
									<p>Paediatric Gastroenterologist

MBBS, MD (Pediatrics), DM (Pediatric Gastroenterology) with 2 years of experience</p>
									<ul class="ftco-social text-center">
		                <li class="ftco-animate"><a href="#"><span class="icon-twitter"></span></a></li>
		                <li class="ftco-animate"><a href="#"><span class="icon-facebook"></span></a></li>
		                <li class="ftco-animate"><a href="#"><span class="icon-google-plus"></span></a></li>
		                <li class="ftco-animate"><a href="#"><span class="icon-instagram"></span></a></li>
		              </ul>
	              </div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>

    <section class="ftco-section testimony-section bg-light">
      <div class="container">
        <div class="row justify-content-center mb-5 pb-2">
          <div class="col-md-8 text-center heading-section ftco-animate">
          	<span class="subheading">Testimonials</span>
            <h2 class="mb-4">Our Patients Says About Us</h2>
            <p>Success Stories</p>
          </div>
        </div>
        <div class="row ftco-animate justify-content-center">
          <div class="col-md-8">
            <div class="carousel-testimony owl-carousel">
              <div class="item">
                <div class="testimony-wrap d-flex">
                  <div class="user-img mr-4" style="background-image: url(resources/images/person_1.jpg)">
                  </div>
                  <div class="text ml-2 bg-light">
                  	<span class="quote d-flex align-items-center justify-content-center">
                      <i class="icon-quote-left"></i>
                    </span>
                    <p>I was able to see and download my reports at home which was very usefull</p>
                    <p class="name">Ganesh</p>
                    <span class="position">Farmer</span>
                  </div>
                </div>
              </div>
              <div class="item">
                <div class="testimony-wrap d-flex">
                  <div class="user-img mr-4" style="background-image: url(resources/images/person_2.jpg)">
                  </div>
                  <div class="text ml-2 bg-light">
                  	<span class="quote d-flex align-items-center justify-content-center">
                      <i class="icon-quote-left"></i>
                    </span>
                    <p>I am writing on behalf of my brother who was a patient. I would like to thank you on behalf of my entire family for the help and consideration shown to me in what was a very difficult time. Again, I would like to thank you for the services you provide to patients and their families..</p>
                    <p class="name">Madhav SUri</p>
                    <span class="position">Businessman</span>
                  </div>
                </div>
              </div>
              <div class="item">
                <div class="testimony-wrap d-flex">
                  <div class="user-img mr-4" style="background-image: url(resources/images/person_3.jpg)">
                  </div>
                  <div class="text ml-2 bg-light">
                  	<span class="quote d-flex align-items-center justify-content-center">
                      <i class="icon-quote-left"></i>
                    </span>
                    <p>Helped me to booked and view my appointment online which in fact saved my time at the hospital</p>
                    <p class="name">Adamya Guleria</p>
                    <span class="position">Student</span>
                  </div>
                </div>
              </div>
              <div class="item">
                <div class="testimony-wrap d-flex">
                  <div class="user-img mr-4" style="background-image: url(resources/images/person_4.jpg)">
                  </div>
                  <div class="text ml-2 bg-light">
                  	<span class="quote d-flex align-items-center justify-content-center">
                      <i class="icon-quote-left"></i>
                    </span>
                    <p>I am writing to express my gratitude from my family for the care given to my mother as i was enrolled in health care plan offered by MediSphereX.</p>
                    <p class="name">Tushar Mahajan</p>
                    <span class="position">Student</span>
                  </div>
                </div>
              </div>
              <div class="item">
                <div class="testimony-wrap d-flex">
                  <div class="user-img mr-4" style="background-image: url(resources/images/person_1.jpg)">
                  </div>
                  <div class="text ml-2 bg-light">
                  	<span class="quote d-flex align-items-center justify-content-center">
                      <i class="icon-quote-left"></i>
                    </span>
                    <p>Easy and smooth experience of the website helped my grandfather a lot and it is very easy for him to use .</p>
                    <p class="name">Anmol Sharma</p>
                    <span class="position">Manager</span>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>

    <section class="ftco-section ftco-no-pt ftco-no-pb ftco-counter img" id="section-counter" style="background-image: url(images/bg_3.jpg);" data-stellar-background-ratio="0.5">
    	<div class="container">
    		<div class="row">
    			<div class="col-md-6 py-5 pr-md-5">
	          <div class="heading-section heading-section-white ftco-animate mb-5">
	          	<span class="subheading">Consultation</span>
	            <h2 class="mb-4"> High Quality Healthcare</h2>
	            <p> We understand the importance of personalized, high-quality healthcare. That's why we've implemented a comprehensive hospital management system to enhance the consultation experience for our patients.</p>
	          </div>
	          <form action="consultationdb.jsp" class="appointment-form ftco-animate">
	    				<div class="d-md-flex">
		    				<div class="form-group">
		    					<input type="text" class="form-control" placeholder="First Name" name="fname">
		    				</div>
		    				<div class="form-group ml-md-4">
		    					<input type="text" class="form-control" placeholder="Last Name" name="lname">
		    				</div>
	    				</div>
	    				<div class="d-md-flex">
	    					<div class="form-group">
		    					<div class="form-field">
          					<div class="select-wrap">
                      <div class="icon"><span class="ion-ios-arrow-down"></span></div>
                      <select name="Services" id="" class="form-control">
                      	<option value="null" style="color:black">Select Your Services</option>
                        <option value="neurology" style="color:black">Neurology</option>
                        <option value="cardiology" style="color:black">Cardiology</option>
                        <option value="dental" style="color:black">Dental</option>
                        <option value="ophthalmology" style="color:black">Ophthalmology</option>
                        <option value="other services" style="color:black">Other Services</option>
                      </select>
                    </div>
		              </div>
		    				</div>
	    					<div class="form-group ml-md-4">
		    					<input type="text" class="form-control" placeholder="Phone" name="phone">
		    				</div>
	    				</div>
	    				<div class="d-md-flex">
		    				<div class="form-group">
		    					<div class="input-wrap">
		            		<div class="icon"><span class="ion-md-calendar"></span></div>
		            		<input type="text" class="form-control appointment_date" placeholder="Date" name="date">
	            		</div>
		    				</div>
		    				<div class="form-group ml-md-4">
		    					<div class="input-wrap">
		            		<div class="icon"><span class="ion-ios-clock"></span></div>
		            		<input type="text" class="form-control appointment_time" placeholder="Time" name="time">
	            		</div>
		    				</div>
	    				</div>
	    				<div class="d-md-flex">
	    					<div class="form-group">
		              <textarea name="message" id="" cols="30" rows="2" class="form-control" placeholder="Message" ></textarea>
		            </div>
		            <div class="form-group ml-md-4">
		              <input type="submit" value="Appointment" class="btn btn-secondary py-3 px-4">
		            </div>
	    				</div>
	    			</form>
    			</div>
    			<div class="col-lg-6 p-5 bg-counter aside-stretch">
						<h3 class="vr">About MediSphereX Facts</h3>
    				<div class="row pt-4 mt-1">
		          <div class="col-md-6 d-flex justify-content-center counter-wrap ftco-animate">
		            <div class="block-18 p-5 bg-light">
		              <div class="text">
		                <strong class="number" data-number="30">0</strong>
		                <span>Years of Experienced</span>
		              </div>
		            </div>
		          </div>
		          <div class="col-md-6 d-flex justify-content-center counter-wrap ftco-animate">
		            <div class="block-18 p-5 bg-light">
		              <div class="text">
		                <strong class="number" data-number="4500">0</strong>
		                <span>Happy Patients</span>
		              </div>
		            </div>
		          </div>
		          <div class="col-md-6 d-flex justify-content-center counter-wrap ftco-animate">
		            <div class="block-18 p-5 bg-light">
		              <div class="text">
		                <strong class="number" data-number="84">0</strong>
		                <span>Number of Doctors</span>
		              </div>
		            </div>
		          </div>
		          <div class="col-md-6 d-flex justify-content-center counter-wrap ftco-animate">
		            <div class="block-18 p-5 bg-light">
		              <div class="text">
		                <strong class="number" data-number="300">0</strong>
		                <span>Number of Staffs</span>
		              </div>
		            </div>
		          </div>
	          </div>
          </div>
        </div>
    	</div>
    </section>

    <section class="ftco-section bg-light">
    	<div class="container">
    		<div class="row justify-content-center mb-5 pb-2">
          <div class="col-md-8 text-center heading-section ftco-animate">
          	<span class="subheading">Pricing</span>
            <h2 class="mb-4">Our Pricing</h2>
            <p></p>
          </div>
        </div>
    		<div class="row">
        	<div class="col-md-3 ftco-animate">
        		<div class="pricing-entry pb-5 text-center">
        			<div>
	        			<h3 class="mb-4">Basic</h3>
	        			<p><span class="price">Rs.2400</span> <span class="per">/ session</span></p>
	        		</div>
        			<ul>
        				<li><b>Diagnostic Services</b></li>
								<li>Fasting Blood Sugar</li>
								<li>Thyroid Stimulating Hormone</li>
								<li>Albumin</li>
								<li>LFT/KFT</li>
        			</ul>
        			<p class="button text-center"><a href="#" class="btn btn-primary px-4 py-3">Get Offer</a></p>
        		</div>
        	</div>
        	<div class="col-md-3 ftco-animate">
        		<div class="pricing-entry pb-5 text-center">
        			<div>
	        			<h3 class="mb-4">Standard</h3>
	        			<p><span class="price">Rs.2700</span> <span class="per">/ session</span></p>
	        		</div>
        			<ul>
        				<li><b>Diagnostic Services</b></li>
								<li>LFT/KFT</li>
								<li>Thyroid Gland</li>
								<li>CBC</li>
								<li>Urine Routine</li>
        			</ul>
        			<p class="button text-center"><a href="#" class="btn btn-primary px-4 py-3">Get Offer</a></p>
        		</div>
        	</div>
        	<div class="col-md-3 ftco-animate">
        		<div class="pricing-entry active pb-5 text-center">
        			<div>
	        			<h3 class="mb-4">Premium</h3>
	        			<p><span class="price">Rs2900</span> <span class="per">/ session</span></p>
	        		</div>
        			<ul>
        				<li><b>Diagnostic Services</b></li>
								<li>Standard package</li>
								<li>HbA1c (Glycosylated Hemoglobin) Test</li>
								<li>Vitamin B12 Test</li>
								<li>Complete Urine Analysis</li>
        			</ul>
        			<p class="button text-center"><a href="#" class="btn btn-primary px-4 py-3">Get Offer</a></p>
        		</div>
        	</div>
        	<div class="col-md-3 ftco-animate">
        		<div class="pricing-entry pb-5 text-center">
        			<div>
	        			<h3 class="mb-4">Platinum</h3>
	        			<p><span class="price">Rs3000</span> <span class="per">/ session</span></p>
	        		</div>
        			<ul>
        				<li><b>Diagnostic Services</b></li>
								<li>Premium Package</li>
								<li>Chloride Test</li>
								<li>HbA1c Test</li>
								<li>Heart Markers </li>
        			</ul>
        			<p class="button text-center"><a href="#" class="btn btn-primary px-4 py-3">Get Offer</a></p>
        		</div>
        	</div>
        </div>
    	</div>
    </section>

		<section class="ftco-section bg-light">
			<div class="container">
				<div class="row justify-content-center mb-5 pb-2">
          <div class="col-md-8 text-center heading-section ftco-animate">
          	<span class="subheading">Blog</span>
            <h2 class="mb-4">Recent Blog</h2>
            <p></p>
          </div>
        </div>
				<div class="row">
          <div class="col-md-4 ftco-animate">
            <div class="blog-entry">
              <a href="blog-single.html" class="block-20" style="background-image: url('resources/images/image_1.jpg');">
								<div class="meta-date text-center p-2">
                  <span class="day">23</span>
                  <span class="mos">April</span>
                  <span class="yr">2024</span>
                </div>
              </a>
              <div class="text bg-white p-4">
                <h3 class="heading"><a href="#">Vaping vs. Traditional Smoking: Long-Term Effects and Risks on Health</a></h3>
                <p>Using e-cigarettes, or “vaping,” are terms used synonymously to refer to the use of a wide variety of electronic, battery-operated devices that aerosolize liquids to release nicotine and other substances instead of burning them.</p>
                <div class="d-flex align-items-center mt-4">
	                <p class="mb-0"><a href="#" class="btn btn-primary">Read More <span class="ion-ios-arrow-round-forward"></span></a></p>
	                <p class="ml-auto mb-0">
	                	<a href="#" class="mr-2">Admin</a>
	                	<a href="#" class="meta-chat"><span class="icon-chat"></span> 9</a>
	                </p>
                </div>
              </div>
            </div>
          </div>
          <div class="col-md-4 ftco-animate">
            <div class="blog-entry">
              <a href="blog-single.html" class="block-20" style="background-image: url('resources/images/image_2.jpg');">
								<div class="meta-date text-center p-2">
                  <span class="day">24</span>
                  <span class="mos">April</span>
                  <span class="yr">2024</span>
                </div>
              </a>
              <div class="text bg-white p-4">
                <h3 class="heading"><a href="#">Testicular Cancer: Signs, Risk Factors, and Insights for Young Men</a></h3>
                <p>Testicular Cancer is amongst the most common cancers affecting young men (15-40 years). More importantly, testicular cancer is one of the most treatable cancers of the human body and the key to successful treatment lies in timely detection. </p>
                <div class="d-flex align-items-center mt-4">
	                <p class="mb-0"><a href="#" class="btn btn-primary">Read More <span class="ion-ios-arrow-round-forward"></span></a></p>
	                <p class="ml-auto mb-0">
	                	<a href="#" class="mr-2">Admin</a>
	                	<a href="#" class="meta-chat"><span class="icon-chat"></span> 16</a>
	                </p>
                </div>
              </div>
            </div>
          </div>
          <div class="col-md-4 ftco-animate">
            <div class="blog-entry">
              <a href="blog-single.html" class="block-20" style="background-image: url('resources/images/image_3.jpg');">
								<div class="meta-date text-center p-2">
                  <span class="day">23</span>
                  <span class="mos">January</span>
                  <span class="yr">2024</span>
                </div>
              </a>
              <div class="text bg-white p-4">
                <h3 class="heading"><a href="#">Neuralgias: What You Need to Know</a></h3>
                <p>Neuralgia is a chronic pain disorder that causes extreme, sporadic, sudden burning or shock-like face pain. This debilitating pain can occur suddenly and persist for prolonged periods, affecting both physical comfort and emotional well-being.</p>
                <div class="d-flex align-items-center mt-4">
	                <p class="mb-0"><a href="#" class="btn btn-primary">Read More <span class="ion-ios-arrow-round-forward"></span></a></p>
	                <p class="ml-auto mb-0">
	                	<a href="#" class="mr-2">Admin</a>
	                	<a href="#" class="meta-chat"><span class="icon-chat"></span> 5</a>
	                </p>
                </div>
              </div>
            </div>
          </div>
        </div>
			</div>
		</section>

		
    <footer class="ftco-footer ftco-bg-dark ftco-section">
      <div class="container">
        <div class="row mb-5">
          <div class="col-md">
            <div class="ftco-footer-widget mb-5">
              <h2 class="ftco-heading-2 logo">MEDISPHERE<span>X</span></h2>
              <p>An Ecosystem for Clinical Excellence</p>
            </div>
            <div class="ftco-footer-widget mb-5">
            	<h2 class="ftco-heading-2">Have a Questions?</h2>
            	<div class="block-23 mb-3">
	              <ul>
	                <li><span class="icon icon-map-marker"></span><span class="text">Sec-82 Mohali 160082</span></li>
	                <li><a href="#"><span class="icon icon-phone"></span><span class="text">+91 8264730484/7807445646</span></a></li>
	                <li><a href="#"><span class="icon icon-envelope"></span><span class="text">medisphereX@gmail.com</span></a></li>
	              </ul>
	            </div>

	            <ul class="ftco-footer-social list-unstyled float-md-left float-lft mt-3">
                <li class="ftco-animate"><a href="#"><span class="icon-twitter"></span></a></li>
                <li class="ftco-animate"><a href="#"><span class="icon-facebook"></span></a></li>
                <li class="ftco-animate"><a href="#"><span class="icon-instagram"></span></a></li>
              </ul>
            </div>
          </div>
          <div class="col-md">
            <div class="ftco-footer-widget mb-5 ml-md-4">
              <h2 class="ftco-heading-2">Links</h2>
              <ul class="list-unstyled">
                <li><a href="#"><span class="ion-ios-arrow-round-forward mr-2"></span>Home</a></li>
                <li><a href="#"><span class="ion-ios-arrow-round-forward mr-2"></span>About</a></li>
                <li><a href="#"><span class="ion-ios-arrow-round-forward mr-2"></span>Services</a></li>
                <li><a href="#"><span class="ion-ios-arrow-round-forward mr-2"></span>Deparments</a></li>
                <li><a href="#"><span class="ion-ios-arrow-round-forward mr-2"></span>Contact</a></li>
              </ul>
            </div>
            <div class="ftco-footer-widget mb-5 ml-md-4">
              <h2 class="ftco-heading-2">Services</h2>
              <ul class="list-unstyled">
                <li><a href="#"><span class="ion-ios-arrow-round-forward mr-2"></span>Neurolgy</a></li>
                <li><a href="#"><span class="ion-ios-arrow-round-forward mr-2"></span>Dentist</a></li>
                <li><a href="#"><span class="ion-ios-arrow-round-forward mr-2"></span>Ophthalmology</a></li>
                <li><a href="#"><span class="ion-ios-arrow-round-forward mr-2"></span>Cardiology</a></li>
                <li><a href="#"><span class="ion-ios-arrow-round-forward mr-2"></span>Surgery</a></li>
              </ul>
            </div>
          </div>
          <div class="col-md">
            <div class="ftco-footer-widget mb-5">
              <h2 class="ftco-heading-2">Recent Blog</h2>
              <div class="block-21 mb-4 d-flex">
                <a class="blog-img mr-4" style="background-image: url(images/image_1.jpg);"></a>
                <div class="text">
                  <h3 class="heading"><a href="#">Neuralgias: What You Need to Know</a></h3>
                  <div class="meta">
                    <div><a href="#"><span class="icon-calendar"></span> April 25,2024</a></div>
                    <div><a href="#"><span class="icon-person"></span> Admin</a></div>
                    <div><a href="#"><span class="icon-chat"></span> 19</a></div>
                  </div>
                </div>
              </div>
              <div class="block-21 mb-5 d-flex">
                <a class="blog-img mr-4" style="background-image: url(images/image_2.jpg);"></a>
                <div class="text">
                  <h3 class="heading"><a href="#">Testicular Cancer: Signs, Risk Factors, and Insights for Young Men</a></h3>
                  <div class="meta">
                    <div><a href="#"><span class="icon-calendar"></span> Apr 25, 2024</a></div>
                    <div><a href="#"><span class="icon-person"></span> Admin</a></div>
                    <div><a href="#"><span class="icon-chat"></span> 19</a></div>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="col-md">
          	<div class="ftco-footer-widget mb-5">
            	<h2 class="ftco-heading-2">Opening Hours</h2>
            	<h3 class="open-hours pl-4"><span class="ion-ios-time mr-3"></span>We are open 24/7</h3>
            </div>
            <div class="ftco-footer-widget mb-5">
            	<h2 class="ftco-heading-2">Subscribe Us!</h2>
              <form action="#" class="subscribe-form">
                <div class="form-group">
                  <input type="text" class="form-control mb-2 text-center" placeholder="Enter email address">
                  <input type="submit" value="Subscribe" class="form-control submit px-3">
                </div>
              </form>
            </div>
          </div>
        </div>
        <div class="row">
          <div class="col-md-12 text-center">

            <p><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
  Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | 
  <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></p>
          </div>
        </div>
      </div>
    </footer>
    
  

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
</html>
    </body>
    </html>