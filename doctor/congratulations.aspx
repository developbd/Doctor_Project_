<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="congratulations.aspx.cs" Inherits="doctor.congratulations" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <main id="tg-main" class="tg-main tg-haslayout">
			<div class="container">
				<div class="row">
					<div id="tg-content" class="tg-content tg-dashboard">
						<div class="col-lg-3 col-md-4 col-sm-4 col-xs-12 pull-left">

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
                            <div class="tg-widgetdashboard">
								<div class="tg-banneradd">
                                    <asp:PlaceHolder ID="pnlAdd3" runat="server"></asp:PlaceHolder>
								</div>
							</div>

						</div>
						<div class="col-lg-9 col-md-8 col-sm-8 col-xs-12 pull-right">
							<div class="row">
								<div class="col-sm-12 col-xs-12">
									<div class="tg-alertmessages">
										<div class="alert alert-success tg-alertmessage fade in">
											<a href="#" class="close" data-dismiss="alert" aria-label="close">×</a>
											<i class="fa fa-check"></i>
											<span><strong>Thank you.</strong>Your Serial is done.</span>
										</div>
                                        <div class="alert alert-info tg-alertmessage fade in">
											<a href="#" class="close" data-dismiss="alert" aria-label="close">×</a>
											<i class="fa fa-commenting-o"></i>
											<span><strong>info Message.</strong>If Serial Code is Not Send Your Mobile or Email. <asp:Button ID="Button1" runat="server" CssClass="btn btn-info" Text="Click Hear" /></span>
										</div>
									</div>
								</div>

								<div class="col-md-6 col-sm-12 col-xs-12">
									<div class="tg-profilewidget tg-recommendation">
										<a class="tg-refresh fa fa-refresh" href="#"></a>
										<h3>Date: <asp:Label ID="lblDate" runat="server"></asp:Label></h3>
										<span class="tg-profilewidgeticon">
											<img src="images/icons/icon-26.png" alt="image description">
										</span>
										<div class="tg-percentage">
											<span><asp:Label ID="lblSerialNumber" runat="server"></asp:Label></span>
											<span>Your Serial Number.</span>
										</div>
										<div class="tg-description">
											<p><strong>Doctor Address</strong><asp:Label ID="lblDoctorAddress" runat="server"></asp:Label></p>
										</div>
									</div>
								</div>
								<div class="col-md-6 col-sm-12 col-xs-12">
									<div class="tg-profilewidget tg-favourites">
										<a class="tg-refresh fa fa-refresh" href="#"></a>
										<h3>Total Patient</h3>
										<span class="tg-profilewidgeticon">
											<img src="images/icons/icon-27.png" alt="image description">
										</span>
										<div class="tg-followers">
											<span><asp:Label ID="lblTotalPatient" runat="server"></asp:Label></span>
											<span>People Are Serial This Date.</span>
										</div>
										<div class="tg-description">
											<p><strong>Note!</strong>Please Go Half an Houre Earlier. If Doctor Addoress so Far Then You Come One Houre Earlier.</p>
										</div>
									</div>
								</div>						
							</div>
						</div>
					</div>
				</div>
			</div>
		</main>    	<div id="tg-badgemodalbox" class="modal fade tg-badgemodalbox">
		<div class="modal-dialog tg-modaldialog" role="document">
			<div class="modal-content tg-badgemodalcontent">
				<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true"></span></button>
				<span class="tg-newwidgeticon">
					<img src="images/icons/ok.png" />
				</span>
				<h4>Congratulation!</h4>
				<span class="tg-subtitle">You Have Sucessfully Make a Serial.</span>
				<div class="tg-description">
					<p><strong>Note</strong>Congratulation Note.Congratulation Note.Congratulation Note.Congratulation Note.Congratulation Note.</p>
				</div>
			</div>
		</div>
	</div>
</asp:Content>
