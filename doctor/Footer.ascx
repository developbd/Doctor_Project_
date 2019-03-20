<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Footer.ascx.cs" Inherits="doctor.Footer" %>
	<link rel="apple-touch-icon" href="apple-touch-icon.png">
	<link rel="stylesheet" href="../css/bootstrap.min.css">
	<link rel="stylesheet" href="../css/normalize.css">
	<link rel="stylesheet" href="../css/font-awesome.min.css">
	<link rel="stylesheet" href="../css/jquery.countdown.css">
	<link rel="stylesheet" href="../css/customScrollbar.css">
	<link rel="stylesheet" href="../css/bootstrap-timepicker.min.css">
	<link rel="stylesheet" href="../css/fullcalendar.min.css">
	<link rel="stylesheet" href="../css/owl.carousel.css">
	<link rel="stylesheet" href="../css/owl.theme.css">
	<link rel="stylesheet" href="../css/jquery-ui.css">
	<link rel="stylesheet" href="../css/transitions.css">
	<link rel="stylesheet" href="../css/main.css">
	<link rel="stylesheet" href="../css/color.css">
	<link rel="stylesheet" href="../css/responsive.css">
	<script src="../js/vendor/modernizr-2.8.3-respond-1.4.2.min.js"></script>




<footer id="tg-footer" class="tg-footer tg-haslayout">
			
			<div class="tg-quicklinks">
				<div class="container">
					<div class="row">
						<div class="tg-fcols">
							<div class="tg-fcol">
								<strong class="tg-logo">
									<a href="Default">
                                        <asp:Image ID="LogoImage" runat="server" />                                      
									</a>
								</strong>
								<ul class="tg-contactinfo">
									<li><a href="#"><i class="fa fa-location-arrow"></i><address>
                                        <asp:Label ID="lblAddress" runat="server" ></asp:Label></address></a></li>
									<li><a href="#"><i class="fa fa-phone"></i><span><asp:Label ID="lblCallcenter" runat="server" ></asp:Label></span></a></li>
									<li><a href="#"><i class="fa fa-envelope-o"></i><span><asp:Label ID="lblEmail" runat="server" ></asp:Label></span></a></li>
								</ul>
								<ul class="tg-socialsharewithtext">
									<li class="tg-facebook">
										<a class="tg-roundicontext" href="https://www.facebook.com/sharer/sharer.php?u=http%3A%2F%2Fbdbayonline.com">
											<em class="tg-usericonholder">
												<i class="fa fa-facebook-f"></i>
												<span>share on facebook</span>
											</em>
										</a>
									</li>
									<li class="tg-twitter">
										<a class="tg-roundicontext" href="https://twitter.com/intent/tweet?url=http%3A%2F%2Fbdbayonline.com&text=Bdbayonline">
											<em class="tg-usericonholder">
												<i class="fa fa-twitter"></i>
												<span>share on twitter</span>
											</em>
										</a>
									</li>
									<li class="tg-linkedin">
										<a class="tg-roundicontext" href="http://www.linkedin.com/shareArticle?mini=true&url=http%3A%2F%2Fbdbayonline.com&title=Bdbayonline">
											<em class="tg-usericonholder">
												<i class="fa fa-linkedin"></i>
												<span>share on linkdin</span>
											</em>
										</a>
									</li>
									<li class="tg-googleplus">
										<a class="tg-roundicontext" href="https://plus.google.com/share?url=http%3A%2F%2Fbdbayonline.com">
											<em class="tg-usericonholder">
												<i class="fa fa-google-plus"></i>
												<span>share on googl+</span>
											</em>
										</a>
									</li>
									
									
								</ul>
							</div>
							<%--<div class="tg-fcol tg-specialities">
								<div class="tg-title">
									<h3>Top Specialities</h3>
								</div>
								<ul>
									<li><a href="#">Arnos Grove</a></li>
									<li><a href="#">Dalston</a></li>
									<li><a href="#">Balham</a></li>
									<li><a href="#">Denmark Hill</a></li>
									<li><a href="#">Barkingside</a></li>
									<li><a href="#">Derry Downs</a></li>
									<li><a href="#">Barnes Cray</a></li>
								</ul>
								<ul>
									<li><a href="#">East Bedfont</a></li>
									<li><a href="#">Camden Town</a></li>
									<li><a href="#">Eden Park</a></li>
									<li><a href="#">Canonbury</a></li>
									<li><a href="#">View All</a></li>
								</ul>
							</div>--%>
							<div class="tg-fcol tg-latestlistings">
								<div class="tg-title">
									<h3>Doctors List</h3>
								</div>
								<ul>
									<li>
										<div class="tg-directposthead">
											<h3><a href="search?category=Dentist">Dentist</a></h3>
										</div>
									</li>
									<li>
										<div class="tg-directposthead">
											<h3><a href="search?category=Ear-Nose-Throat (ENT)">Ear-Nose-Throat (ENT)</a></h3>
										</div>
									</li>
									<li>
										<div class="tg-directposthead">
											<h3> <a href="search?category=Gastroenterologist">Gastroenterologist</a>  </h3>
										</div>
									</li>
                                    <li>
										<div class="tg-directposthead">
											<h3> <a href="search?category=Psychiatrist">Psychiatrist</a>  </h3>
										</div>
									</li>
                                    <li>
										<div class="tg-directposthead">
											<h3> <a href="search?category=Urologist">Urologist</a>  </h3>
										</div>
									</li>
                                    <li>
										<div class="tg-directposthead">
											<h3> <a href="search?category=Nephrology">Nephrology</a>  </h3>
										</div>
									</li>
                                    <li>
										<div class="tg-directposthead">
											<h3>  <a href="search?category=Ophthalmologist(Eye)">Ophthalmologist(Eye)</a> </h3>
										</div>
									</li>
                                    <li>
										<div class="tg-directposthead">
											<h3> <a href="search?category=Cardiology">Cardiology</a>  </h3>
										</div>
									</li>
                                    <li>
										<div class="tg-directposthead">
											<h3> <a href="search?search?category=Dermatology & Venereology">Dermatology & Venereology</a>  </h3>
										</div>
									</li>
                                    <li>
										<div class="tg-directposthead">
											<h3> <a href="search?category=Neurology">Neurology</a>  </h3>
										</div>
									</li>                                  
								</ul>								
							</div>
                            <div class="tg-fcol tg-latestlistings">
								<div class="tg-title">
									<h3>Hospital List</h3>
								</div>
								<ul>
									<li>
										<div class="tg-directposthead">
											<h3><a href="search?Hcategory=Cancer Hospital">Cancer Hospital</a></h3>
										</div>
									</li>
									<li>
										<div class="tg-directposthead">
											<h3><a href="search?Hcategory=TB Hospital">TB Hospital</a></h3>
										</div>
									</li>
									<li>
										<div class="tg-directposthead">
											<h3> <a href="search?Hcategory=EYE Hospital">EYE Hospital</a> </h3>
										</div>
									</li>
                                    <li>
										<div class="tg-directposthead">
											<h3><a href="search?Hcategory=National Heart Foundation Hospital">National Heart Foundation Hospital</a>  </h3>
										</div>
									</li>
                                    <li>
										<div class="tg-directposthead">
											<h3> <a href="search?Hcategory=Kidney Hospital">Kidney Hospital</a>  </h3>
										</div>
									</li>
                                    <li>
										<div class="tg-directposthead">
											<h3> <a href="search?Hcategory=Gastroenterology and Hepatology Hospital">Gastroenterology and Hepatology Hospital</a> </h3>
										</div>
									</li>
                                    <li>
										<div class="tg-directposthead">
											<h3> <a href="search?Hcategory=Orthopaedic and Pongu Hospital">Orthopaedic and Pongu Hospital</a> </h3>
										</div>
									</li>
                                    <li>
										<div class="tg-directposthead">
											<h3> <a href="search?Hcategory=Medical Hospital">Medical Hospital</a> </h3>
										</div>
									</li>
                                    <li>
										<div class="tg-directposthead">
											<h3> <a href="search?Hcategory=Homeopathy Hospital">Homeopathy Hospital</a> </h3>
										</div>
									</li>
                                    <li>
										<div class="tg-directposthead">
											<h3><a href="search?Hcategory=Clinic">Clinic</a>  </h3>
										</div>
									</li>                                  
								</ul>								
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="tg-footerbar">
				<div class="container">
					<div class="row">
						<div class="col-sm-12 col-xs-12">
							<nav id="tg-footernav" class="tg-footernav">
								<ul>
                                    <!--
									<li class="tg-active"><a href="#">Home</a></li>
									<li><a href="#">About</a></li>
									<li><a href="#">How It Works?</a></li>
									<li><a href="#">Categories</a></li>
                                    -->
								</ul>
							</nav>
							<span class="tg-copyright">2018 All Rights Reserved &copy; <a href="#">Developbd.net</a></span>
						</div>
					</div>
				</div>
			</div>
		</footer>



	<script src="../js/vendor/jquery-library.js"></script>
	<script src="../js/vendor/bootstrap.min.js"></script>
	<script src="../js/mapclustering/data.json"></script>
	<script src="https://maps.google.com/maps/api/js?key=AIzaSyCR-KEWAVCn52mSdeVeTqZjtqbmVJyfSus&amp;language=en"></script>
	<script src="../js/mapclustering/markerclusterer.min.js"></script>
	<script src="../js/mapclustering/infobox.js"></script>
	<script src="../js/bootstrap-timepicker.min.js"></script>
	<script src="../js/customScrollbar.min.js"></script>
	<script src="../js/mapclustering/map.js"></script>
	<script src="../js/jquery.countdown.js"></script>
	<script src="../js/owl.carousel.min.js"></script>
	<script src="../js/isotope.pkgd.js"></script>
	<script src="../js/packery-mode.js"></script>
	<script src="../js/svg-injector.js"></script>
	<script src="../js/moment.min.js"></script>
	<script src="../js/fullcalendar.min.js"></script>
	<script src="../js/jquery-ui.js"></script>
	<script src="../js/collapse.js"></script>
	<script src="../js/parallax.js"></script>
	<script src="../js/readmore.js"></script>
	<script src="../js/countTo.js"></script>
	<script src="../js/loader.js"></script>
	<script src="../js/appear.js"></script>
	<script src="../js/gmap3.js"></script>
	<script src="../js/main.js"></script>