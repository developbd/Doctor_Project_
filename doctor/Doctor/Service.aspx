<%@ Page Title="" Language="C#" MasterPageFile="~/Doctor/Doctor.Master" AutoEventWireup="true" EnableEventValidation="false" CodeBehind="Service.aspx.cs" Inherits="doctor.Doctor.Service" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="DocotorBody" runat="server">

<div class="col-lg-9 col-md-8 col-sm-8 col-xs-12 pull-right">
							<div class="tg-dashboardappoinmentsetting">

								<ul class="tg-dashboardtabnav" role="tablist">
									<li role="presentation" class="active">
										<a href="#inbox" aria-controls="inbox" role="tab" data-toggle="tab">
											<span>Schedules</span>
										</a>
									</li>	
                                    <li role="presentation">
										<a href="#sent" aria-controls="sent" role="tab" data-toggle="tab">
											<span>No Schedules</span>
										</a>
									</li>								
								</ul>

								<div class="tab-content tg-maintabscontent tg-cutsomslottabcontent">
									
                                    <div role="tabpanel" class="tab-pane active" id="inbox">
										<div class="tg-dashboardbox">
											<div class="tg-dashboardboxtitle">
												<h2>Appointment Schedule</h2>
											</div>
											<form class="tg-themeform tg-formtimeslots">
												<fieldset>
													<div class="tg-appoinmentbox">
														<div class="tg-dateandtimeslots">
															<div class="tg-datebox">
																<time datetime="2011-10-10">Schedul</time>
																<span><a href="#">Add/Edit</a></span>
															</div>
															<div class="tg-timeslots">
																<div class="row tg-rowmargin">
																	<div class="col-lg-4 col-md-6 col-sm-6 col-xs-12 tg-columnpadding">
																		<div class="form-group tg-formgroup">
                                                                            <asp:TextBox ID="txtTitle" CssClass="form-control" placeholder="Title (Optional)" runat="server"></asp:TextBox>
																		</div>
																	</div>
																	<div class="col-lg-4 col-md-6 col-sm-6 col-xs-12 tg-columnpadding">
																		<div class="form-group tg-formgroup">
																			<i class=""></i>
                                                                            <asp:DropDownList ID="ddlFastTime" CssClass="form-control" runat="server">
                                                                                <asp:ListItem Selected="True" Value="0">Select Iteam</asp:ListItem>
                                                                                 <asp:ListItem Value="12:00">12:00</asp:ListItem>
                                                                                <asp:ListItem Value="12:05">12:05</asp:ListItem>
                                                                                <asp:ListItem Value="12:10">12:10</asp:ListItem>
                                                                                <asp:ListItem Value="12:15">12:15</asp:ListItem>
                                                                                <asp:ListItem Value="12:20">12:20</asp:ListItem>
                                                                                <asp:ListItem Value="12:25">12:25</asp:ListItem>
                                                                                <asp:ListItem Value="12:30">12:30</asp:ListItem>
                                                                                <asp:ListItem Value="12:35">12:35</asp:ListItem>
                                                                                <asp:ListItem Value="12:40">12:40</asp:ListItem>
                                                                                <asp:ListItem Value="12:45">12:45</asp:ListItem>
                                                                                <asp:ListItem Value="12:50">12:50</asp:ListItem>
                                                                                <asp:ListItem Value="12:55">12:55</asp:ListItem>

                                                                                <asp:ListItem Value="1:05">1:00</asp:ListItem>
                                                                                <asp:ListItem Value="1:05">1:05</asp:ListItem>
                                                                                <asp:ListItem Value="1:10">1:10</asp:ListItem>
                                                                                <asp:ListItem Value="1:15">1:15</asp:ListItem>
                                                                                <asp:ListItem Value="1:20">1:20</asp:ListItem>
                                                                                <asp:ListItem Value="1:25">1:25</asp:ListItem>
                                                                                <asp:ListItem Value="1:30">1:30</asp:ListItem>
                                                                                <asp:ListItem Value="1:35">1:35</asp:ListItem>
                                                                                <asp:ListItem Value="1:40">1:40</asp:ListItem>
                                                                                <asp:ListItem Value="1:45">1:45</asp:ListItem>
                                                                                <asp:ListItem Value="1:50">1:50</asp:ListItem>
                                                                                <asp:ListItem Value="1:55">1:55</asp:ListItem>
                                                                                <asp:ListItem Value="2:00">2:00</asp:ListItem>

                                                                                <asp:ListItem Value="2:05">2:05</asp:ListItem>
                                                                                <asp:ListItem Value="2:10">2:10</asp:ListItem>
                                                                                <asp:ListItem Value="2:15">2:15</asp:ListItem>
                                                                                <asp:ListItem Value="2:20">2:20</asp:ListItem>
                                                                                <asp:ListItem Value="2:25">2:25</asp:ListItem>
                                                                                <asp:ListItem Value="2:30">2:30</asp:ListItem>
                                                                                <asp:ListItem Value="2:35">2:35</asp:ListItem>
                                                                                <asp:ListItem Value="2:40">2:40</asp:ListItem>
                                                                                <asp:ListItem Value="2:45">2:45</asp:ListItem>
                                                                                <asp:ListItem Value="2:50">2:50</asp:ListItem>
                                                                                <asp:ListItem Value="2:55">2:55</asp:ListItem>
                                                                                <asp:ListItem Value="3:00">3:00</asp:ListItem>

                                                                                <asp:ListItem Value="3:05">3:05</asp:ListItem>
                                                                                <asp:ListItem Value="3:10">3:10</asp:ListItem>
                                                                                <asp:ListItem Value="3:15">3:15</asp:ListItem>
                                                                                <asp:ListItem Value="3:20">3:20</asp:ListItem>
                                                                                <asp:ListItem Value="3:25">3:25</asp:ListItem>
                                                                                <asp:ListItem Value="3:30">3:30</asp:ListItem>
                                                                                <asp:ListItem Value="3:35">3:35</asp:ListItem>
                                                                                <asp:ListItem Value="3:40">3:40</asp:ListItem>
                                                                                <asp:ListItem Value="3:45">3:45</asp:ListItem>
                                                                                <asp:ListItem Value="3:50">3:50</asp:ListItem>
                                                                                <asp:ListItem Value="3:55">3:55</asp:ListItem>
                                                                                <asp:ListItem Value="4:00">4:00</asp:ListItem>

                                                                                <asp:ListItem Value="4:05">4:05</asp:ListItem>
                                                                                <asp:ListItem Value="4:10">4:10</asp:ListItem>
                                                                                <asp:ListItem Value="4:15">4:15</asp:ListItem>
                                                                                <asp:ListItem Value="4:20">4:20</asp:ListItem>
                                                                                <asp:ListItem Value="4:25">4:25</asp:ListItem>
                                                                                <asp:ListItem Value="4:30">4:30</asp:ListItem>
                                                                                <asp:ListItem Value="4:35">4:35</asp:ListItem>
                                                                                <asp:ListItem Value="4:40">4:40</asp:ListItem>
                                                                                <asp:ListItem Value="4:45">4:45</asp:ListItem>
                                                                                <asp:ListItem Value="4:50">4:50</asp:ListItem>
                                                                                <asp:ListItem Value="4:55">4:55</asp:ListItem>
                                                                                <asp:ListItem Value="5:00">5:00</asp:ListItem>

                                                                                 <asp:ListItem Value="5:05">5:05</asp:ListItem>
                                                                                <asp:ListItem Value="5:10">5:10</asp:ListItem>
                                                                                <asp:ListItem Value="5:15">5:15</asp:ListItem>
                                                                                <asp:ListItem Value="5:20">5:20</asp:ListItem>
                                                                                <asp:ListItem Value="5:25">5:25</asp:ListItem>
                                                                                <asp:ListItem Value="5:30">5:30</asp:ListItem>
                                                                                <asp:ListItem Value="5:35">5:35</asp:ListItem>
                                                                                <asp:ListItem Value="5:40">5:40</asp:ListItem>
                                                                                <asp:ListItem Value="5:45">5:45</asp:ListItem>
                                                                                <asp:ListItem Value="5:50">5:50</asp:ListItem>
                                                                                <asp:ListItem Value="5:55">5:55</asp:ListItem>
                                                                                <asp:ListItem Value="6:00">6:00</asp:ListItem>

                                                                                 <asp:ListItem Value="6:05">6:05</asp:ListItem>
                                                                                <asp:ListItem Value="6:10">6:10</asp:ListItem>
                                                                                <asp:ListItem Value="6:15">6:15</asp:ListItem>
                                                                                <asp:ListItem Value="6:20">6:20</asp:ListItem>
                                                                                <asp:ListItem Value="6:25">6:25</asp:ListItem>
                                                                                <asp:ListItem Value="6:30">6:30</asp:ListItem>
                                                                                <asp:ListItem Value="6:35">6:35</asp:ListItem>
                                                                                <asp:ListItem Value="6:40">6:40</asp:ListItem>
                                                                                <asp:ListItem Value="6:45">6:45</asp:ListItem>
                                                                                <asp:ListItem Value="6:50">6:50</asp:ListItem>
                                                                                <asp:ListItem Value="6:55">6:55</asp:ListItem>
                                                                                <asp:ListItem Value="7:00">7:00</asp:ListItem>

                                                                                 <asp:ListItem Value="7:05">7:05</asp:ListItem>
                                                                                <asp:ListItem Value="7:10">7:10</asp:ListItem>
                                                                                <asp:ListItem Value="7:15">7:15</asp:ListItem>
                                                                                <asp:ListItem Value="7:20">7:20</asp:ListItem>
                                                                                <asp:ListItem Value="7:25">7:25</asp:ListItem>
                                                                                <asp:ListItem Value="7:30">7:30</asp:ListItem>
                                                                                <asp:ListItem Value="7:35">7:35</asp:ListItem>
                                                                                <asp:ListItem Value="7:40">7:40</asp:ListItem>
                                                                                <asp:ListItem Value="7:45">7:45</asp:ListItem>
                                                                                <asp:ListItem Value="7:50">7:50</asp:ListItem>
                                                                                <asp:ListItem Value="7:55">7:55</asp:ListItem>
                                                                                <asp:ListItem Value="8:00">8:00</asp:ListItem>

                                                                                 <asp:ListItem Value="8:05">8:05</asp:ListItem>
                                                                                <asp:ListItem Value="8:10">8:10</asp:ListItem>
                                                                                <asp:ListItem Value="8:15">8:15</asp:ListItem>
                                                                                <asp:ListItem Value="8:20">8:20</asp:ListItem>
                                                                                <asp:ListItem Value="8:25">8:25</asp:ListItem>
                                                                                <asp:ListItem Value="8:30">8:30</asp:ListItem>
                                                                                <asp:ListItem Value="8:35">8:35</asp:ListItem>
                                                                                <asp:ListItem Value="8:40">8:40</asp:ListItem>
                                                                                <asp:ListItem Value="8:45">8:45</asp:ListItem>
                                                                                <asp:ListItem Value="8:50">8:50</asp:ListItem>
                                                                                <asp:ListItem Value="8:55">8:55</asp:ListItem>
                                                                                <asp:ListItem Value="9:00">9:00</asp:ListItem>

                                                                                 <asp:ListItem Value="9:05">9:05</asp:ListItem>
                                                                                <asp:ListItem Value="9:10">9:10</asp:ListItem>
                                                                                <asp:ListItem Value="9:15">9:15</asp:ListItem>
                                                                                <asp:ListItem Value="9:20">9:20</asp:ListItem>
                                                                                <asp:ListItem Value="9:25">9:25</asp:ListItem>
                                                                                <asp:ListItem Value="9:30">9:30</asp:ListItem>
                                                                                <asp:ListItem Value="9:35">9:35</asp:ListItem>
                                                                                <asp:ListItem Value="9:40">9:40</asp:ListItem>
                                                                                <asp:ListItem Value="9:45">9:45</asp:ListItem>
                                                                                <asp:ListItem Value="9:50">9:50</asp:ListItem>
                                                                                <asp:ListItem Value="9:55">9:55</asp:ListItem>
                                                                                <asp:ListItem Value="10:00">10:00</asp:ListItem>

                                                                                 <asp:ListItem Value="10:05">10:05</asp:ListItem>
                                                                                <asp:ListItem Value="10:10">10:10</asp:ListItem>
                                                                                <asp:ListItem Value="10:15">10:15</asp:ListItem>
                                                                                <asp:ListItem Value="10:20">10:20</asp:ListItem>
                                                                                <asp:ListItem Value="10:25">10:25</asp:ListItem>
                                                                                <asp:ListItem Value="10:30">10:30</asp:ListItem>
                                                                                <asp:ListItem Value="10:35">10:35</asp:ListItem>
                                                                                <asp:ListItem Value="10:40">10:40</asp:ListItem>
                                                                                <asp:ListItem Value="10:45">10:45</asp:ListItem>
                                                                                <asp:ListItem Value="10:50">10:50</asp:ListItem>
                                                                                <asp:ListItem Value="10:55">10:55</asp:ListItem>
                                                                                <asp:ListItem Value="11:00">11:00</asp:ListItem>

                                                                                 <asp:ListItem Value="11:05">11:05</asp:ListItem>
                                                                                <asp:ListItem Value="11:10">11:10</asp:ListItem>
                                                                                <asp:ListItem Value="11:15">11:15</asp:ListItem>
                                                                                <asp:ListItem Value="11:20">11:20</asp:ListItem>
                                                                                <asp:ListItem Value="11:25">11:25</asp:ListItem>
                                                                                <asp:ListItem Value="11:30">11:30</asp:ListItem>
                                                                                <asp:ListItem Value="11:35">11:35</asp:ListItem>
                                                                                <asp:ListItem Value="11:40">11:40</asp:ListItem>
                                                                                <asp:ListItem Value="11:45">11:45</asp:ListItem>
                                                                                <asp:ListItem Value="11:50">11:50</asp:ListItem>
                                                                                <asp:ListItem Value="11:55">11:55</asp:ListItem>                                                                               

                                                                            </asp:DropDownList>
																		</div>
																	</div>
																	<div class="col-lg-4 col-md-6 col-sm-6 col-xs-12 tg-columnpadding">
																		<div class="form-group tg-formgroup">
																			<i class=""></i>
                                                                            <asp:DropDownList ID="ddlFastTimeAP" CssClass=" form-control" runat="server">
                                                                                <asp:ListItem Selected="True" Value="PM"> PM </asp:ListItem>
                                                                                <asp:ListItem Value="AM">AM</asp:ListItem>
                                                                            </asp:DropDownList>
																		</div>
																	</div>
																	<div class="col-lg-4 col-md-6 col-sm-6 col-xs-12 tg-columnpadding">
																		<div class="form-group tg-formgroup">
																			
                                                                                <asp:DropDownList ID="ddlWeek" CssClass="form-control" runat="server">
                                                                                    <asp:ListItem Value="0">Select Iteam</asp:ListItem>
                                                                                    <asp:ListItem Value="Saturday">Saturday</asp:ListItem>
                                                                                    <asp:ListItem Value="Sunday">Sunday</asp:ListItem>
                                                                                    <asp:ListItem Value="Monday">Monday</asp:ListItem>
                                                                                    <asp:ListItem Value="Tuesday">Tuesday</asp:ListItem>
                                                                                    <asp:ListItem Value="Wednesday">Wednesday</asp:ListItem>
                                                                                    <asp:ListItem Value="Thursday">Thursday</asp:ListItem>
                                                                                    <asp:ListItem Value="Friday">Friday</asp:ListItem>                                                                                    
                                                                                </asp:DropDownList>
																			
																		</div>
																	</div>
																	<div class="col-lg-4 col-md-6 col-sm-6 col-xs-12 tg-columnpadding">
																		<div class="form-group tg-formgroup">
																			 <asp:DropDownList ID="ddlLastTime" CssClass="form-control" runat="server">
                                                                                <asp:ListItem Selected="True" Value="0">Select Iteam</asp:ListItem>
                                                                                <asp:ListItem Value="12:00">12:00</asp:ListItem>
                                                                                <asp:ListItem Value="12:05">12:05</asp:ListItem>
                                                                                <asp:ListItem Value="12:10">12:10</asp:ListItem>
                                                                                <asp:ListItem Value="12:15">12:15</asp:ListItem>
                                                                                <asp:ListItem Value="12:20">12:20</asp:ListItem>
                                                                                <asp:ListItem Value="12:25">12:25</asp:ListItem>
                                                                                <asp:ListItem Value="12:30">12:30</asp:ListItem>
                                                                                <asp:ListItem Value="12:35">12:35</asp:ListItem>
                                                                                <asp:ListItem Value="12:40">12:40</asp:ListItem>
                                                                                <asp:ListItem Value="12:45">12:45</asp:ListItem>
                                                                                <asp:ListItem Value="12:50">12:50</asp:ListItem>
                                                                                <asp:ListItem Value="12:55">12:55</asp:ListItem>

                                                                                <asp:ListItem Value="1:05">1:00</asp:ListItem>
                                                                                <asp:ListItem Value="1:05">1:05</asp:ListItem>
                                                                                <asp:ListItem Value="1:10">1:10</asp:ListItem>
                                                                                <asp:ListItem Value="1:15">1:15</asp:ListItem>
                                                                                <asp:ListItem Value="1:20">1:20</asp:ListItem>
                                                                                <asp:ListItem Value="1:25">1:25</asp:ListItem>
                                                                                <asp:ListItem Value="1:30">1:30</asp:ListItem>
                                                                                <asp:ListItem Value="1:35">1:35</asp:ListItem>
                                                                                <asp:ListItem Value="1:40">1:40</asp:ListItem>
                                                                                <asp:ListItem Value="1:45">1:45</asp:ListItem>
                                                                                <asp:ListItem Value="1:50">1:50</asp:ListItem>
                                                                                <asp:ListItem Value="1:55">1:55</asp:ListItem>
                                                                                <asp:ListItem Value="2:00">2:00</asp:ListItem>

                                                                                <asp:ListItem Value="2:05">2:05</asp:ListItem>
                                                                                <asp:ListItem Value="2:10">2:10</asp:ListItem>
                                                                                <asp:ListItem Value="2:15">2:15</asp:ListItem>
                                                                                <asp:ListItem Value="2:20">2:20</asp:ListItem>
                                                                                <asp:ListItem Value="2:25">2:25</asp:ListItem>
                                                                                <asp:ListItem Value="2:30">2:30</asp:ListItem>
                                                                                <asp:ListItem Value="2:35">2:35</asp:ListItem>
                                                                                <asp:ListItem Value="2:40">2:40</asp:ListItem>
                                                                                <asp:ListItem Value="2:45">2:45</asp:ListItem>
                                                                                <asp:ListItem Value="2:50">2:50</asp:ListItem>
                                                                                <asp:ListItem Value="2:55">2:55</asp:ListItem>
                                                                                <asp:ListItem Value="3:00">3:00</asp:ListItem>

                                                                                <asp:ListItem Value="3:05">3:05</asp:ListItem>
                                                                                <asp:ListItem Value="3:10">3:10</asp:ListItem>
                                                                                <asp:ListItem Value="3:15">3:15</asp:ListItem>
                                                                                <asp:ListItem Value="3:20">3:20</asp:ListItem>
                                                                                <asp:ListItem Value="3:25">3:25</asp:ListItem>
                                                                                <asp:ListItem Value="3:30">3:30</asp:ListItem>
                                                                                <asp:ListItem Value="3:35">3:35</asp:ListItem>
                                                                                <asp:ListItem Value="3:40">3:40</asp:ListItem>
                                                                                <asp:ListItem Value="3:45">3:45</asp:ListItem>
                                                                                <asp:ListItem Value="3:50">3:50</asp:ListItem>
                                                                                <asp:ListItem Value="3:55">3:55</asp:ListItem>
                                                                                <asp:ListItem Value="4:00">4:00</asp:ListItem>

                                                                                <asp:ListItem Value="4:05">4:05</asp:ListItem>
                                                                                <asp:ListItem Value="4:10">4:10</asp:ListItem>
                                                                                <asp:ListItem Value="4:15">4:15</asp:ListItem>
                                                                                <asp:ListItem Value="4:20">4:20</asp:ListItem>
                                                                                <asp:ListItem Value="4:25">4:25</asp:ListItem>
                                                                                <asp:ListItem Value="4:30">4:30</asp:ListItem>
                                                                                <asp:ListItem Value="4:35">4:35</asp:ListItem>
                                                                                <asp:ListItem Value="4:40">4:40</asp:ListItem>
                                                                                <asp:ListItem Value="4:45">4:45</asp:ListItem>
                                                                                <asp:ListItem Value="4:50">4:50</asp:ListItem>
                                                                                <asp:ListItem Value="4:55">4:55</asp:ListItem>
                                                                                <asp:ListItem Value="5:00">5:00</asp:ListItem>

                                                                                 <asp:ListItem Value="5:05">5:05</asp:ListItem>
                                                                                <asp:ListItem Value="5:10">5:10</asp:ListItem>
                                                                                <asp:ListItem Value="5:15">5:15</asp:ListItem>
                                                                                <asp:ListItem Value="5:20">5:20</asp:ListItem>
                                                                                <asp:ListItem Value="5:25">5:25</asp:ListItem>
                                                                                <asp:ListItem Value="5:30">5:30</asp:ListItem>
                                                                                <asp:ListItem Value="5:35">5:35</asp:ListItem>
                                                                                <asp:ListItem Value="5:40">5:40</asp:ListItem>
                                                                                <asp:ListItem Value="5:45">5:45</asp:ListItem>
                                                                                <asp:ListItem Value="5:50">5:50</asp:ListItem>
                                                                                <asp:ListItem Value="5:55">5:55</asp:ListItem>
                                                                                <asp:ListItem Value="6:00">6:00</asp:ListItem>

                                                                                 <asp:ListItem Value="6:05">6:05</asp:ListItem>
                                                                                <asp:ListItem Value="6:10">6:10</asp:ListItem>
                                                                                <asp:ListItem Value="6:15">6:15</asp:ListItem>
                                                                                <asp:ListItem Value="6:20">6:20</asp:ListItem>
                                                                                <asp:ListItem Value="6:25">6:25</asp:ListItem>
                                                                                <asp:ListItem Value="6:30">6:30</asp:ListItem>
                                                                                <asp:ListItem Value="6:35">6:35</asp:ListItem>
                                                                                <asp:ListItem Value="6:40">6:40</asp:ListItem>
                                                                                <asp:ListItem Value="6:45">6:45</asp:ListItem>
                                                                                <asp:ListItem Value="6:50">6:50</asp:ListItem>
                                                                                <asp:ListItem Value="6:55">6:55</asp:ListItem>
                                                                                <asp:ListItem Value="7:00">7:00</asp:ListItem>

                                                                                 <asp:ListItem Value="7:05">7:05</asp:ListItem>
                                                                                <asp:ListItem Value="7:10">7:10</asp:ListItem>
                                                                                <asp:ListItem Value="7:15">7:15</asp:ListItem>
                                                                                <asp:ListItem Value="7:20">7:20</asp:ListItem>
                                                                                <asp:ListItem Value="7:25">7:25</asp:ListItem>
                                                                                <asp:ListItem Value="7:30">7:30</asp:ListItem>
                                                                                <asp:ListItem Value="7:35">7:35</asp:ListItem>
                                                                                <asp:ListItem Value="7:40">7:40</asp:ListItem>
                                                                                <asp:ListItem Value="7:45">7:45</asp:ListItem>
                                                                                <asp:ListItem Value="7:50">7:50</asp:ListItem>
                                                                                <asp:ListItem Value="7:55">7:55</asp:ListItem>
                                                                                <asp:ListItem Value="8:00">8:00</asp:ListItem>

                                                                                 <asp:ListItem Value="8:05">8:05</asp:ListItem>
                                                                                <asp:ListItem Value="8:10">8:10</asp:ListItem>
                                                                                <asp:ListItem Value="8:15">8:15</asp:ListItem>
                                                                                <asp:ListItem Value="8:20">8:20</asp:ListItem>
                                                                                <asp:ListItem Value="8:25">8:25</asp:ListItem>
                                                                                <asp:ListItem Value="8:30">8:30</asp:ListItem>
                                                                                <asp:ListItem Value="8:35">8:35</asp:ListItem>
                                                                                <asp:ListItem Value="8:40">8:40</asp:ListItem>
                                                                                <asp:ListItem Value="8:45">8:45</asp:ListItem>
                                                                                <asp:ListItem Value="8:50">8:50</asp:ListItem>
                                                                                <asp:ListItem Value="8:55">8:55</asp:ListItem>
                                                                                <asp:ListItem Value="9:00">9:00</asp:ListItem>

                                                                                 <asp:ListItem Value="9:05">9:05</asp:ListItem>
                                                                                <asp:ListItem Value="9:10">9:10</asp:ListItem>
                                                                                <asp:ListItem Value="9:15">9:15</asp:ListItem>
                                                                                <asp:ListItem Value="9:20">9:20</asp:ListItem>
                                                                                <asp:ListItem Value="9:25">9:25</asp:ListItem>
                                                                                <asp:ListItem Value="9:30">9:30</asp:ListItem>
                                                                                <asp:ListItem Value="9:35">9:35</asp:ListItem>
                                                                                <asp:ListItem Value="9:40">9:40</asp:ListItem>
                                                                                <asp:ListItem Value="9:45">9:45</asp:ListItem>
                                                                                <asp:ListItem Value="9:50">9:50</asp:ListItem>
                                                                                <asp:ListItem Value="9:55">9:55</asp:ListItem>
                                                                                <asp:ListItem Value="10:00">10:00</asp:ListItem>

                                                                                 <asp:ListItem Value="10:05">10:05</asp:ListItem>
                                                                                <asp:ListItem Value="10:10">10:10</asp:ListItem>
                                                                                <asp:ListItem Value="10:15">10:15</asp:ListItem>
                                                                                <asp:ListItem Value="10:20">10:20</asp:ListItem>
                                                                                <asp:ListItem Value="10:25">10:25</asp:ListItem>
                                                                                <asp:ListItem Value="10:30">10:30</asp:ListItem>
                                                                                <asp:ListItem Value="10:35">10:35</asp:ListItem>
                                                                                <asp:ListItem Value="10:40">10:40</asp:ListItem>
                                                                                <asp:ListItem Value="10:45">10:45</asp:ListItem>
                                                                                <asp:ListItem Value="10:50">10:50</asp:ListItem>
                                                                                <asp:ListItem Value="10:55">10:55</asp:ListItem>
                                                                                <asp:ListItem Value="11:00">11:00</asp:ListItem>

                                                                                 <asp:ListItem Value="11:05">11:05</asp:ListItem>
                                                                                <asp:ListItem Value="11:10">11:10</asp:ListItem>
                                                                                <asp:ListItem Value="11:15">11:15</asp:ListItem>
                                                                                <asp:ListItem Value="11:20">11:20</asp:ListItem>
                                                                                <asp:ListItem Value="11:25">11:25</asp:ListItem>
                                                                                <asp:ListItem Value="11:30">11:30</asp:ListItem>
                                                                                <asp:ListItem Value="11:35">11:35</asp:ListItem>
                                                                                <asp:ListItem Value="11:40">11:40</asp:ListItem>
                                                                                <asp:ListItem Value="11:45">11:45</asp:ListItem>
                                                                                <asp:ListItem Value="11:50">11:50</asp:ListItem>
                                                                                <asp:ListItem Value="11:55">11:55</asp:ListItem>
                                                                                

                                                                            </asp:DropDownList>
																		</div>
																	</div>
																	<div class="col-lg-4 col-md-6 col-sm-6 col-xs-12 tg-columnpadding">
																		<div class="form-group tg-formgroup">
																			  <asp:DropDownList ID="ddlLasttimeAP" CssClass=" form-control" runat="server">
                                                                                <asp:ListItem Selected="True" Value="PM"> PM </asp:ListItem>
                                                                                <asp:ListItem Value="AM">AM</asp:ListItem>
                                                                            </asp:DropDownList>
																		</div>
																	</div>
                                                                    <div class="col-lg-8 col-md-8 col-sm-12 col-xs-12 tg-columnpadding">
                                                                        <div class="form-group tg-formgroup">
                                                                            <asp:TextBox ID="txtAddress" placeholder="Address" Rows="4" TextMode="MultiLine" CssClass=" form-control" runat="server"></asp:TextBox>
                                                                        </div>
                                                                    </div>
                                                                    <div class="col-lg-4 col-md-6 col-sm-6 col-xs-12 tg-columnpadding">
                                                                        <div class="form-group tg-formgroup">
                                                                            <asp:TextBox ID="txtfee" placeholder="Fee" TextMode="Number"  CssClass=" form-control" runat="server"></asp:TextBox>
                                                                        </div>
                                                                    </div>
                                                                    <div class="col-lg-4 col-md-6 col-sm-6 col-xs-12 tg-columnpadding">
                                                                        <div class="form-group tg-formgroup">
                                                                            <asp:DropDownList ID="ddlPAY" runat="server" CssClass="form-control">
                                                                                <asp:ListItem Value="0" Selected="True">Select Payment</asp:ListItem>
                                                                                <asp:ListItem Value="FALSE">Pay in Doctor</asp:ListItem>
                                                                                <asp:ListItem Value="TRUE">Payfast</asp:ListItem>                                                                                
                                                                            </asp:DropDownList>
                                                                        </div>
                                                                    </div>
																	<div class="col-sm-8 col-xs-12 tg-columnpadding">
                                                                        <asp:Button ID="btnAddSchedul" OnClick="btnAddSchedul_Click" runat="server" CssClass="tg-btn" Text="Add Schedul" />
                                                                        <asp:Label ID="lblResult" Font-Bold="true" runat="server" ></asp:Label>
																	</div>
                                                                    <div class="col-lg-4 col-md-6 col-sm-6 col-xs-12 tg-columnpadding">
                                                                        <div class="form-group tg-formgroup">
                                                                            <asp:TextBox ID="txtDiscount" placeholder="Discount (0-100)%" TextMode="Number"  CssClass=" form-control" runat="server"></asp:TextBox>
                                                                        </div>
                                                                    </div>
																</div>
															</div>
														</div>
													</div>
												</fieldset>

												<fieldset>
													<div class="tg-appoinmentbox">
														<div class="tg-dateandtimeslots tg-tuesday">
															<div class="tg-datebox">
																<time datetime="2011-10-10">Saturday</time>
																<ul class="tg-btnadddelt">
																	<li><span><a href="#">Delete All Schedul</a></span></li>
																</ul>
															</div>
															<div class="tg-timeslots">
                                                                <asp:PlaceHolder ID="pnlSaturday" runat="server"></asp:PlaceHolder>																
															</div>
														</div>
													</div>
												</fieldset>

                                                <fieldset>
													<div class="tg-appoinmentbox">
														<div class="tg-dateandtimeslots tg-tuesday">
															<div class="tg-datebox">
																<time datetime="2011-10-10">Sunday</time>
																<ul class="tg-btnadddelt">
																	<li><span><a href="#">Delete All Schedul</a></span></li>
																</ul>
															</div>
															<div class="tg-timeslots">
                                                                <asp:PlaceHolder ID="pnlSunday" runat="server"></asp:PlaceHolder>																
															</div>
														</div>
													</div>
												</fieldset>
                                                 <fieldset>
													<div class="tg-appoinmentbox">
														<div class="tg-dateandtimeslots tg-tuesday">
															<div class="tg-datebox">
																<time datetime="2011-10-10">Monday</time>
																<ul class="tg-btnadddelt">
																	<li><span><a href="#">Delete All Schedul</a></span></li>
																</ul>
															</div>
															<div class="tg-timeslots">
                                                                <asp:PlaceHolder ID="pnlMonday" runat="server"></asp:PlaceHolder>																
															</div>
														</div>
													</div>
												</fieldset> <fieldset>
													<div class="tg-appoinmentbox">
														<div class="tg-dateandtimeslots tg-tuesday">
															<div class="tg-datebox">
																<time datetime="2011-10-10">Tuesday</time>
																<ul class="tg-btnadddelt">
																	<li><span><a href="#">Delete All Schedul</a></span></li>
																</ul>
															</div>
															<div class="tg-timeslots">
                                                                <asp:PlaceHolder ID="pnlTuesday" runat="server"></asp:PlaceHolder>																
															</div>
														</div>
													</div>
												</fieldset> <fieldset>
													<div class="tg-appoinmentbox">
														<div class="tg-dateandtimeslots tg-tuesday">
															<div class="tg-datebox">
																<time datetime="2011-10-10">Wednesday</time>
																<ul class="tg-btnadddelt">
																	<li><span><a href="#">Delete All Schedul</a></span></li>
																</ul>
															</div>
															<div class="tg-timeslots">
                                                                <asp:PlaceHolder ID="pnlWednesday" runat="server"></asp:PlaceHolder>																
															</div>
														</div>
													</div>
												</fieldset> 
                                                <fieldset>
													<div class="tg-appoinmentbox">
														<div class="tg-dateandtimeslots tg-tuesday">
															<div class="tg-datebox">
																<time datetime="2011-10-10">Thursday</time>
																<ul class="tg-btnadddelt">
																	<li><span><a href="#">Delete All Schedul</a></span></li>
																</ul>
															</div>
															<div class="tg-timeslots">
                                                                <asp:PlaceHolder ID="pnlThursday" runat="server"></asp:PlaceHolder>																
															</div>
														</div>
													</div>
												</fieldset>
                                                <fieldset>
													<div class="tg-appoinmentbox">
														<div class="tg-dateandtimeslots tg-tuesday">
															<div class="tg-datebox">
																<time datetime="2011-10-10">Friday</time>
																<ul class="tg-btnadddelt">
																	<li><span><a href="#">Delete All Schedul</a></span></li>
																</ul>
															</div>
															<div class="tg-timeslots">
                                                                <asp:PlaceHolder ID="pnlFriday" runat="server"></asp:PlaceHolder>																
															</div>
														</div>
													</div>
												</fieldset>
											</form>
										</div>
									</div>



                                    <div role="tabpanel" class="tab-pane fade in" id="sent">
										<div class="tg-dashboardbox">
										<div class="tg-dashboardboxtitle">
											<h2>Schedule Calcle List</h2>
										</div>
																				
											<fieldset>
												<div class="tg-appoinmentbox">
													<div class="tg-dateandtimeslots">
														<div class="tg-datebox">
															<time datetime="2011-10-10">Schedul Add</time>
														</div>
														<div class="tg-timeslots">

															<div class="row tg-rowmargin">
																<div class="col-lg-4 col-md-6 col-sm-6 col-xs-12 tg-columnpadding">
																	<div class="form-group tg-formgroup">
																		<span class="tg-inputicon tg-calendaricon">                                                                           
                                                                            <asp:TextBox ID="txtDate" CssClass="form-control tg-datepicker" placeholder="Schedul Cancle Date" runat="server"></asp:TextBox>
																		</span>
																	</div>
																</div>
																<div class="col-lg-8 col-md-6 col-sm-6 col-xs-12 tg-columnpadding">
																	<div class="form-group tg-formgroup">
                                                                        <asp:TextBox ID="txtReason" CssClass="form-control" placeholder="Schedul Cancle Reason" runat="server"></asp:TextBox>
																	</div>
																</div>
                                                                <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
                                                                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                                                                    <ContentTemplate>
                                                                        <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12 tg-columnpadding">
                                                                            <div class="form-group tg-formgroup">
                                                                                <asp:DropDownList ID="ddlWeek_Cancle" AutoPostBack="true" OnTextChanged="ddlWeek_Cancle_TextChanged" CssClass="form-control" runat="server">
                                                                                    <asp:ListItem Value="0">Select Week for Cancle Schedul</asp:ListItem>
                                                                                    <asp:ListItem Value="Saturday">Saturday</asp:ListItem>
                                                                                    <asp:ListItem Value="Sunday">Sunday</asp:ListItem>
                                                                                    <asp:ListItem Value="Monday">Monday</asp:ListItem>
                                                                                    <asp:ListItem Value="Tuesday">Tuesday</asp:ListItem>
                                                                                    <asp:ListItem Value="Wednesday">Wednesday</asp:ListItem>
                                                                                    <asp:ListItem Value="Thursday">Thursday</asp:ListItem>
                                                                                    <asp:ListItem Value="Friday">Friday</asp:ListItem>
                                                                                </asp:DropDownList>
                                                                            </div>
                                                                        </div>
                                                                        <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12 tg-columnpadding">
                                                                            <div class="form-group tg-formgroup">
                                                                                <asp:DropDownList ID="ddlSchedul" CssClass="form-control" runat="server"></asp:DropDownList>
                                                                            </div>
                                                                        </div>
                                                                    </ContentTemplate>
                                                                </asp:UpdatePanel>
																<div class="col-sm-12 col-xs-12 tg-columnpadding">
                                                                    <asp:Button ID="btnAddDate" OnClick="btnAddDate_Click" CssClass="tg-btn" runat="server" Text="Add Date" /><asp:Label ID="lblCancleResult" runat="server" Font-Bold="true" ></asp:Label>
																</div>
															</div>

                                                               
														</div>
													</div>
												</div>
											</fieldset>
											<fieldset>
												<div class="tg-appoinmentbox">
													<div class="tg-dateandtimeslots tg-tuesday">
														<div class="tg-datebox">
															<time datetime="2011-10-10">Show Date</time>															
														</div>
														<div class="tg-timeslots">
                                                            <asp:GridView ID="GridView1" Width="100%" GridLines="None"  runat="server" DataSourceID="SqlDataSource1" AutoGenerateColumns="False" DataKeyNames="ID" AllowPaging="True" AllowSorting="True" CellPadding="4" ForeColor="#333333">
                                                                <AlternatingRowStyle BackColor="White"></AlternatingRowStyle>
                                                                <Columns>
                                                                    <asp:CommandField ShowEditButton="True" HeaderText="Edit/Delete" ShowDeleteButton="True"></asp:CommandField>
                                                                    <asp:TemplateField HeaderText="Cancle Date" SortExpression="NoSchedulDate">
                                                                        <ItemTemplate>
                                                                            <asp:Label runat="server" Text='<%# Bind("NoSchedulDate") %>' ID="Label1"></asp:Label>
                                                                        </ItemTemplate>
                                                                    </asp:TemplateField>

                                                                    <asp:BoundField DataField="Reasion" HeaderText="Reasion" SortExpression="Reasion"></asp:BoundField>
                                                                    <asp:TemplateField HeaderText="SchedulID" SortExpression="SchedulID">
                                                                        <ItemTemplate>
                                                                            <asp:Label runat="server" Text='<%# Bind("SchedulID") %>' ID="Label2"></asp:Label>
                                                                        </ItemTemplate>
                                                                    </asp:TemplateField>
                                                                    <asp:TemplateField HeaderText="week" SortExpression="week">
                                                                        <ItemTemplate>
                                                                            <asp:Label runat="server" Text='<%# Bind("week") %>' ID="Label3"></asp:Label>
                                                                        </ItemTemplate>
                                                                    </asp:TemplateField>
                                                                </Columns>
                                                                <EditRowStyle BackColor="#2461BF"></EditRowStyle>

                                                                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White"></FooterStyle>

                                                                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White"></HeaderStyle>

                                                                <PagerStyle HorizontalAlign="Center" BackColor="#2461BF" ForeColor="White"></PagerStyle>

                                                                <RowStyle BackColor="#EFF3FB"></RowStyle>

                                                                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333"></SelectedRowStyle>

                                                                <SortedAscendingCellStyle BackColor="#F5F7FB"></SortedAscendingCellStyle>

                                                                <SortedAscendingHeaderStyle BackColor="#6D95E1"></SortedAscendingHeaderStyle>

                                                                <SortedDescendingCellStyle BackColor="#E9EBEF"></SortedDescendingCellStyle>

                                                                <SortedDescendingHeaderStyle BackColor="#4870BE"></SortedDescendingHeaderStyle>
                                                            </asp:GridView>

                                                            <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:DoctorDBCS %>' SelectCommand="SELECT * FROM [DoctorSchedulDateCancle] WHERE ([Doctor_ID] = @Doctor_ID)" DeleteCommand="DELETE FROM [DoctorSchedulDateCancle] WHERE [ID] = @ID" InsertCommand="INSERT INTO [DoctorSchedulDateCancle] ([Doctor_ID], [NoSchedulDate], [Reasion], [Schedul], [SchedulID], [week]) VALUES (@Doctor_ID, @NoSchedulDate, @Reasion, @Schedul, @SchedulID, @week)" UpdateCommand="UPDATE [DoctorSchedulDateCancle] SET [Doctor_ID] = @Doctor_ID, [NoSchedulDate] = @NoSchedulDate, [Reasion] = @Reasion, [Schedul] = @Schedul, [SchedulID] = @SchedulID, [week] = @week WHERE [ID] = @ID">
                                                                <DeleteParameters>
                                                                    <asp:Parameter Name="ID" Type="Int32"></asp:Parameter>
                                                                </DeleteParameters>
                                                                <InsertParameters>
                                                                    <asp:Parameter Name="Doctor_ID" Type="String"></asp:Parameter>
                                                                    <asp:Parameter Name="NoSchedulDate" Type="String"></asp:Parameter>
                                                                    <asp:Parameter Name="Reasion" Type="String"></asp:Parameter>
                                                                    <asp:Parameter Name="Schedul" Type="String"></asp:Parameter>
                                                                    <asp:Parameter Name="SchedulID" Type="String"></asp:Parameter>
                                                                    <asp:Parameter Name="week" Type="String"></asp:Parameter>
                                                                </InsertParameters>
                                                                <SelectParameters>
                                                                    <asp:SessionParameter SessionField="DoctorID" Name="Doctor_ID" Type="String"></asp:SessionParameter>
                                                                </SelectParameters>
                                                                <UpdateParameters>
                                                                    <asp:Parameter Name="Doctor_ID" Type="String"></asp:Parameter>
                                                                    <asp:Parameter Name="NoSchedulDate" Type="String"></asp:Parameter>
                                                                    <asp:Parameter Name="Reasion" Type="String"></asp:Parameter>
                                                                    <asp:Parameter Name="Schedul" Type="String"></asp:Parameter>
                                                                    <asp:Parameter Name="SchedulID" Type="String"></asp:Parameter>
                                                                    <asp:Parameter Name="week" Type="String"></asp:Parameter>
                                                                    <asp:Parameter Name="ID" Type="Int32"></asp:Parameter>
                                                                </UpdateParameters>
                                                            </asp:SqlDataSource>
                                                        </div>
													</div>
												</div>
											</fieldset>
										
									</div>
							</div>





								</div>
							</div>
						</div>

</asp:Content>
