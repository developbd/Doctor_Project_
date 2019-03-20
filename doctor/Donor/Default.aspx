<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="doctor.Donor.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>Donor</title>
	<meta name="description" content=""/>
	<meta name="viewport" content="width=device-width, initial-scale=1"/>
	<link rel="apple-touch-icon" href="apple-touch-icon.png"/>
	<link rel="stylesheet" href="../css/bootstrap.min.css"/>
	<link rel="stylesheet" href="../css/normalize.css"/>
	<link rel="stylesheet" href="../css/font-awesome.min.css"/>
	<link rel="stylesheet" href="../css/jquery.countdown.css"/>
	<link rel="stylesheet" href="../css/customScrollbar.css"/>
	<link rel="stylesheet" href="../css/bootstrap-timepicker.min.css"/>
	<link rel="stylesheet" href="../css/fullcalendar.min.css"/>
	<link rel="stylesheet" href="../css/owl.carousel.css"/>
	<link rel="stylesheet" href="../css/owl.theme.css"/>
	<link rel="stylesheet" href="../css/jquery-ui.css"/>
	<link rel="stylesheet" href="../css/transitions.css"/>
	<link rel="stylesheet" href="../css/main.css"/>
	<link rel="stylesheet" href="../css/color.css"/>
	<link rel="stylesheet" href="../css/responsive.css"/>
	<script src="../js/vendor/modernizr-2.8.3-respond-1.4.2.min.js"></script>
</head>
<body class="tg-login">
    <form id="form1" runat="server">
    <div class="preloader-outer">
		<div class="pin"></div>
		<div class="pulse"></div>
	</div>
	<!--************************************
			Wrapper Start					
	*************************************-->
	<div id="tg-wrapper" class="tg-wrapper tg-haslayout">
		<!--************************************
				Header Start					
		*************************************-->
		

		<!--************************************
				Header End						
		*************************************-->
		<!--************************************
				Main Start						
		*************************************-->
		<main id="tg-main" class="tg-main tg-haslayout">
			<div class="container">
				<div class="row">
					<div id="tg-content" class="tg-content tg-dashboard">
						<div class="col-lg-3 col-md-4 col-sm-4 col-xs-12 pull-left">
							<div class="tg-widgetdashboard">
								<div class="tg-widgetprofile">
									<figure class="tg-directpostimg">
										<a><img src="../images/thumbnails/img-20.jpg" alt="image description"/></a>
										
									</figure>
									<div class="tg-directposthead">
										<h3><a>
                                            <asp:Label ID="lblFullname" runat="server"></asp:Label></a></h3>
										<div class="tg-subjects"><asp:Label ID="lblBloodGroup" runat="server"></asp:Label></div>										
									</div>	
                                    <a class="tg-btn tg-btn-lg" href="../logout">Logout</a>								
								</div>		
							</div>
							
							<div class="tg-widgetdashboard">
								<div class="tg-banneradd">
									<asp:PlaceHolder ID="pnlAdd" runat="server"></asp:PlaceHolder>	
								</div>
							</div>
                            <div class="tg-widgetdashboard">
								<div class="tg-banneradd">
									 <asp:PlaceHolder ID="pnlAdd2" runat="server"></asp:PlaceHolder>		
								</div>
							</div>
						</div>

                        <asp:Panel ID="pnlVerifyOK" runat="server">
                        <div class="col-lg-9 col-md-8 col-sm-8 col-xs-12 pull-right">
                            <div class="tg-dashboardprivacy">
                                <div class="tg-dashboardbox">
                                    <div class="tg-dashboardboxtitle">
                                        <h2>Privacy Settings</h2>
                                    </div>
                                    <div class="tg-privacysettingbox">


                                        <fieldset>
                                            <div class="row tg-rowmargin">
                                                <div class="col-md-6 col-sm-6 col-xs-12 tg-columnpadding">
                                                    <div class="form-group tg-formgroup">
                                                        <div class="col-md-4">
                                                            <span>Full Name </span>
                                                        </div>
                                                        <div class="col-md-8">
                                                            <asp:TextBox ID="txtFullName" placeholder="FullName" CssClass="form-control" runat="server"></asp:TextBox>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-md-6 col-sm-6 col-xs-12 tg-columnpadding">
                                                    <div class="form-group tg-formgroup">
                                                        <div class="col-md-4">
                                                            <span>BloodGroup</span>
                                                        </div>
                                                        <div class="col-md-8">
                                                            <asp:DropDownList ID="ddlDonerBloodGroup" CssClass="form-control" runat="server">
                                                                                    <asp:ListItem Selected="True" Value="0">Select Blood Group</asp:ListItem>
                                                                                    <asp:ListItem Value="AP">A+</asp:ListItem>
                                                                                    <asp:ListItem Value="AN">A-</asp:ListItem>
                                                                                    <asp:ListItem Value="BP">B+</asp:ListItem>
                                                                                     <asp:ListItem Value="BN">B-</asp:ListItem>
                                                                                     <asp:ListItem Value="ABP">AB+</asp:ListItem>
                                                                                     <asp:ListItem Value="ABN">AB-</asp:ListItem>
                                                                                     <asp:ListItem Value="OP">O+</asp:ListItem>
                                                                                     <asp:ListItem Value="ON">O-</asp:ListItem>
                                                                                </asp:DropDownList>
                                                        </div>
                                                    </div>
                                                </div>                                           
                                                <div class="col-md-6 col-sm-6 col-xs-12 tg-columnpadding">
                                                    <div class="form-group tg-formgroup">
                                                        <div class="col-md-4">
                                                            <span>Mobile</span>
                                                        </div>
                                                        <div class="col-md-8">
                                                            <asp:TextBox ID="txtMobile" MaxLength="11" CssClass="form-control" runat="server"></asp:TextBox>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-md-6 col-sm-6 col-xs-12 tg-columnpadding">
                                                    <div class="form-group tg-formgroup">
                                                        <div class="col-md-4">
                                                            <span>Gender</span>
                                                        </div>
                                                        <div class="col-md-8">
                                                            <asp:DropDownList ID="ddlGender" CssClass="form-control" runat="server">
                                                                <asp:ListItem Value="0">Select Gender</asp:ListItem>
                                                                <asp:ListItem Value="Male">Male</asp:ListItem>
                                                                <asp:ListItem Value="Female">Female</asp:ListItem>
                                                            </asp:DropDownList>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-md-6 col-sm-6 col-xs-12 tg-columnpadding">
                                                    <div class="form-group tg-formgroup">
                                                        <div class="col-md-4">
                                                            <span>Email</span>
                                                        </div>
                                                        <div class="col-md-8">
                                                            <asp:TextBox ID="txtEmail" Enabled="false" CssClass="form-control" runat="server"></asp:TextBox>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-md-6 col-sm-6 col-xs-12 tg-columnpadding">
                                                    <div class="form-group tg-formgroup">
                                                        <div class="col-md-4">
                                                            <span>Password</span>
                                                        </div>
                                                        <div class="col-md-8">
                                                            <asp:TextBox ID="txtPassword" placeholder="New Password" TextMode="Password" CssClass="form-control" runat="server"></asp:TextBox>
                                                        </div>
                                                    </div>
                                                </div>
                                                
                                                <div class="col-md-12 col-sm-12 col-xs-12 tg-columnpadding">
                                                    <div class="form-group tg-formgroup">
                                                        <div class="col-md-4">
                                                            <span>Address
                                                              </span>
                                                        </div>
                                                        <div class="col-md-8">
                                                            <asp:TextBox ID="txtAddress" placeholder="Present Address" TextMode="MultiLine" CssClass="form-control" runat="server"></asp:TextBox>
                                                        </div>
                                                    </div>
                                                </div>
                                                
                                                <div class="col-md-6 col-sm-6 col-xs-12 tg-columnpadding">
                                                    <div class="form-group tg-formgroup">
                                                        <div class="col-md-4">
                                                            <span>Profile Photo</span>
                                                        </div>
                                                        <div class="col-md-8">
                                                            <asp:FileUpload ID="ProfilePhotoUploader" runat="server" />
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </fieldset>


                                    </div>
                                </div>
                                <div class="tg-updateall">
                                    <span class="tg-note">* Click <strong>update all changes</strong> to update latest added detail (s).</span>
                                    <asp:Button ID="btnSave" OnClick="btnSave_Click" CssClass="tg-btn" runat="server" Text="update now" />
                                </div>
                                <asp:Label ID="lblResult" Font-Bold="true" runat="server"></asp:Label>
                            </div>
                        </div>
                        </asp:Panel>

                        <asp:Panel ID="pnlVerifyNotOk" runat="server">
                            <div class="col-lg-9 col-md-8 col-sm-8 col-xs-12 pull-right">
                                <div class="tg-dashboardsecuritysettings">

                                    <div class="tg-dashboardbox">
                                        <div class="tg-dashboardboxtitle">
                                            <h2>Email Verification Code</h2>
                                        </div>
                                        <div class="tg-box tg-changepassword">
                                            <div class="row tg-rowmargin">
                                                <div class="col-md-4 col-sm-6 col-xs-12 tg-columnpadding">
                                                    <div class="form-group tg-formgroup">
                                                        <asp:TextBox ID="txtCode" CssClass=" form-control" placeholder="Code" runat="server"></asp:TextBox>
                                                    </div>
                                                </div>
                                                <div class="col-md-4 col-sm-6 col-xs-12 tg-columnpadding">
                                                    <div class="form-group tg-formgroup">
                                                        <button class="tg-btn" type="submit">Resend Code</button>
                                                    </div>
                                                </div>
                                                <div class="col-md-4 col-sm-6 col-xs-12 tg-columnpadding">
                                                    <div class="form-group tg-formgroup">
                                                        <asp:Button ID="btnVeryfy" OnClick="btnVeryfy_Click" CssClass="tg-btn" runat="server" Text="Verify" />
                                                    </div>
                                                </div>
                                                <div class="col-md-12 col-sm-6 col-xs-12 tg-columnpadding">
                                                    <div class="form-group tg-formgroup">
                                                        <asp:Label ID="lblDoctorResult" runat="server" Font-Bold="true" ForeColor="Red"></asp:Label>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>


                                </div>
                            </div>
                        </asp:Panel>
					</div>
				</div>
			</div>
		</main>
	</div>
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
	<script>
		jQuery(document).ready(function(event) {
			//function function_name() {
			init_monthsviewcharts('tg-viewpermonthchartone');
			init_monthsviewcharts('tg-viewpermonthcharttwo');
			init_monthsviewcharts('tg-viewpermonthchartthree');
			init_monthsviewcharts('tg-viewpermonthchartfour');
			init_monthsviewcharts('tg-viewpermonthchartfive');
			/*}
			function_name();
			jQuery('.tg-monthlyviewstabnav li').on('click', 'a', function(){
				function_name();
			});*/
		});
	</script>



    </form>
</body>
</html>
