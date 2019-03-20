<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="adminheader.ascx.cs" Inherits="doctor.SuperAdmin.adminheader" %>

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


<header id="tg-header" class="tg-header tg-haslayout">
			<div class="tg-topbar">
				<div class="container">
					<div class="row">
						<div class="col-xs-12 col-sm-12">
							<span class="tg-quickadvice"><i class=" fa fa-phone"></i> Call : <strong> 
                                <asp:Label ID="lblCallcenterNumber" runat="server" ></asp:Label></strong></span>
							<ul class="tg-contactinfo">
								<li><a href="#"><asp:Label ID="lblEmailAddress" runat="server" ></asp:Label></a></li>
								<li><address><asp:Label ID="lblAddress" runat="server" ></asp:Label></address></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
			<div class="container">
				<div class="row">
					<div class="col-sm-12 col-xs-12">
						<strong class="tg-logo">
							<a href="Default">
                                <asp:Image ID="LogoShow" runat="server" /></a>
						</strong>
						<div class="tg-navigationarea">
							<nav id="tg-nav" class="tg-nav">
								<div class="navbar-header">
									<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#tg-navigation" aria-expanded="false">
										<span class="sr-only">Toggle navigation</span>
										<span class="icon-bar"></span>
										<span class="icon-bar"></span>
										<span class="icon-bar"></span>
									</button>
								</div>
								<div id="tg-navigation" class="tg-navigation collapse navbar-collapse">
									<ul>
										<li class="tg-hasdropdown">
											<a href="#">Doctors</a>
											<ul class="tg-dropdownmenu">
												<li><a href="search?category=Dentist">Dentist</a></li>
												<li><a href="search?category=Ear-Nose-Throat (ENT)">Ear-Nose-Throat (ENT)</a></li>
												<li><a href="search?category=Gastroenterologist">Gastroenterologist</a></li>
												<li><a href="search?category=Psychiatrist">Psychiatrist</a></li>
												<li><a href="search?category=Urologist">Urologist</a></li>
												<li><a href="search?category=Nephrology">Nephrology</a></li>
                                                <li><a href="search?category=Ophthalmologist(Eye)">Ophthalmologist(Eye)</a></li>
                                                <li><a href="search?category=Cardiology">Cardiology</a></li>
                                                <li><a href="search?search?category=Dermatology & Venereology">Dermatology & Venereology</a></li>
                                                <li><a href="search?category=Neurology">Neurology</a></li>
											</ul>
										</li>
                                        <li class="tg-hasdropdown">
											<a href="#">Hospital</a>
											<ul class="tg-dropdownmenu">
												<li><a href="search?Hcategory=Cancer Hospital">Cancer Hospital</a></li>
												<li><a href="search?Hcategory=TB Hospital">TB Hospital</a></li>
												<li><a href="search?Hcategory=EYE Hospital">EYE Hospital</a></li>
												<li><a href="search?Hcategory=National Heart Foundation Hospital">National Heart Foundation Hospital</a></li>
												<li><a href="search?Hcategory=Kidney Hospital">Kidney Hospital</a></li>
												<li><a href="search?Hcategory=Gastroenterology and Hepatology Hospital">Gastroenterology and Hepatology Hospital</a></li>
                                                <li><a href="search?Hcategory=Orthopaedic and Pongu Hospital">Orthopaedic and Pongu Hospital</a></li>
                                                <li><a href="search?Hcategory=Medical Hospital">Medical Hospital</a></li>
                                                <li><a href="search?Hcategory=Psychiatrist">Psychiatrist</a></li>
                                                <li><a href="search?Hcategory=Homeopathy Hospital">Homeopathy Hospital</a></li>
                                                <li><a href="search?Hcategory=Clinic">Clinic</a></li>
                                                <li><a href="search?Hcategory=Physiotherapy Center">Physiotherapy Center</a></li>
                                                <li><a href="search?Hcategory=Diagnosis Center">Diagnosis Center</a></li>
											</ul>
										</li>
                                        <li class="tg-hasdropdown">
											<a href="#">Blood Bank</a>
											<ul class="tg-dropdownmenu">
												<li><a href="search?Bcategory=AP">A+</a></li>
												<li><a href="search?Bcategory=AN">A-</a></li>
												<li><a href="search?Bcategory=BP">B+</a></li>
												<li><a href="search?Bcategory=BN">B-</a></li>
												<li><a href="search?Bcategory=ABP">AB+</a></li>
												<li><a href="search?Bcategory=ABN">AB-</a></li>
                                                <li><a href="search?Bcategory=OP">O+</a></li>
                                                <li><a href="search?Bcategory=ON">O-</a></li>
											</ul>
										</li>
										<%--<li><a href="aboutus.html">About</a></li>
										<li><a href="how-its-works.html">How It Works?</a></li>--%>
										<li class="tg-hasdropdown">
											<a href="javascript:void(0);">
												<i class="hidden-xs fa fa-navicon"></i>
												<span class="hidden-lg hidden-md hidden-sm">Pages</span>
											</a>
											
										</li>
									</ul>
								</div>
							</nav>                         
                            <asp:PlaceHolder ID="pnlLogout_Show" runat="server"></asp:PlaceHolder>
                            <asp:PlaceHolder ID="pnlDoctorLoginPanel" runat="server"></asp:PlaceHolder>
                            
                            <%--<div class=" tg-admin tg-user">
                                <div class="tg-dropdown">
                                    <figure class="tg-adminpic">
                                        <span class="tg-dashboardbadge">3</span>
                                        <a href="dashboard.html">
                                            <img src="../images/icons/icon-41.png" alt="image description"></a>
                                    </figure>
                                    <a href="dashboard.html" class="tg-usermenu tg-btndropdown">
                                        <em>howdy, Anjela doe!</em>
                                    </a>
                                    <div class="dropdown-menu tg-dropdownbox tg-usermenu">
                                        <ul>
                                            <li>
                                                <a href="../Doctor/">
                                                    <i class="fa fa-line-chart"></i>
                                                    <span>Dashboard</span>
                                                </a>
                                            </li>
                                            <li class="tg-warningmessage">
                                                <a href="Service">
                                                    <i class="fa fa-plus"></i>
                                                    <span>Add Schedul</span>
                                                </a>
                                            </li>
                                            <li class="tg-successmessage">
                                                <a href="AppointmentsList.aspx">
                                                    <i class="fa fa-calendar-check-o"></i>
                                                    <span>Appointments List</span>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="#">
                                                    <i class="fa fa-clone"></i><span>Today Serial</span>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="Payment">
                                                    <i class="fa  fa-money"></i>
                                                    <span>Payment</span>
                                                </a>
                                            </li>                                        

                                        </ul>
                                    </div>
                                </div>
                            </div>--%>
                            
							

							

							


						</div>
					</div>
				</div>
			</div>
		</header>
    

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