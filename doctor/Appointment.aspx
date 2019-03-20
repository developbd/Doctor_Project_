<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="Appointment.aspx.cs" Inherits="doctor.Appointment" %>
<%@ Register Src="~/scarchcontrol.ascx" TagPrefix="uc1" TagName="scarchcontrol" %>
<%@ Register Src="~/Advertisement.ascx" TagPrefix="uc1" TagName="Advertisement" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <uc1:scarchcontrol runat="server" ID="scarchcontrol" />
		
		<main id="tg-main" class="tg-main tg-haslayout">
			<div class="container">
				<div class="row">
					<div id="tg-twocolumns" class="tg-twocolumns">
						<div class="col-md-9 col-sm-8 col-xs-12">
							<div id="tg-content" class="tg-content">
								<div class="tg-directpost tg-detailpage">
									<figure class="tg-directpostimg">
										<a href="#">
                                            <asp:Image ID="DoctorImage"  runat="server" />
										</a>
										<figcaption>
											<a class="tg-usericon tg-iconfeatured" href="#">
												<em class="tg-usericonholder">
													<i class="fa fa-bolt"></i>
													<span>featured</span>
												</em>
											</a>
											<a class="tg-usericon tg-iconvarified" href="#">
												<em class="tg-usericonholder">
													<i class="fa fa-shield"></i>
													<span>varified</span>
												</em>
											</a>
										</figcaption>
									</figure>
									<div class="tg-directinfo">
										<div class="tg-directposthead">
											<h3><a href="#">
                                                <asp:Label ID="lblDoctorName" runat="server"></asp:Label></a></h3>
											<div class="tg-subjects"><asp:Label ID="lblDoctorCategory" runat="server"></asp:Label></div>
                                            <div class="tg-subjects"><asp:Label ID="lblDoctorQualification" runat="server"></asp:Label></div>
										</div>
										<div class="tg-description">
											<p><asp:Label ID="lblDoctorDescription" runat="server"></asp:Label></p>
										</div>
										<div class="tg-socialarea">
											<span>share:</span>
											<ul class="tg-socialsharewithtext">
                                                <asp:PlaceHolder ID="pnlShare" runat="server"></asp:PlaceHolder>
											</ul>
										</div>
									</div>
					
									<section class="tg-section">
										<div class="tg-detailpagetabs">
											<ul class="tg-navdetailpagetabs" role="tablist">
												<li role="presentation" class="active">
													<a href="#services" aria-controls="services" role="tab" data-toggle="tab">Schedul</a>
												</li>
												<%--<li role="presentation">
													<a href="#reviews" aria-controls="reviews" role="tab" data-toggle="tab">Reviews</a>
												</li>												
												<li role="presentation">
													<a href="#photos" aria-controls="photos" role="tab" data-toggle="tab">Photos</a>
												</li>
												<li role="presentation">
													<a href="#askquestion" aria-controls="askquestion" role="tab" data-toggle="tab">Ask Question</a>
												</li>--%>
											</ul>

											<div class="tab-content tg-contentdetailpage">
												<div role="tabpanel" class="tab-pane tg-services fade in active" id="services">
													<div class="tg-box">
														<div class="tg-tabtitle">
															<h3>services</h3>
															<h4>Fee Per Patient</h4>
														</div>
														<div id="tg-servicesfeecollapse" class="tg-servicesfeecollapse">															
															<h3 class="fa fa-angle-down">Saturday &nbsp;&nbsp;<b><sup><i class="fa fa-calendar"></i> <asp:Label ID="lblSatureday" runat="server" ></asp:Label></sup></b></h3>
															<div class="tg-collapsecontent">
																<ul>
                                                                    <asp:PlaceHolder ID="pnlSaturday" runat="server"></asp:PlaceHolder>																	
																</ul>
															</div>
															<h3 class="fa fa-angle-down">Sunday &nbsp;&nbsp;<b><sup><i class="fa fa-calendar"></i> <asp:Label ID="lblSunday" runat="server" ></asp:Label></sup></b></h3>
															<div class="tg-collapsecontent">
																<ul>
                                                                    <asp:PlaceHolder ID="pnlSunday" runat="server"></asp:PlaceHolder>																	
																</ul>
															</div>
                                                            	<h3 class="fa fa-angle-down">Monday &nbsp;&nbsp;<b><sup><i class="fa fa-calendar"></i> <asp:Label ID="lblMonday" runat="server" ></asp:Label></sup></b></h3>
															<div class="tg-collapsecontent">
																<ul>
                                                                    <asp:PlaceHolder ID="pnlMonday" runat="server"></asp:PlaceHolder>																	
																</ul>
															</div>
                                                            	<h3 class="fa fa-angle-down">Tuesday &nbsp;&nbsp;<b><sup><i class="fa fa-calendar"></i> <asp:Label ID="lblTusday" runat="server" ></asp:Label></sup></b></h3>
															<div class="tg-collapsecontent">
																<ul>
                                                                    <asp:PlaceHolder ID="pnlTuesday" runat="server"></asp:PlaceHolder>																	
																</ul>
															</div>
                                                            	<h3 class="fa fa-angle-down">Wednesday &nbsp;&nbsp;<b><sup><i class="fa fa-calendar"></i> <asp:Label ID="lblWetnesday" runat="server" ></asp:Label></sup></b></h3>
															<div class="tg-collapsecontent">
																<ul>
                                                                    <asp:PlaceHolder ID="pnlWednesday" runat="server"></asp:PlaceHolder>																	
																</ul>
															</div>
                                                            	<h3 class="fa fa-angle-down">Thursday &nbsp;&nbsp;<b><sup><i class="fa fa-calendar"></i> <asp:Label ID="lblThusday" runat="server" ></asp:Label></sup></b></h3>
															<div class="tg-collapsecontent">
																<ul>
                                                                    <asp:PlaceHolder ID="pnlThursday" runat="server"></asp:PlaceHolder>																	
																</ul>
															</div>
                                                            	<h3 class="fa fa-angle-down">Friday &nbsp;&nbsp;<b><sup><i class="fa fa-calendar"></i> <asp:Label ID="lblFriday" runat="server" ></asp:Label></sup></b></h3>
															<div class="tg-collapsecontent">
																<ul>
                                                                    <asp:PlaceHolder ID="pnlFriday" runat="server"></asp:PlaceHolder>																
																</ul>
															</div>
														</div>
													</div>
												</div>
												<div role="tabpanel" class="tab-pane tg-reviews fade" id="reviews">
													<div class="tg-box">
														<div class="tg-tabtitle">
															<h2>Patient’s Feedback</h2>
														</div>														
														<div class="tg-patientfeedbacks">															
															<div class="tg-patientfeedback">
																<div class="tg-patientfeedbackbox">
																	<figure>
																		<img src="images/thumbnails/img-09.jpg" alt="image description">
																		<figcaption>
																			<a href="#"><i class="fa fa-reply "></i></a>
																		</figcaption>
																	</figure>
																	<div class="tg-patientfeedbackcontent">
																		<div class="tg-contenthead">
																			<div class="tg-leftbox">
																				<div class="tg-patientname">
																					<h4><a href="#">Sensation &amp; Pain in PMT</a></h4>
																				</div>
																				<ul class="tg-metadata">
																					<li><a href="#">Edward Coldiron</a></li>
																					<li><a href="#">10 Min Ago</a></li>
																				</ul>
																			</div>
																			<div class="tg-rightbox">
																				<ul class="tg-metadata">
																					<li>
																						<a href="#">
																							<i class="fa fa-thumbs-o-up tg-tooltip" data-toggle="tooltip" data-placement="top" title="like"></i>
																						</a>
																					</li>
																					<li>
																						<a href="#">
																							<i class="fa fa-thumbs-o-down tg-tooltip tg-dislike" data-toggle="tooltip" data-placement="top" title="dislike"></i>
																						</a>
																					</li>
																					<li>
																						<span class="tg-stars"><span></span></span>
																						<div class="tg-overallragingarea">
																							<i class="fa fa-exclamation-circle"></i>
																							<div class="tg-overallraging">
																								<ul class="tg-servicesrating">
																									<li>
																										<span class="tg-stars"><span></span></span>
																										<em>Ease of Appointment</em>
																									</li>
																									<li>
																										<span class="tg-stars"><span></span></span>
																										<em>Accurate Diagnosis</em>
																									</li>
																									<li>
																										<span class="tg-stars"><span></span></span>
																										<em>Follows Up After Visit</em>
																									</li>
																									<li>
																										<span class="tg-stars"><span></span></span>
																										<em>Promptness</em>
																									</li>
																									<li>
																										<span class="tg-stars"><span></span></span>
																										<em>Bedside Manner</em>
																									</li>
																									<li>
																										<span class="tg-stars"><span></span></span>
																										<em>Medical Knowledge</em>
																									</li>
																									<li>
																										<span class="tg-stars"><span></span></span>
																										<em>Courteous Staff</em>
																									</li>
																									<li>
																										<span class="tg-stars"><span></span></span>
																										<em>Spends Time with Me</em>
																									</li>
																								</ul>
																							</div>
																						</div>
																					</li>
																				</ul>
																			</div>
																		</div>
																		<div class="tg-description">
																			<p>Cliqua enim ad minim veniam quis nostrud exercitation ullamco laboris nisi ut aliquip modoia aiat irure dolor in reprehenderit in.</p>
																		</div>
																	</div>
																</div>
															</div>
															<div class="tg-patientfeedback">
																<div class="tg-patientfeedbackbox">
																	<figure>
																		<img src="images/thumbnails/img-10.jpg" alt="image description">
																		<figcaption>
																			<a href="#"><i class="fa fa-reply "></i></a>
																		</figcaption>
																	</figure>
																	<div class="tg-patientfeedbackcontent">
																		<div class="tg-contenthead">
																			<div class="tg-leftbox">
																				<div class="tg-patientname">
																					<h4><a href="#">Sensation &amp; Pain in PMT</a></h4>
																				</div>
																				<ul class="tg-metadata">
																					<li><a href="#">Edward Coldiron</a></li>
																					<li><a href="#">10 Min Ago</a></li>
																				</ul>
																			</div>
																			<div class="tg-rightbox">
																				<ul class="tg-metadata">
																					<li>
																						<a href="#">
																							<i class="fa fa-thumbs-o-up tg-tooltip" data-toggle="tooltip" data-placement="top" title="like"></i>
																						</a>
																					</li>
																					<li>
																						<a href="#">
																							<i class="fa fa-thumbs-o-down tg-tooltip tg-dislike" data-toggle="tooltip" data-placement="top" title="dislike"></i>
																						</a>
																					</li>
																					<li>
																						<span class="tg-stars"><span></span></span>
																						<div class="tg-overallragingarea">
																							<i class="fa fa-exclamation-circle"></i>
																							<div class="tg-overallraging">
																								<ul class="tg-servicesrating">
																									<li>
																										<span class="tg-stars"><span></span></span>
																										<em>Ease of Appointment</em>
																									</li>
																									<li>
																										<span class="tg-stars"><span></span></span>
																										<em>Accurate Diagnosis</em>
																									</li>
																									<li>
																										<span class="tg-stars"><span></span></span>
																										<em>Follows Up After Visit</em>
																									</li>
																									<li>
																										<span class="tg-stars"><span></span></span>
																										<em>Promptness</em>
																									</li>
																									<li>
																										<span class="tg-stars"><span></span></span>
																										<em>Bedside Manner</em>
																									</li>
																									<li>
																										<span class="tg-stars"><span></span></span>
																										<em>Medical Knowledge</em>
																									</li>
																									<li>
																										<span class="tg-stars"><span></span></span>
																										<em>Courteous Staff</em>
																									</li>
																									<li>
																										<span class="tg-stars"><span></span></span>
																										<em>Spends Time with Me</em>
																									</li>
																								</ul>
																							</div>
																						</div>
																					</li>
																				</ul>
																			</div>
																		</div>
																		<div class="tg-description">
																			<p>Cliqua enim ad minim veniam quis nostrud exercitation ullamco laboris nisi ut aliquip modoia aiat irure dolor in reprehenderit in.</p>
																		</div>
																	</div>
																</div>
															</div>
															<div class="tg-patientfeedback">
																<div class="tg-patientfeedbackbox">
																	<figure>
																		<img src="images/thumbnails/img-11.jpg" alt="image description">
																		<figcaption>
																			<a href="#"><i class="fa fa-reply "></i></a>
																		</figcaption>
																	</figure>
																	<div class="tg-patientfeedbackcontent">
																		<div class="tg-contenthead">
																			<div class="tg-leftbox">
																				<div class="tg-patientname">
																					<h4><a href="#">Sensation &amp; Pain in PMT</a></h4>
																				</div>
																				<ul class="tg-metadata">
																					<li><a href="#">Edward Coldiron</a></li>
																					<li><a href="#">10 Min Ago</a></li>
																				</ul>
																			</div>
																			<div class="tg-rightbox">
																				<ul class="tg-metadata">
																					<li>
																						<a href="#">
																							<i class="fa fa-thumbs-o-up tg-tooltip" data-toggle="tooltip" data-placement="top" title="like"></i>
																						</a>
																					</li>
																					<li>
																						<a href="#">
																							<i class="fa fa-thumbs-o-down tg-tooltip tg-dislike" data-toggle="tooltip" data-placement="top" title="dislike"></i>
																						</a>
																					</li>
																					<li>
																						<span class="tg-stars"><span></span></span>
																						<div class="tg-overallragingarea">
																							<i class="fa fa-exclamation-circle"></i>
																							<div class="tg-overallraging">
																								<ul class="tg-servicesrating">
																									<li>
																										<span class="tg-stars"><span></span></span>
																										<em>Ease of Appointment</em>
																									</li>
																									<li>
																										<span class="tg-stars"><span></span></span>
																										<em>Accurate Diagnosis</em>
																									</li>
																									<li>
																										<span class="tg-stars"><span></span></span>
																										<em>Follows Up After Visit</em>
																									</li>
																									<li>
																										<span class="tg-stars"><span></span></span>
																										<em>Promptness</em>
																									</li>
																									<li>
																										<span class="tg-stars"><span></span></span>
																										<em>Bedside Manner</em>
																									</li>
																									<li>
																										<span class="tg-stars"><span></span></span>
																										<em>Medical Knowledge</em>
																									</li>
																									<li>
																										<span class="tg-stars"><span></span></span>
																										<em>Courteous Staff</em>
																									</li>
																									<li>
																										<span class="tg-stars"><span></span></span>
																										<em>Spends Time with Me</em>
																									</li>
																								</ul>
																							</div>
																						</div>
																					</li>
																				</ul>
																			</div>
																		</div>
																		<div class="tg-description">
																			<p>Cliqua enim ad minim veniam quis nostrud exercitation ullamco laboris nisi ut aliquip modoia aiat irure dolor in reprehenderit in.</p>
																		</div>
																	</div>
																</div>
															</div>
															<div class="tg-patientfeedback">
																<div class="tg-patientfeedbackbox">
																	<figure>
																		<img src="images/thumbnails/img-12.jpg" alt="image description">
																		<figcaption>
																			<a href="#"><i class="fa fa-reply "></i></a>
																		</figcaption>
																	</figure>
																	<div class="tg-patientfeedbackcontent">
																		<div class="tg-contenthead">
																			<div class="tg-leftbox">
																				<div class="tg-patientname">
																					<h4><a href="#">Sensation &amp; Pain in PMT</a></h4>
																				</div>
																				<ul class="tg-metadata">
																					<li><a href="#">Edward Coldiron</a></li>
																					<li><a href="#">10 Min Ago</a></li>
																				</ul>
																			</div>
																			<div class="tg-rightbox">
																				<ul class="tg-metadata">
																					<li>
																						<a href="#">
																							<i class="fa fa-thumbs-o-up tg-tooltip" data-toggle="tooltip" data-placement="top" title="like"></i>
																						</a>
																					</li>
																					<li>
																						<a href="#">
																							<i class="fa fa-thumbs-o-down tg-tooltip tg-dislike" data-toggle="tooltip" data-placement="top" title="dislike"></i>
																						</a>
																					</li>
																					<li>
																						<span class="tg-stars"><span></span></span>
																						<div class="tg-overallragingarea">
																							<i class="fa fa-exclamation-circle"></i>
																							<div class="tg-overallraging">
																								<ul class="tg-servicesrating">
																									<li>
																										<span class="tg-stars"><span></span></span>
																										<em>Ease of Appointment</em>
																									</li>
																									<li>
																										<span class="tg-stars"><span></span></span>
																										<em>Accurate Diagnosis</em>
																									</li>
																									<li>
																										<span class="tg-stars"><span></span></span>
																										<em>Follows Up After Visit</em>
																									</li>
																									<li>
																										<span class="tg-stars"><span></span></span>
																										<em>Promptness</em>
																									</li>
																									<li>
																										<span class="tg-stars"><span></span></span>
																										<em>Bedside Manner</em>
																									</li>
																									<li>
																										<span class="tg-stars"><span></span></span>
																										<em>Medical Knowledge</em>
																									</li>
																									<li>
																										<span class="tg-stars"><span></span></span>
																										<em>Courteous Staff</em>
																									</li>
																									<li>
																										<span class="tg-stars"><span></span></span>
																										<em>Spends Time with Me</em>
																									</li>
																								</ul>
																							</div>
																						</div>
																					</li>
																				</ul>
																			</div>
																		</div>
																		<div class="tg-description">
																			<p>Cliqua enim ad minim veniam quis nostrud exercitation ullamco laboris nisi ut aliquip modoia aiat irure dolor in reprehenderit in.</p>
																		</div>
																	</div>
																</div>
															</div>
															<div class="tg-patientfeedback">
																<div class="tg-patientfeedbackbox">
																	<figure>
																		<img src="images/thumbnails/img-13.jpg" alt="image description">
																		<figcaption>
																			<a href="#"><i class="fa fa-reply "></i></a>
																		</figcaption>
																	</figure>
																	<div class="tg-patientfeedbackcontent">
																		<div class="tg-contenthead">
																			<div class="tg-leftbox">
																				<div class="tg-patientname">
																					<h4><a href="#">Sensation &amp; Pain in PMT</a></h4>
																				</div>
																				<ul class="tg-metadata">
																					<li><a href="#">Edward Coldiron</a></li>
																					<li><a href="#">10 Min Ago</a></li>
																				</ul>
																			</div>
																			<div class="tg-rightbox">
																				<ul class="tg-metadata">
																					<li>
																						<a href="#">
																							<i class="fa fa-thumbs-o-up tg-tooltip" data-toggle="tooltip" data-placement="top" title="like"></i>
																						</a>
																					</li>
																					<li>
																						<a href="#">
																							<i class="fa fa-thumbs-o-down tg-tooltip tg-dislike" data-toggle="tooltip" data-placement="top" title="dislike"></i>
																						</a>
																					</li>
																					<li>
																						<span class="tg-stars"><span></span></span>
																						<div class="tg-overallragingarea">
																							<i class="fa fa-exclamation-circle"></i>
																							<div class="tg-overallraging">
																								<ul class="tg-servicesrating">
																									<li>
																										<span class="tg-stars"><span></span></span>
																										<em>Ease of Appointment</em>
																									</li>
																									<li>
																										<span class="tg-stars"><span></span></span>
																										<em>Accurate Diagnosis</em>
																									</li>
																									<li>
																										<span class="tg-stars"><span></span></span>
																										<em>Follows Up After Visit</em>
																									</li>
																									<li>
																										<span class="tg-stars"><span></span></span>
																										<em>Promptness</em>
																									</li>
																									<li>
																										<span class="tg-stars"><span></span></span>
																										<em>Bedside Manner</em>
																									</li>
																									<li>
																										<span class="tg-stars"><span></span></span>
																										<em>Medical Knowledge</em>
																									</li>
																									<li>
																										<span class="tg-stars"><span></span></span>
																										<em>Courteous Staff</em>
																									</li>
																									<li>
																										<span class="tg-stars"><span></span></span>
																										<em>Spends Time with Me</em>
																									</li>
																								</ul>
																							</div>
																						</div>
																					</li>
																				</ul>
																			</div>
																		</div>
																		<div class="tg-description">
																			<p>Cliqua enim ad minim veniam quis nostrud exercitation ullamco laboris nisi ut aliquip modoia aiat irure dolor in reprehenderit in.</p>
																		</div>
																	</div>
																</div>
															</div>
															<div class="tg-patientfeedback">
																<div class="tg-patientfeedbackbox">
																	<figure>
																		<img src="images/thumbnails/img-07.jpg" alt="image description">
																		<figcaption>
																			<a href="#"><i class="fa fa-reply "></i></a>
																		</figcaption>
																	</figure>
																	<div class="tg-patientfeedbackcontent">
																		<div class="tg-contenthead">
																			<div class="tg-leftbox">
																				<div class="tg-patientname">
																					<h4><a href="#">Sensation &amp; Pain in PMT</a></h4>
																				</div>
																				<ul class="tg-metadata">
																					<li><a href="#">Edward Coldiron</a></li>
																					<li><a href="#">10 Min Ago</a></li>
																				</ul>
																			</div>
																			<div class="tg-rightbox">
																				<ul class="tg-metadata">
																					<li>
																						<a href="#">
																							<i class="fa fa-thumbs-o-up tg-tooltip" data-toggle="tooltip" data-placement="top" title="like"></i>
																						</a>
																					</li>
																					<li>
																						<a href="#">
																							<i class="fa fa-thumbs-o-down tg-tooltip tg-dislike" data-toggle="tooltip" data-placement="top" title="dislike"></i>
																						</a>
																					</li>
																					<li>
																						<span class="tg-stars"><span></span></span>
																						<div class="tg-overallragingarea">
																							<i class="fa fa-exclamation-circle"></i>
																							<div class="tg-overallraging">
																								<ul class="tg-servicesrating">
																									<li>
																										<span class="tg-stars"><span></span></span>
																										<em>Ease of Appointment</em>
																									</li>
																									<li>
																										<span class="tg-stars"><span></span></span>
																										<em>Accurate Diagnosis</em>
																									</li>
																									<li>
																										<span class="tg-stars"><span></span></span>
																										<em>Follows Up After Visit</em>
																									</li>
																									<li>
																										<span class="tg-stars"><span></span></span>
																										<em>Promptness</em>
																									</li>
																									<li>
																										<span class="tg-stars"><span></span></span>
																										<em>Bedside Manner</em>
																									</li>
																									<li>
																										<span class="tg-stars"><span></span></span>
																										<em>Medical Knowledge</em>
																									</li>
																									<li>
																										<span class="tg-stars"><span></span></span>
																										<em>Courteous Staff</em>
																									</li>
																									<li>
																										<span class="tg-stars"><span></span></span>
																										<em>Spends Time with Me</em>
																									</li>
																								</ul>
																							</div>
																						</div>
																					</li>
																				</ul>
																			</div>
																		</div>
																		<div class="tg-description">
																			<p>Cliqua enim ad minim veniam quis nostrud exercitation ullamco laboris nisi ut aliquip modoia aiat irure dolor in reprehenderit in.</p>
																		</div>
																	</div>
																</div>
															</div>
															<div class="tg-patientfeedback">
																<div class="tg-patientfeedbackbox">
																	<figure>
																		<img src="images/thumbnails/img-08.jpg" alt="image description">
																		<figcaption>
																			<a href="#"><i class="fa fa-reply "></i></a>
																		</figcaption>
																	</figure>
																	<div class="tg-patientfeedbackcontent">
																		<div class="tg-contenthead">
																			<div class="tg-leftbox">
																				<div class="tg-patientname">
																					<h4><a href="#">Sensation &amp; Pain in PMT</a></h4>
																				</div>
																				<ul class="tg-metadata">
																					<li><a href="#">Edward Coldiron</a></li>
																					<li><a href="#">10 Min Ago</a></li>
																				</ul>
																			</div>
																			<div class="tg-rightbox">
																				<ul class="tg-metadata">
																					<li>
																						<a href="#">
																							<i class="fa fa-thumbs-o-up tg-tooltip" data-toggle="tooltip" data-placement="top" title="like"></i>
																						</a>
																					</li>
																					<li>
																						<a href="#">
																							<i class="fa fa-thumbs-o-down tg-tooltip tg-dislike" data-toggle="tooltip" data-placement="top" title="dislike"></i>
																						</a>
																					</li>
																					<li>
																						<span class="tg-stars"><span></span></span>
																						<div class="tg-overallragingarea">
																							<i class="fa fa-exclamation-circle"></i>
																							<div class="tg-overallraging">
																								<ul class="tg-servicesrating">
																									<li>
																										<span class="tg-stars"><span></span></span>
																										<em>Ease of Appointment</em>
																									</li>
																									<li>
																										<span class="tg-stars"><span></span></span>
																										<em>Accurate Diagnosis</em>
																									</li>
																									<li>
																										<span class="tg-stars"><span></span></span>
																										<em>Follows Up After Visit</em>
																									</li>
																									<li>
																										<span class="tg-stars"><span></span></span>
																										<em>Promptness</em>
																									</li>
																									<li>
																										<span class="tg-stars"><span></span></span>
																										<em>Bedside Manner</em>
																									</li>
																									<li>
																										<span class="tg-stars"><span></span></span>
																										<em>Medical Knowledge</em>
																									</li>
																									<li>
																										<span class="tg-stars"><span></span></span>
																										<em>Courteous Staff</em>
																									</li>
																									<li>
																										<span class="tg-stars"><span></span></span>
																										<em>Spends Time with Me</em>
																									</li>
																								</ul>
																							</div>
																						</div>
																					</li>
																				</ul>
																			</div>
																		</div>
																		<div class="tg-description">
																			<p>Cliqua enim ad minim veniam quis nostrud exercitation ullamco laboris nisi ut aliquip modoia aiat irure dolor in reprehenderit in.</p>
																		</div>
																	</div>
																</div>
															</div>
															<div class="tg-patientfeedback">
																<div class="tg-patientfeedbackbox">
																	<figure>
																		<img src="images/thumbnails/img-09.jpg" alt="image description">
																		<figcaption>
																			<a href="#"><i class="fa fa-reply "></i></a>
																		</figcaption>
																	</figure>
																	<div class="tg-patientfeedbackcontent">
																		<div class="tg-contenthead">
																			<div class="tg-leftbox">
																				<div class="tg-patientname">
																					<h4><a href="#">Sensation &amp; Pain in PMT</a></h4>
																				</div>
																				<ul class="tg-metadata">
																					<li><a href="#">Edward Coldiron</a></li>
																					<li><a href="#">10 Min Ago</a></li>
																				</ul>
																			</div>
																			<div class="tg-rightbox">
																				<ul class="tg-metadata">
																					<li>
																						<a href="#">
																							<i class="fa fa-thumbs-o-up tg-tooltip" data-toggle="tooltip" data-placement="top" title="like"></i>
																						</a>
																					</li>
																					<li>
																						<a href="#">
																							<i class="fa fa-thumbs-o-down tg-tooltip tg-dislike" data-toggle="tooltip" data-placement="top" title="dislike"></i>
																						</a>
																					</li>
																					<li>
																						<span class="tg-stars"><span></span></span>
																						<div class="tg-overallragingarea">
																							<i class="fa fa-exclamation-circle"></i>
																							<div class="tg-overallraging">
																								<ul class="tg-servicesrating">
																									<li>
																										<span class="tg-stars"><span></span></span>
																										<em>Ease of Appointment</em>
																									</li>
																									<li>
																										<span class="tg-stars"><span></span></span>
																										<em>Accurate Diagnosis</em>
																									</li>
																									<li>
																										<span class="tg-stars"><span></span></span>
																										<em>Follows Up After Visit</em>
																									</li>
																									<li>
																										<span class="tg-stars"><span></span></span>
																										<em>Promptness</em>
																									</li>
																									<li>
																										<span class="tg-stars"><span></span></span>
																										<em>Bedside Manner</em>
																									</li>
																									<li>
																										<span class="tg-stars"><span></span></span>
																										<em>Medical Knowledge</em>
																									</li>
																									<li>
																										<span class="tg-stars"><span></span></span>
																										<em>Courteous Staff</em>
																									</li>
																									<li>
																										<span class="tg-stars"><span></span></span>
																										<em>Spends Time with Me</em>
																									</li>
																								</ul>
																							</div>
																						</div>
																					</li>
																				</ul>
																			</div>
																		</div>
																		<div class="tg-description">
																			<p>Cliqua enim ad minim veniam quis nostrud exercitation ullamco laboris nisi ut aliquip modoia aiat irure dolor in reprehenderit in.</p>
																		</div>
																	</div>
																</div>
															</div>
															<div class="tg-patientfeedback">
																<div class="tg-patientfeedbackbox">
																	<figure>
																		<img src="images/thumbnails/img-10.jpg" alt="image description">
																		<figcaption>
																			<a href="#"><i class="fa fa-reply "></i></a>
																		</figcaption>
																	</figure>
																	<div class="tg-patientfeedbackcontent">
																		<div class="tg-contenthead">
																			<div class="tg-leftbox">
																				<div class="tg-patientname">
																					<h4><a href="#">Sensation &amp; Pain in PMT</a></h4>
																				</div>
																				<ul class="tg-metadata">
																					<li><a href="#">Edward Coldiron</a></li>
																					<li><a href="#">10 Min Ago</a></li>
																				</ul>
																			</div>
																			<div class="tg-rightbox">
																				<ul class="tg-metadata">
																					<li>
																						<a href="#">
																							<i class="fa fa-thumbs-o-up tg-tooltip" data-toggle="tooltip" data-placement="top" title="like"></i>
																						</a>
																					</li>
																					<li>
																						<a href="#">
																							<i class="fa fa-thumbs-o-down tg-tooltip tg-dislike" data-toggle="tooltip" data-placement="top" title="dislike"></i>
																						</a>
																					</li>
																					<li>
																						<span class="tg-stars"><span></span></span>
																						<div class="tg-overallragingarea">
																							<i class="fa fa-exclamation-circle"></i>
																							<div class="tg-overallraging">
																								<ul class="tg-servicesrating">
																									<li>
																										<span class="tg-stars"><span></span></span>
																										<em>Ease of Appointment</em>
																									</li>
																									<li>
																										<span class="tg-stars"><span></span></span>
																										<em>Accurate Diagnosis</em>
																									</li>
																									<li>
																										<span class="tg-stars"><span></span></span>
																										<em>Follows Up After Visit</em>
																									</li>
																									<li>
																										<span class="tg-stars"><span></span></span>
																										<em>Promptness</em>
																									</li>
																									<li>
																										<span class="tg-stars"><span></span></span>
																										<em>Bedside Manner</em>
																									</li>
																									<li>
																										<span class="tg-stars"><span></span></span>
																										<em>Medical Knowledge</em>
																									</li>
																									<li>
																										<span class="tg-stars"><span></span></span>
																										<em>Courteous Staff</em>
																									</li>
																									<li>
																										<span class="tg-stars"><span></span></span>
																										<em>Spends Time with Me</em>
																									</li>
																								</ul>
																							</div>
																						</div>
																					</li>
																				</ul>
																			</div>
																		</div>
																		<div class="tg-description">
																			<p>Cliqua enim ad minim veniam quis nostrud exercitation ullamco laboris nisi ut aliquip modoia aiat irure dolor in reprehenderit in.</p>
																		</div>
																	</div>
																</div>
															</div>
															<div class="tg-patientfeedback">
																<div class="tg-patientfeedbackbox">
																	<figure>
																		<img src="images/thumbnails/img-11.jpg" alt="image description">
																		<figcaption>
																			<a href="#"><i class="fa fa-reply "></i></a>
																		</figcaption>
																	</figure>
																	<div class="tg-patientfeedbackcontent">
																		<div class="tg-contenthead">
																			<div class="tg-leftbox">
																				<div class="tg-patientname">
																					<h4><a href="#">Sensation &amp; Pain in PMT</a></h4>
																				</div>
																				<ul class="tg-metadata">
																					<li><a href="#">Edward Coldiron</a></li>
																					<li><a href="#">10 Min Ago</a></li>
																				</ul>
																			</div>
																			<div class="tg-rightbox">
																				<ul class="tg-metadata">
																					<li>
																						<a href="#">
																							<i class="fa fa-thumbs-o-up tg-tooltip" data-toggle="tooltip" data-placement="top" title="like"></i>
																						</a>
																					</li>
																					<li>
																						<a href="#">
																							<i class="fa fa-thumbs-o-down tg-tooltip tg-dislike" data-toggle="tooltip" data-placement="top" title="dislike"></i>
																						</a>
																					</li>
																					<li>
																						<span class="tg-stars"><span></span></span>
																						<div class="tg-overallragingarea">
																							<i class="fa fa-exclamation-circle"></i>
																							<div class="tg-overallraging">
																								<ul class="tg-servicesrating">
																									<li>
																										<span class="tg-stars"><span></span></span>
																										<em>Ease of Appointment</em>
																									</li>
																									<li>
																										<span class="tg-stars"><span></span></span>
																										<em>Accurate Diagnosis</em>
																									</li>
																									<li>
																										<span class="tg-stars"><span></span></span>
																										<em>Follows Up After Visit</em>
																									</li>
																									<li>
																										<span class="tg-stars"><span></span></span>
																										<em>Promptness</em>
																									</li>
																									<li>
																										<span class="tg-stars"><span></span></span>
																										<em>Bedside Manner</em>
																									</li>
																									<li>
																										<span class="tg-stars"><span></span></span>
																										<em>Medical Knowledge</em>
																									</li>
																									<li>
																										<span class="tg-stars"><span></span></span>
																										<em>Courteous Staff</em>
																									</li>
																									<li>
																										<span class="tg-stars"><span></span></span>
																										<em>Spends Time with Me</em>
																									</li>
																								</ul>
																							</div>
																						</div>
																					</li>
																				</ul>
																			</div>
																		</div>
																		<div class="tg-description">
																			<p>Cliqua enim ad minim veniam quis nostrud exercitation ullamco laboris nisi ut aliquip modoia aiat irure dolor in reprehenderit in.</p>
																		</div>
																	</div>
																</div>
															</div>
															<div class="tg-patientfeedback">
																<div class="tg-patientfeedbackbox">
																	<figure>
																		<img src="images/thumbnails/img-12.jpg" alt="image description">
																		<figcaption>
																			<a href="#"><i class="fa fa-reply "></i></a>
																		</figcaption>
																	</figure>
																	<div class="tg-patientfeedbackcontent">
																		<div class="tg-contenthead">
																			<div class="tg-leftbox">
																				<div class="tg-patientname">
																					<h4><a href="#">Sensation &amp; Pain in PMT</a></h4>
																				</div>
																				<ul class="tg-metadata">
																					<li><a href="#">Edward Coldiron</a></li>
																					<li><a href="#">10 Min Ago</a></li>
																				</ul>
																			</div>
																			<div class="tg-rightbox">
																				<ul class="tg-metadata">
																					<li>
																						<a href="#">
																							<i class="fa fa-thumbs-o-up tg-tooltip" data-toggle="tooltip" data-placement="top" title="like"></i>
																						</a>
																					</li>
																					<li>
																						<a href="#">
																							<i class="fa fa-thumbs-o-down tg-tooltip tg-dislike" data-toggle="tooltip" data-placement="top" title="dislike"></i>
																						</a>
																					</li>
																					<li>
																						<span class="tg-stars"><span></span></span>
																						<div class="tg-overallragingarea">
																							<i class="fa fa-exclamation-circle"></i>
																							<div class="tg-overallraging">
																								<ul class="tg-servicesrating">
																									<li>
																										<span class="tg-stars"><span></span></span>
																										<em>Ease of Appointment</em>
																									</li>
																									<li>
																										<span class="tg-stars"><span></span></span>
																										<em>Accurate Diagnosis</em>
																									</li>
																									<li>
																										<span class="tg-stars"><span></span></span>
																										<em>Follows Up After Visit</em>
																									</li>
																									<li>
																										<span class="tg-stars"><span></span></span>
																										<em>Promptness</em>
																									</li>
																									<li>
																										<span class="tg-stars"><span></span></span>
																										<em>Bedside Manner</em>
																									</li>
																									<li>
																										<span class="tg-stars"><span></span></span>
																										<em>Medical Knowledge</em>
																									</li>
																									<li>
																										<span class="tg-stars"><span></span></span>
																										<em>Courteous Staff</em>
																									</li>
																									<li>
																										<span class="tg-stars"><span></span></span>
																										<em>Spends Time with Me</em>
																									</li>
																								</ul>
																							</div>
																						</div>
																					</li>
																				</ul>
																			</div>
																		</div>
																		<div class="tg-description">
																			<p>Cliqua enim ad minim veniam quis nostrud exercitation ullamco laboris nisi ut aliquip modoia aiat irure dolor in reprehenderit in.</p>
																		</div>
																	</div>
																</div>
															</div>
															<div class="tg-patientfeedback">
																<div class="tg-patientfeedbackbox">
																	<figure>
																		<img src="images/thumbnails/img-13.jpg" alt="image description">
																		<figcaption>
																			<a href="#"><i class="fa fa-reply "></i></a>
																		</figcaption>
																	</figure>
																	<div class="tg-patientfeedbackcontent">
																		<div class="tg-contenthead">
																			<div class="tg-leftbox">
																				<div class="tg-patientname">
																					<h4><a href="#">Sensation &amp; Pain in PMT</a></h4>
																				</div>
																				<ul class="tg-metadata">
																					<li><a href="#">Edward Coldiron</a></li>
																					<li><a href="#">10 Min Ago</a></li>
																				</ul>
																			</div>
																			<div class="tg-rightbox">
																				<ul class="tg-metadata">
																					<li>
																						<a href="#">
																							<i class="fa fa-thumbs-o-up tg-tooltip" data-toggle="tooltip" data-placement="top" title="like"></i>
																						</a>
																					</li>
																					<li>
																						<a href="#">
																							<i class="fa fa-thumbs-o-down tg-tooltip tg-dislike" data-toggle="tooltip" data-placement="top" title="dislike"></i>
																						</a>
																					</li>
																					<li>
																						<span class="tg-stars"><span></span></span>
																						<div class="tg-overallragingarea">
																							<i class="fa fa-exclamation-circle"></i>
																							<div class="tg-overallraging">
																								<ul class="tg-servicesrating">
																									<li>
																										<span class="tg-stars"><span></span></span>
																										<em>Ease of Appointment</em>
																									</li>
																									<li>
																										<span class="tg-stars"><span></span></span>
																										<em>Accurate Diagnosis</em>
																									</li>
																									<li>
																										<span class="tg-stars"><span></span></span>
																										<em>Follows Up After Visit</em>
																									</li>
																									<li>
																										<span class="tg-stars"><span></span></span>
																										<em>Promptness</em>
																									</li>
																									<li>
																										<span class="tg-stars"><span></span></span>
																										<em>Bedside Manner</em>
																									</li>
																									<li>
																										<span class="tg-stars"><span></span></span>
																										<em>Medical Knowledge</em>
																									</li>
																									<li>
																										<span class="tg-stars"><span></span></span>
																										<em>Courteous Staff</em>
																									</li>
																									<li>
																										<span class="tg-stars"><span></span></span>
																										<em>Spends Time with Me</em>
																									</li>
																								</ul>
																							</div>
																						</div>
																					</li>
																				</ul>
																			</div>
																		</div>
																		<div class="tg-description">
																			<p>Cliqua enim ad minim veniam quis nostrud exercitation ullamco laboris nisi ut aliquip modoia aiat irure dolor in reprehenderit in.</p>
																		</div>
																	</div>
																</div>
															</div>
															<div class="tg-patientfeedback">
																<div class="tg-patientfeedbackbox">
																	<figure>
																		<img src="images/thumbnails/img-07.jpg" alt="image description">
																		<figcaption>
																			<a href="#"><i class="fa fa-reply "></i></a>
																		</figcaption>
																	</figure>
																	<div class="tg-patientfeedbackcontent">
																		<div class="tg-contenthead">
																			<div class="tg-leftbox">
																				<div class="tg-patientname">
																					<h4><a href="#">Sensation &amp; Pain in PMT</a></h4>
																				</div>
																				<ul class="tg-metadata">
																					<li><a href="#">Edward Coldiron</a></li>
																					<li><a href="#">10 Min Ago</a></li>
																				</ul>
																			</div>
																			<div class="tg-rightbox">
																				<ul class="tg-metadata">
																					<li>
																						<a href="#">
																							<i class="fa fa-thumbs-o-up tg-tooltip" data-toggle="tooltip" data-placement="top" title="like"></i>
																						</a>
																					</li>
																					<li>
																						<a href="#">
																							<i class="fa fa-thumbs-o-down tg-tooltip tg-dislike" data-toggle="tooltip" data-placement="top" title="dislike"></i>
																						</a>
																					</li>
																					<li>
																						<span class="tg-stars"><span></span></span>
																						<div class="tg-overallragingarea">
																							<i class="fa fa-exclamation-circle"></i>
																							<div class="tg-overallraging">
																								<ul class="tg-servicesrating">
																									<li>
																										<span class="tg-stars"><span></span></span>
																										<em>Ease of Appointment</em>
																									</li>
																									<li>
																										<span class="tg-stars"><span></span></span>
																										<em>Accurate Diagnosis</em>
																									</li>
																									<li>
																										<span class="tg-stars"><span></span></span>
																										<em>Follows Up After Visit</em>
																									</li>
																									<li>
																										<span class="tg-stars"><span></span></span>
																										<em>Promptness</em>
																									</li>
																									<li>
																										<span class="tg-stars"><span></span></span>
																										<em>Bedside Manner</em>
																									</li>
																									<li>
																										<span class="tg-stars"><span></span></span>
																										<em>Medical Knowledge</em>
																									</li>
																									<li>
																										<span class="tg-stars"><span></span></span>
																										<em>Courteous Staff</em>
																									</li>
																									<li>
																										<span class="tg-stars"><span></span></span>
																										<em>Spends Time with Me</em>
																									</li>
																								</ul>
																							</div>
																						</div>
																					</li>
																				</ul>
																			</div>
																		</div>
																		<div class="tg-description">
																			<p>Cliqua enim ad minim veniam quis nostrud exercitation ullamco laboris nisi ut aliquip modoia aiat irure dolor in reprehenderit in.</p>
																		</div>
																	</div>
																</div>
															</div>
															<div class="tg-patientfeedback">
																<div class="tg-patientfeedbackbox">
																	<figure>
																		<img src="images/thumbnails/img-08.jpg" alt="image description">
																		<figcaption>
																			<a href="#"><i class="fa fa-reply "></i></a>
																		</figcaption>
																	</figure>
																	<div class="tg-patientfeedbackcontent">
																		<div class="tg-contenthead">
																			<div class="tg-leftbox">
																				<div class="tg-patientname">
																					<h4><a href="#">Sensation &amp; Pain in PMT</a></h4>
																				</div>
																				<ul class="tg-metadata">
																					<li><a href="#">Edward Coldiron</a></li>
																					<li><a href="#">10 Min Ago</a></li>
																				</ul>
																			</div>
																			<div class="tg-rightbox">
																				<ul class="tg-metadata">
																					<li>
																						<a href="#">
																							<i class="fa fa-thumbs-o-up tg-tooltip" data-toggle="tooltip" data-placement="top" title="like"></i>
																						</a>
																					</li>
																					<li>
																						<a href="#">
																							<i class="fa fa-thumbs-o-down tg-tooltip tg-dislike" data-toggle="tooltip" data-placement="top" title="dislike"></i>
																						</a>
																					</li>
																					<li>
																						<span class="tg-stars"><span></span></span>
																						<div class="tg-overallragingarea">
																							<i class="fa fa-exclamation-circle"></i>
																							<div class="tg-overallraging">
																								<ul class="tg-servicesrating">
																									<li>
																										<span class="tg-stars"><span></span></span>
																										<em>Ease of Appointment</em>
																									</li>
																									<li>
																										<span class="tg-stars"><span></span></span>
																										<em>Accurate Diagnosis</em>
																									</li>
																									<li>
																										<span class="tg-stars"><span></span></span>
																										<em>Follows Up After Visit</em>
																									</li>
																									<li>
																										<span class="tg-stars"><span></span></span>
																										<em>Promptness</em>
																									</li>
																									<li>
																										<span class="tg-stars"><span></span></span>
																										<em>Bedside Manner</em>
																									</li>
																									<li>
																										<span class="tg-stars"><span></span></span>
																										<em>Medical Knowledge</em>
																									</li>
																									<li>
																										<span class="tg-stars"><span></span></span>
																										<em>Courteous Staff</em>
																									</li>
																									<li>
																										<span class="tg-stars"><span></span></span>
																										<em>Spends Time with Me</em>
																									</li>
																								</ul>
																							</div>
																						</div>
																					</li>
																				</ul>
																			</div>
																		</div>
																		<div class="tg-description">
																			<p>Cliqua enim ad minim veniam quis nostrud exercitation ullamco laboris nisi ut aliquip modoia aiat irure dolor in reprehenderit in.</p>
																		</div>
																	</div>
																</div>
															</div>
															<div class="tg-patientfeedback">
																<div class="tg-patientfeedbackbox">
																	<figure>
																		<img src="images/thumbnails/img-09.jpg" alt="image description">
																		<figcaption>
																			<a href="#"><i class="fa fa-reply "></i></a>
																		</figcaption>
																	</figure>
																	<div class="tg-patientfeedbackcontent">
																		<div class="tg-contenthead">
																			<div class="tg-leftbox">
																				<div class="tg-patientname">
																					<h4><a href="#">Sensation &amp; Pain in PMT</a></h4>
																				</div>
																				<ul class="tg-metadata">
																					<li><a href="#">Edward Coldiron</a></li>
																					<li><a href="#">10 Min Ago</a></li>
																				</ul>
																			</div>
																			<div class="tg-rightbox">
																				<ul class="tg-metadata">
																					<li>
																						<a href="#">
																							<i class="fa fa-thumbs-o-up tg-tooltip" data-toggle="tooltip" data-placement="top" title="like"></i>
																						</a>
																					</li>
																					<li>
																						<a href="#">
																							<i class="fa fa-thumbs-o-down tg-tooltip tg-dislike" data-toggle="tooltip" data-placement="top" title="dislike"></i>
																						</a>
																					</li>
																					<li>
																						<span class="tg-stars"><span></span></span>
																						<div class="tg-overallragingarea">
																							<i class="fa fa-exclamation-circle"></i>
																							<div class="tg-overallraging">
																								<ul class="tg-servicesrating">
																									<li>
																										<span class="tg-stars"><span></span></span>
																										<em>Ease of Appointment</em>
																									</li>
																									<li>
																										<span class="tg-stars"><span></span></span>
																										<em>Accurate Diagnosis</em>
																									</li>
																									<li>
																										<span class="tg-stars"><span></span></span>
																										<em>Follows Up After Visit</em>
																									</li>
																									<li>
																										<span class="tg-stars"><span></span></span>
																										<em>Promptness</em>
																									</li>
																									<li>
																										<span class="tg-stars"><span></span></span>
																										<em>Bedside Manner</em>
																									</li>
																									<li>
																										<span class="tg-stars"><span></span></span>
																										<em>Medical Knowledge</em>
																									</li>
																									<li>
																										<span class="tg-stars"><span></span></span>
																										<em>Courteous Staff</em>
																									</li>
																									<li>
																										<span class="tg-stars"><span></span></span>
																										<em>Spends Time with Me</em>
																									</li>
																								</ul>
																							</div>
																						</div>
																					</li>
																				</ul>
																			</div>
																		</div>
																		<div class="tg-description">
																			<p>Cliqua enim ad minim veniam quis nostrud exercitation ullamco laboris nisi ut aliquip modoia aiat irure dolor in reprehenderit in.</p>
																		</div>
																	</div>
																</div>
															</div>
															<div class="tg-patientfeedback">
																<div class="tg-patientfeedbackbox">
																	<figure>
																		<img src="images/thumbnails/img-10.jpg" alt="image description">
																		<figcaption>
																			<a href="#"><i class="fa fa-reply "></i></a>
																		</figcaption>
																	</figure>
																	<div class="tg-patientfeedbackcontent">
																		<div class="tg-contenthead">
																			<div class="tg-leftbox">
																				<div class="tg-patientname">
																					<h4><a href="#">Sensation &amp; Pain in PMT</a></h4>
																				</div>
																				<ul class="tg-metadata">
																					<li><a href="#">Edward Coldiron</a></li>
																					<li><a href="#">10 Min Ago</a></li>
																				</ul>
																			</div>
																			<div class="tg-rightbox">
																				<ul class="tg-metadata">
																					<li>
																						<a href="#">
																							<i class="fa fa-thumbs-o-up tg-tooltip" data-toggle="tooltip" data-placement="top" title="like"></i>
																						</a>
																					</li>
																					<li>
																						<a href="#">
																							<i class="fa fa-thumbs-o-down tg-tooltip tg-dislike" data-toggle="tooltip" data-placement="top" title="dislike"></i>
																						</a>
																					</li>
																					<li>
																						<span class="tg-stars"><span></span></span>
																						<div class="tg-overallragingarea">
																							<i class="fa fa-exclamation-circle"></i>
																							<div class="tg-overallraging">
																								<ul class="tg-servicesrating">
																									<li>
																										<span class="tg-stars"><span></span></span>
																										<em>Ease of Appointment</em>
																									</li>
																									<li>
																										<span class="tg-stars"><span></span></span>
																										<em>Accurate Diagnosis</em>
																									</li>
																									<li>
																										<span class="tg-stars"><span></span></span>
																										<em>Follows Up After Visit</em>
																									</li>
																									<li>
																										<span class="tg-stars"><span></span></span>
																										<em>Promptness</em>
																									</li>
																									<li>
																										<span class="tg-stars"><span></span></span>
																										<em>Bedside Manner</em>
																									</li>
																									<li>
																										<span class="tg-stars"><span></span></span>
																										<em>Medical Knowledge</em>
																									</li>
																									<li>
																										<span class="tg-stars"><span></span></span>
																										<em>Courteous Staff</em>
																									</li>
																									<li>
																										<span class="tg-stars"><span></span></span>
																										<em>Spends Time with Me</em>
																									</li>
																								</ul>
																							</div>
																						</div>
																					</li>
																				</ul>
																			</div>
																		</div>
																		<div class="tg-description">
																			<p>Cliqua enim ad minim veniam quis nostrud exercitation ullamco laboris nisi ut aliquip modoia aiat irure dolor in reprehenderit in.</p>
																		</div>
																	</div>
																</div>
															</div>
															<div class="tg-patientfeedback">
																<div class="tg-patientfeedbackbox">
																	<figure>
																		<img src="images/thumbnails/img-11.jpg" alt="image description">
																		<figcaption>
																			<a href="#"><i class="fa fa-reply "></i></a>
																		</figcaption>
																	</figure>
																	<div class="tg-patientfeedbackcontent">
																		<div class="tg-contenthead">
																			<div class="tg-leftbox">
																				<div class="tg-patientname">
																					<h4><a href="#">Sensation &amp; Pain in PMT</a></h4>
																				</div>
																				<ul class="tg-metadata">
																					<li><a href="#">Edward Coldiron</a></li>
																					<li><a href="#">10 Min Ago</a></li>
																				</ul>
																			</div>
																			<div class="tg-rightbox">
																				<ul class="tg-metadata">
																					<li>
																						<a href="#">
																							<i class="fa fa-thumbs-o-up tg-tooltip" data-toggle="tooltip" data-placement="top" title="like"></i>
																						</a>
																					</li>
																					<li>
																						<a href="#">
																							<i class="fa fa-thumbs-o-down tg-tooltip tg-dislike" data-toggle="tooltip" data-placement="top" title="dislike"></i>
																						</a>
																					</li>
																					<li>
																						<span class="tg-stars"><span></span></span>
																						<div class="tg-overallragingarea">
																							<i class="fa fa-exclamation-circle"></i>
																							<div class="tg-overallraging">
																								<ul class="tg-servicesrating">
																									<li>
																										<span class="tg-stars"><span></span></span>
																										<em>Ease of Appointment</em>
																									</li>
																									<li>
																										<span class="tg-stars"><span></span></span>
																										<em>Accurate Diagnosis</em>
																									</li>
																									<li>
																										<span class="tg-stars"><span></span></span>
																										<em>Follows Up After Visit</em>
																									</li>
																									<li>
																										<span class="tg-stars"><span></span></span>
																										<em>Promptness</em>
																									</li>
																									<li>
																										<span class="tg-stars"><span></span></span>
																										<em>Bedside Manner</em>
																									</li>
																									<li>
																										<span class="tg-stars"><span></span></span>
																										<em>Medical Knowledge</em>
																									</li>
																									<li>
																										<span class="tg-stars"><span></span></span>
																										<em>Courteous Staff</em>
																									</li>
																									<li>
																										<span class="tg-stars"><span></span></span>
																										<em>Spends Time with Me</em>
																									</li>
																								</ul>
																							</div>
																						</div>
																					</li>
																				</ul>
																			</div>
																		</div>
																		<div class="tg-description">
																			<p>Cliqua enim ad minim veniam quis nostrud exercitation ullamco laboris nisi ut aliquip modoia aiat irure dolor in reprehenderit in.</p>
																		</div>
																	</div>
																</div>
															</div>
															<div class="tg-patientfeedback">
																<div class="tg-patientfeedbackbox">
																	<figure>
																		<img src="images/thumbnails/img-12.jpg" alt="image description">
																		<figcaption>
																			<a href="#"><i class="fa fa-reply "></i></a>
																		</figcaption>
																	</figure>
																	<div class="tg-patientfeedbackcontent">
																		<div class="tg-contenthead">
																			<div class="tg-leftbox">
																				<div class="tg-patientname">
																					<h4><a href="#">Sensation &amp; Pain in PMT</a></h4>
																				</div>
																				<ul class="tg-metadata">
																					<li><a href="#">Edward Coldiron</a></li>
																					<li><a href="#">10 Min Ago</a></li>
																				</ul>
																			</div>
																			<div class="tg-rightbox">
																				<ul class="tg-metadata">
																					<li>
																						<a href="#">
																							<i class="fa fa-thumbs-o-up tg-tooltip" data-toggle="tooltip" data-placement="top" title="like"></i>
																						</a>
																					</li>
																					<li>
																						<a href="#">
																							<i class="fa fa-thumbs-o-down tg-tooltip tg-dislike" data-toggle="tooltip" data-placement="top" title="dislike"></i>
																						</a>
																					</li>
																					<li>
																						<span class="tg-stars"><span></span></span>
																						<div class="tg-overallragingarea">
																							<i class="fa fa-exclamation-circle"></i>
																							<div class="tg-overallraging">
																								<ul class="tg-servicesrating">
																									<li>
																										<span class="tg-stars"><span></span></span>
																										<em>Ease of Appointment</em>
																									</li>
																									<li>
																										<span class="tg-stars"><span></span></span>
																										<em>Accurate Diagnosis</em>
																									</li>
																									<li>
																										<span class="tg-stars"><span></span></span>
																										<em>Follows Up After Visit</em>
																									</li>
																									<li>
																										<span class="tg-stars"><span></span></span>
																										<em>Promptness</em>
																									</li>
																									<li>
																										<span class="tg-stars"><span></span></span>
																										<em>Bedside Manner</em>
																									</li>
																									<li>
																										<span class="tg-stars"><span></span></span>
																										<em>Medical Knowledge</em>
																									</li>
																									<li>
																										<span class="tg-stars"><span></span></span>
																										<em>Courteous Staff</em>
																									</li>
																									<li>
																										<span class="tg-stars"><span></span></span>
																										<em>Spends Time with Me</em>
																									</li>
																								</ul>
																							</div>
																						</div>
																					</li>
																				</ul>
																			</div>
																		</div>
																		<div class="tg-description">
																			<p>Cliqua enim ad minim veniam quis nostrud exercitation ullamco laboris nisi ut aliquip modoia aiat irure dolor in reprehenderit in.</p>
																		</div>
																	</div>
																</div>
															</div>
															<div class="tg-patientfeedback">
																<div class="tg-patientfeedbackbox">
																	<figure>
																		<img src="images/thumbnails/img-13.jpg" alt="image description">
																		<figcaption>
																			<a href="#"><i class="fa fa-reply "></i></a>
																		</figcaption>
																	</figure>
																	<div class="tg-patientfeedbackcontent">
																		<div class="tg-contenthead">
																			<div class="tg-leftbox">
																				<div class="tg-patientname">
																					<h4><a href="#">Sensation &amp; Pain in PMT</a></h4>
																				</div>
																				<ul class="tg-metadata">
																					<li><a href="#">Edward Coldiron</a></li>
																					<li><a href="#">10 Min Ago</a></li>
																				</ul>
																			</div>
																			<div class="tg-rightbox">
																				<ul class="tg-metadata">
																					<li>
																						<a href="#">
																							<i class="fa fa-thumbs-o-up tg-tooltip" data-toggle="tooltip" data-placement="top" title="like"></i>
																						</a>
																					</li>
																					<li>
																						<a href="#">
																							<i class="fa fa-thumbs-o-down tg-tooltip tg-dislike" data-toggle="tooltip" data-placement="top" title="dislike"></i>
																						</a>
																					</li>
																					<li>
																						<span class="tg-stars"><span></span></span>
																						<div class="tg-overallragingarea">
																							<i class="fa fa-exclamation-circle"></i>
																							<div class="tg-overallraging">
																								<ul class="tg-servicesrating">
																									<li>
																										<span class="tg-stars"><span></span></span>
																										<em>Ease of Appointment</em>
																									</li>
																									<li>
																										<span class="tg-stars"><span></span></span>
																										<em>Accurate Diagnosis</em>
																									</li>
																									<li>
																										<span class="tg-stars"><span></span></span>
																										<em>Follows Up After Visit</em>
																									</li>
																									<li>
																										<span class="tg-stars"><span></span></span>
																										<em>Promptness</em>
																									</li>
																									<li>
																										<span class="tg-stars"><span></span></span>
																										<em>Bedside Manner</em>
																									</li>
																									<li>
																										<span class="tg-stars"><span></span></span>
																										<em>Medical Knowledge</em>
																									</li>
																									<li>
																										<span class="tg-stars"><span></span></span>
																										<em>Courteous Staff</em>
																									</li>
																									<li>
																										<span class="tg-stars"><span></span></span>
																										<em>Spends Time with Me</em>
																									</li>
																								</ul>
																							</div>
																						</div>
																					</li>
																				</ul>
																			</div>
																		</div>
																		<div class="tg-description">
																			<p>Cliqua enim ad minim veniam quis nostrud exercitation ullamco laboris nisi ut aliquip modoia aiat irure dolor in reprehenderit in.</p>
																		</div>
																	</div>
																</div>
															</div>
														</div>
														<div class="tg-btnbox">
															<a class="tg-btn tg-btnloadmore" href="javascript:void(0);">load more</a>
														</div>
													</div>
													<div class="tg-box">
														<div class="tg-tabtitle">
															<h2>Leave Your Feedback</h2>
														</div>
														<form class="tg-formtheme tg-formleavefeedback">
															<fieldset>
																<div class="row">
																	<div class="col-sm-6">
																		<div class="form-group">
																			<label>Total Wait Time: </label>
																			<span class="tg-select">
																				<select>
																					<option>15 Minutes</option>
																					<option>15 Minutes</option>
																					<option>15 Minutes</option>
																				</select>
																			</span>
																		</div>
																	</div>
																	<div class="col-sm-6">
																		<div class="form-group">
																			<label>Recommend This Doctor: </label>
																			<div class="tg-recommendedradio">
																				<span class="tg-radio">
																					<input type="radio" id="yes" name="recommended" value="yes" checked>
																					<label for="yes"><i class="fa fa-thumbs-o-up"></i> yes</label>
																				</span>
																				<span class="tg-radio">
																					<input type="radio" id="no" name="recommended" value="no">
																					<label for="no"><i class="fa fa-thumbs-o-down"></i>no</label>
																				</span>
																			</div>
																		</div>
																	</div>
																	<div class="col-sm-12">
																		<div class="form-group">
																			<ul class="tg-servicesrating">
																				<li>
																					<span class="tg-stars"><span></span></span>
																					<em>Ease of Appointment</em>
																				</li>
																				<li>
																					<span class="tg-stars"><span></span></span>
																					<em>Accurate Diagnosis</em>
																				</li>
																				<li>
																					<span class="tg-stars"><span></span></span>
																					<em>Follows Up After Visit</em>
																				</li>
																				<li>
																					<span class="tg-stars"><span></span></span>
																					<em>Promptness</em>
																				</li>
																				<li>
																					<span class="tg-stars"><span></span></span>
																					<em>Bedside Manner</em>
																				</li>
																				<li>
																					<span class="tg-stars"><span></span></span>
																					<em>Medical Knowledge</em>
																				</li>
																				<li>
																					<span class="tg-stars"><span></span></span>
																					<em>Courteous Staff</em>
																				</li>
																				<li>
																					<span class="tg-stars"><span></span></span>
																					<em>Spends Time with Me</em>
																				</li>
																			</ul>
																		</div>
																	</div>
																	<div class="col-sm-12 col-xs-12">
																		<div class="form-group">
																			<input type="text" class="form-control" name="reviewreason" placeholder="Review Reason">
																		</div>
																	</div>
																	<div class="col-sm-12 col-xs-12">
																		<div class="form-group">
																			<textarea class="form-control" placeholder="Description"></textarea>
																		</div>
																	</div>
																	<div class="col-sm-12 col-xs-12">
																		<button type="submit" class="tg-btn">Submit</button>
																	</div>
																</div>
															</fieldset>
														</form>
													</div>
												</div>		
												<div role="tabpanel" class="tab-pane tg-photos fade" id="photos">
													<div class="tg-box">
														<div class="tg-tabtitle">
															<h2>Photos</h2>
														</div>
														<div class="tg-photogallery">
															<div id="tg-viewslider" class="tg-galleryslider tg-viewslider">
																<div class="item">
																	<figure>
																		<img src="images/gallery/large/img-01.jpg" alt="image description">
																	</figure>
																</div>
																<div class="item">
																	<figure>
																		<img src="images/gallery/large/img-02.jpg" alt="image description">
																	</figure>
																</div>
																<div class="item">
																	<figure>
																		<img src="images/gallery/large/img-03.jpg" alt="image description">
																	</figure>
																</div>
																<div class="item">
																	<figure>
																		<img src="images/gallery/large/img-04.jpg" alt="image description">
																	</figure>
																</div>
																<div class="item">
																	<figure>
																		<img src="images/gallery/large/img-05.jpg" alt="image description">
																	</figure>
																</div>
																<div class="item">
																	<figure>
																		<img src="images/gallery/large/img-06.jpg" alt="image description">
																	</figure>
																</div>
																<div class="item">
																	<figure>
																		<img src="images/gallery/large/img-07.jpg" alt="image description">
																	</figure>
																</div>
																<div class="item">
																	<figure>
																		<img src="images/gallery/large/img-08.jpg" alt="image description">
																	</figure>
																</div>
																<div class="item">
																	<figure>
																		<img src="images/gallery/large/img-09.jpg" alt="image description">
																	</figure>
																</div>
																<div class="item">
																	<figure>
																		<img src="images/gallery/large/img-10.jpg" alt="image description">
																	</figure>
																</div>
																<div class="item">
																	<figure>
																		<img src="images/gallery/large/img-01.jpg" alt="image description">
																	</figure>
																</div>
																<div class="item">
																	<figure>
																		<img src="images/gallery/large/img-02.jpg" alt="image description">
																	</figure>
																</div>
																<div class="item">
																	<figure>
																		<img src="images/gallery/large/img-03.jpg" alt="image description">
																	</figure>
																</div>
																<div class="item">
																	<figure>
																		<img src="images/gallery/large/img-04.jpg" alt="image description">
																	</figure>
																</div>
																<div class="item">
																	<figure>
																		<img src="images/gallery/large/img-05.jpg" alt="image description">
																	</figure>
																</div>
																<div class="item">
																	<figure>
																		<img src="images/gallery/large/img-06.jpg" alt="image description">
																	</figure>
																</div>
																<div class="item">
																	<figure>
																		<img src="images/gallery/large/img-07.jpg" alt="image description">
																	</figure>
																</div>
																<div class="item">
																	<figure>
																		<img src="images/gallery/large/img-08.jpg" alt="image description">
																	</figure>
																</div>
																<div class="item">
																	<figure>
																		<img src="images/gallery/large/img-09.jpg" alt="image description">
																	</figure>
																</div>
																<div class="item">
																	<figure>
																		<img src="images/gallery/large/img-10.jpg" alt="image description">
																	</figure>
																</div>
															</div>
															<div id="tg-thumbnailslider" class="tg-galleryslider tg-thumbnailslider">
																<div class="item">
																	<figure>
																		<img src="images/gallery/small/img-01.jpg" alt="image description">
																	</figure>
																</div>
																<div class="item">
																	<figure>
																		<img src="images/gallery/small/img-02.jpg" alt="image description">
																	</figure>
																</div>
																<div class="item">
																	<figure>
																		<img src="images/gallery/small/img-03.jpg" alt="image description">
																	</figure>
																</div>
																<div class="item">
																	<figure>
																		<img src="images/gallery/small/img-04.jpg" alt="image description">
																	</figure>
																</div>
																<div class="item">
																	<figure>
																		<img src="images/gallery/small/img-05.jpg" alt="image description">
																	</figure>
																</div>
																<div class="item">
																	<figure>
																		<img src="images/gallery/small/img-06.jpg" alt="image description">
																	</figure>
																</div>
																<div class="item">
																	<figure>
																		<img src="images/gallery/small/img-07.jpg" alt="image description">
																	</figure>
																</div>
																<div class="item">
																	<figure>
																		<img src="images/gallery/small/img-08.jpg" alt="image description">
																	</figure>
																</div>
																<div class="item">
																	<figure>
																		<img src="images/gallery/small/img-09.jpg" alt="image description">
																	</figure>
																</div>
																<div class="item">
																	<figure>
																		<img src="images/gallery/small/img-10.jpg" alt="image description">
																	</figure>
																</div>
																<div class="item">
																	<figure>
																		<img src="images/gallery/small/img-01.jpg" alt="image description">
																	</figure>
																</div>
																<div class="item">
																	<figure>
																		<img src="images/gallery/small/img-02.jpg" alt="image description">
																	</figure>
																</div>
																<div class="item">
																	<figure>
																		<img src="images/gallery/small/img-03.jpg" alt="image description">
																	</figure>
																</div>
																<div class="item">
																	<figure>
																		<img src="images/gallery/small/img-04.jpg" alt="image description">
																	</figure>
																</div>
																<div class="item">
																	<figure>
																		<img src="images/gallery/small/img-05.jpg" alt="image description">
																	</figure>
																</div>
																<div class="item">
																	<figure>
																		<img src="images/gallery/small/img-06.jpg" alt="image description">
																	</figure>
																</div>
																<div class="item">
																	<figure>
																		<img src="images/gallery/small/img-07.jpg" alt="image description">
																	</figure>
																</div>
																<div class="item">
																	<figure>
																		<img src="images/gallery/small/img-08.jpg" alt="image description">
																	</figure>
																</div>
																<div class="item">
																	<figure>
																		<img src="images/gallery/small/img-09.jpg" alt="image description">
																	</figure>
																</div>
																<div class="item">
																	<figure>
																		<img src="images/gallery/small/img-10.jpg" alt="image description">
																	</figure>
																</div>
															</div>
														</div>
													</div>
												</div>
												<div role="tabpanel" class="tab-pane tg-askquestion fade" id="askquestion">
													<div class="tg-box">
														<div class="tg-tabtitle">
															<h2>Ask A Free Question</h2>
														</div>
														<form class="tg-formtheme tg-formleavefeedback">
															<fieldset>
																<div class="row">
																	<div class="col-sm-12">
																		<div class="form-group">
																			<input type="text" class="form-control" name="subject" placeholder="subject*">
																		</div>
																	</div>
																	<div class="col-sm-12">
																		<div class="form-group">
																			<textarea class="form-control" placeholder="Your Question"></textarea>
																		</div>
																	</div>
																	<div class="col-sm-12">
																		<button type="submit" class="tg-btn">Submit</button>
																	</div>
																</div>
															</fieldset>
														</form>
													</div>
													<div class="tg-box">
														<div class="tg-patientfeedbackhead">
															<form class="tg-formtheme tg-formfeedbacksearch">
																<fieldset>
																	<input type="search" class="form-control" name="search" placeholder="Search in Feedback">
																	<button><i class="fa fa-search"></i></button>
																</fieldset>
															</form>
															<ul class="tg-metadata">
																<li><a href="#"><i class="fa fa-star-o"></i> Recent</a></li>
																<li><a href="#"><i class="fa fa-thumbs-o-up"></i> Helpful</a></li>
																<li><a href="#"><i class="fa fa-thumbs-o-down"></i> Not Helful</a></li>
															</ul>
														</div>
														<div class="tg-questionanswers">
															<div class="tg-questionanswer">
																<div class="tg-patientfeedbackbox">
																	<figure>
																		<img src="images/thumbnails/img-07.jpg" alt="image description">
																		<figcaption>
																			<a href="#"><i class="fa fa-reply "></i></a>
																		</figcaption>
																	</figure>
																	<div class="tg-patientfeedbackcontent">
																		<div class="tg-contenthead">
																			<div class="tg-leftbox">
																				<div class="tg-patientname">
																					<h4><a href="#">Sensation &amp; Pain in PMT</a></h4>
																				</div>
																				<ul class="tg-metadata">
																					<li><a href="#">Edward Coldiron</a></li>
																					<li><a href="#">10 Min Ago</a></li>
																				</ul>
																			</div>
																			<div class="tg-rightbox">
																				<ul class="tg-metadata">
																					<li>
																						<a href="#">
																							<i class="fa fa-thumbs-o-up tg-tooltip" data-toggle="tooltip" data-placement="top" title="like"></i>
																						</a>
																					</li>
																					<li>
																						<a href="#">
																							<i class="fa fa-thumbs-o-down tg-tooltip tg-dislike" data-toggle="tooltip" data-placement="top" title="dislike"></i>
																						</a>
																					</li>
																				</ul>
																			</div>
																		</div>
																		<div class="tg-description">
																			<p>Cliqua enim ad minim veniam quis nostrud exercitation ullamco laboris nisi ut aliquip modoia aiat irure dolor in reprehenderit in.</p>
																		</div>
																	</div>
																</div>
																<div class="tg-questionanswer">
																	<div class="tg-patientfeedbackbox">
																		<figure>
																			<img src="images/thumbnails/img-08.jpg" alt="image description">
																			<figcaption>
																				<a href="#"><i class="fa fa-reply "></i></a>
																			</figcaption>
																		</figure>
																		<div class="tg-patientfeedbackcontent">
																			<div class="tg-contenthead">
																				<div class="tg-leftbox">
																					<div class="tg-patientname">
																						<h4><a href="#">Sensation &amp; Pain in PMT</a></h4>
																					</div>
																					<ul class="tg-metadata">
																						<li><a href="#">Edward Coldiron</a></li>
																						<li><a href="#">10 Min Ago</a></li>
																					</ul>
																				</div>
																				<div class="tg-rightbox">
																					<ul class="tg-metadata">
																						<li>
																							<a href="#">
																								<i class="fa fa-thumbs-o-up tg-tooltip" data-toggle="tooltip" data-placement="top" title="like"></i>
																							</a>
																						</li>
																						<li>
																							<a href="#">
																								<i class="fa fa-thumbs-o-down tg-tooltip tg-dislike" data-toggle="tooltip" data-placement="top" title="dislike"></i>
																							</a>
																						</li>
																					</ul>
																				</div>
																			</div>
																			<div class="tg-description">
																				<p>Cliqua enim ad minim veniam quis nostrud exercitation ullamco laboris nisi ut aliquip modoia aiat irure dolor in reprehenderit in.</p>
																			</div>
																		</div>
																	</div>
																</div>
															</div>
															<div class="tg-questionanswer">
																<div class="tg-patientfeedbackbox">
																	<figure>
																		<img src="images/thumbnails/img-09.jpg" alt="image description">
																		<figcaption>
																			<a href="#"><i class="fa fa-reply "></i></a>
																		</figcaption>
																	</figure>
																	<div class="tg-patientfeedbackcontent">
																		<div class="tg-contenthead">
																			<div class="tg-leftbox">
																				<div class="tg-patientname">
																					<h4><a href="#">Sensation &amp; Pain in PMT</a></h4>
																				</div>
																				<ul class="tg-metadata">
																					<li><a href="#">Edward Coldiron</a></li>
																					<li><a href="#">10 Min Ago</a></li>
																				</ul>
																			</div>
																			<div class="tg-rightbox">
																				<ul class="tg-metadata">
																					<li>
																						<a href="#">
																							<i class="fa fa-thumbs-o-up tg-tooltip" data-toggle="tooltip" data-placement="top" title="like"></i>
																						</a>
																					</li>
																					<li>
																						<a href="#">
																							<i class="fa fa-thumbs-o-down tg-tooltip tg-dislike" data-toggle="tooltip" data-placement="top" title="dislike"></i>
																						</a>
																					</li>
																				</ul>
																			</div>
																		</div>
																		<div class="tg-description">
																			<p>Cliqua enim ad minim veniam quis nostrud exercitation ullamco laboris nisi ut aliquip modoia aiat irure dolor in reprehenderit in.</p>
																		</div>
																	</div>
																</div>
															</div>
															<div class="tg-questionanswer">
																<div class="tg-patientfeedbackbox">
																	<figure>
																		<img src="images/thumbnails/img-10.jpg" alt="image description">
																		<figcaption>
																			<a href="#"><i class="fa fa-reply "></i></a>
																		</figcaption>
																	</figure>
																	<div class="tg-patientfeedbackcontent">
																		<div class="tg-contenthead">
																			<div class="tg-leftbox">
																				<div class="tg-patientname">
																					<h4><a href="#">Sensation &amp; Pain in PMT</a></h4>
																				</div>
																				<ul class="tg-metadata">
																					<li><a href="#">Edward Coldiron</a></li>
																					<li><a href="#">10 Min Ago</a></li>
																				</ul>
																			</div>
																			<div class="tg-rightbox">
																				<ul class="tg-metadata">
																					<li>
																						<a href="#">
																							<i class="fa fa-thumbs-o-up tg-tooltip" data-toggle="tooltip" data-placement="top" title="like"></i>
																						</a>
																					</li>
																					<li>
																						<a href="#">
																							<i class="fa fa-thumbs-o-down tg-tooltip tg-dislike" data-toggle="tooltip" data-placement="top" title="dislike"></i>
																						</a>
																					</li>
																				</ul>
																			</div>
																		</div>
																		<div class="tg-description">
																			<p>Cliqua enim ad minim veniam quis nostrud exercitation ullamco laboris nisi ut aliquip modoia aiat irure dolor in reprehenderit in.</p>
																		</div>
																	</div>
																</div>
															</div>
															<div class="tg-questionanswer">
																<div class="tg-patientfeedbackbox">
																	<figure>
																		<img src="images/thumbnails/img-11.jpg" alt="image description">
																		<figcaption>
																			<a href="#"><i class="fa fa-reply "></i></a>
																		</figcaption>
																	</figure>
																	<div class="tg-patientfeedbackcontent">
																		<div class="tg-contenthead">
																			<div class="tg-leftbox">
																				<div class="tg-patientname">
																					<h4><a href="#">Sensation &amp; Pain in PMT</a></h4>
																				</div>
																				<ul class="tg-metadata">
																					<li><a href="#">Edward Coldiron</a></li>
																					<li><a href="#">10 Min Ago</a></li>
																				</ul>
																			</div>
																			<div class="tg-rightbox">
																				<ul class="tg-metadata">
																					<li>
																						<a href="#">
																							<i class="fa fa-thumbs-o-up tg-tooltip" data-toggle="tooltip" data-placement="top" title="like"></i>
																						</a>
																					</li>
																					<li>
																						<a href="#">
																							<i class="fa fa-thumbs-o-down tg-tooltip tg-dislike" data-toggle="tooltip" data-placement="top" title="dislike"></i>
																						</a>
																					</li>
																				</ul>
																			</div>
																		</div>
																		<div class="tg-description">
																			<p>Cliqua enim ad minim veniam quis nostrud exercitation ullamco laboris nisi ut aliquip modoia aiat irure dolor in reprehenderit in.</p>
																		</div>
																	</div>
																</div>
															</div>
															<div class="tg-questionanswer">
																<div class="tg-patientfeedbackbox">
																	<figure>
																		<img src="images/thumbnails/img-12.jpg" alt="image description">
																		<figcaption>
																			<a href="#"><i class="fa fa-reply "></i></a>
																		</figcaption>
																	</figure>
																	<div class="tg-patientfeedbackcontent">
																		<div class="tg-contenthead">
																			<div class="tg-leftbox">
																				<div class="tg-patientname">
																					<h4><a href="#">Sensation &amp; Pain in PMT</a></h4>
																				</div>
																				<ul class="tg-metadata">
																					<li><a href="#">Edward Coldiron</a></li>
																					<li><a href="#">10 Min Ago</a></li>
																				</ul>
																			</div>
																			<div class="tg-rightbox">
																				<ul class="tg-metadata">
																					<li>
																						<a href="#">
																							<i class="fa fa-thumbs-o-up tg-tooltip" data-toggle="tooltip" data-placement="top" title="like"></i>
																						</a>
																					</li>
																					<li>
																						<a href="#">
																							<i class="fa fa-thumbs-o-down tg-tooltip tg-dislike" data-toggle="tooltip" data-placement="top" title="dislike"></i>
																						</a>
																					</li>
																				</ul>
																			</div>
																		</div>
																		<div class="tg-description">
																			<p>Cliqua enim ad minim veniam quis nostrud exercitation ullamco laboris nisi ut aliquip modoia aiat irure dolor in reprehenderit in.</p>
																		</div>
																	</div>
																</div>
															</div>
															<div class="tg-questionanswer">
																<div class="tg-patientfeedbackbox">
																	<figure>
																		<img src="images/thumbnails/img-13.jpg" alt="image description">
																		<figcaption>
																			<a href="#"><i class="fa fa-reply "></i></a>
																		</figcaption>
																	</figure>
																	<div class="tg-patientfeedbackcontent">
																		<div class="tg-contenthead">
																			<div class="tg-leftbox">
																				<div class="tg-patientname">
																					<h4><a href="#">Sensation &amp; Pain in PMT</a></h4>
																				</div>
																				<ul class="tg-metadata">
																					<li><a href="#">Edward Coldiron</a></li>
																					<li><a href="#">10 Min Ago</a></li>
																				</ul>
																			</div>
																			<div class="tg-rightbox">
																				<ul class="tg-metadata">
																					<li>
																						<a href="#">
																							<i class="fa fa-thumbs-o-up tg-tooltip" data-toggle="tooltip" data-placement="top" title="like"></i>
																						</a>
																					</li>
																					<li>
																						<a href="#">
																							<i class="fa fa-thumbs-o-down tg-tooltip tg-dislike" data-toggle="tooltip" data-placement="top" title="dislike"></i>
																						</a>
																					</li>
																				</ul>
																			</div>
																		</div>
																		<div class="tg-description">
																			<p>Cliqua enim ad minim veniam quis nostrud exercitation ullamco laboris nisi ut aliquip modoia aiat irure dolor in reprehenderit in.</p>
																		</div>
																	</div>
																</div>
															</div>
															<div class="tg-questionanswer">
																<div class="tg-patientfeedbackbox">
																	<figure>
																		<img src="images/thumbnails/img-07.jpg" alt="image description">
																		<figcaption>
																			<a href="#"><i class="fa fa-reply "></i></a>
																		</figcaption>
																	</figure>
																	<div class="tg-patientfeedbackcontent">
																		<div class="tg-contenthead">
																			<div class="tg-leftbox">
																				<div class="tg-patientname">
																					<h4><a href="#">Sensation &amp; Pain in PMT</a></h4>
																				</div>
																				<ul class="tg-metadata">
																					<li><a href="#">Edward Coldiron</a></li>
																					<li><a href="#">10 Min Ago</a></li>
																				</ul>
																			</div>
																			<div class="tg-rightbox">
																				<ul class="tg-metadata">
																					<li>
																						<a href="#">
																							<i class="fa fa-thumbs-o-up tg-tooltip" data-toggle="tooltip" data-placement="top" title="like"></i>
																						</a>
																					</li>
																					<li>
																						<a href="#">
																							<i class="fa fa-thumbs-o-down tg-tooltip tg-dislike" data-toggle="tooltip" data-placement="top" title="dislike"></i>
																						</a>
																					</li>
																				</ul>
																			</div>
																		</div>
																		<div class="tg-description">
																			<p>Cliqua enim ad minim veniam quis nostrud exercitation ullamco laboris nisi ut aliquip modoia aiat irure dolor in reprehenderit in.</p>
																		</div>
																	</div>
																</div>
															</div>
															<div class="tg-questionanswer">
																<div class="tg-patientfeedbackbox">
																	<figure>
																		<img src="images/thumbnails/img-08.jpg" alt="image description">
																		<figcaption>
																			<a href="#"><i class="fa fa-reply "></i></a>
																		</figcaption>
																	</figure>
																	<div class="tg-patientfeedbackcontent">
																		<div class="tg-contenthead">
																			<div class="tg-leftbox">
																				<div class="tg-patientname">
																					<h4><a href="#">Sensation &amp; Pain in PMT</a></h4>
																				</div>
																				<ul class="tg-metadata">
																					<li><a href="#">Edward Coldiron</a></li>
																					<li><a href="#">10 Min Ago</a></li>
																				</ul>
																			</div>
																			<div class="tg-rightbox">
																				<ul class="tg-metadata">
																					<li>
																						<a href="#">
																							<i class="fa fa-thumbs-o-up tg-tooltip" data-toggle="tooltip" data-placement="top" title="like"></i>
																						</a>
																					</li>
																					<li>
																						<a href="#">
																							<i class="fa fa-thumbs-o-down tg-tooltip tg-dislike" data-toggle="tooltip" data-placement="top" title="dislike"></i>
																						</a>
																					</li>
																				</ul>
																			</div>
																		</div>
																		<div class="tg-description">
																			<p>Cliqua enim ad minim veniam quis nostrud exercitation ullamco laboris nisi ut aliquip modoia aiat irure dolor in reprehenderit in.</p>
																		</div>
																	</div>
																</div>
															</div>
															<div class="tg-questionanswer">
																<div class="tg-patientfeedbackbox">
																	<figure>
																		<img src="images/thumbnails/img-09.jpg" alt="image description">
																		<figcaption>
																			<a href="#"><i class="fa fa-reply "></i></a>
																		</figcaption>
																	</figure>
																	<div class="tg-patientfeedbackcontent">
																		<div class="tg-contenthead">
																			<div class="tg-leftbox">
																				<div class="tg-patientname">
																					<h4><a href="#">Sensation &amp; Pain in PMT</a></h4>
																				</div>
																				<ul class="tg-metadata">
																					<li><a href="#">Edward Coldiron</a></li>
																					<li><a href="#">10 Min Ago</a></li>
																				</ul>
																			</div>
																			<div class="tg-rightbox">
																				<ul class="tg-metadata">
																					<li>
																						<a href="#">
																							<i class="fa fa-thumbs-o-up tg-tooltip" data-toggle="tooltip" data-placement="top" title="like"></i>
																						</a>
																					</li>
																					<li>
																						<a href="#">
																							<i class="fa fa-thumbs-o-down tg-tooltip tg-dislike" data-toggle="tooltip" data-placement="top" title="dislike"></i>
																						</a>
																					</li>
																				</ul>
																			</div>
																		</div>
																		<div class="tg-description">
																			<p>Cliqua enim ad minim veniam quis nostrud exercitation ullamco laboris nisi ut aliquip modoia aiat irure dolor in reprehenderit in.</p>
																		</div>
																	</div>
																</div>
															</div>
															<div class="tg-questionanswer">
																<div class="tg-patientfeedbackbox">
																	<figure>
																		<img src="images/thumbnails/img-10.jpg" alt="image description">
																		<figcaption>
																			<a href="#"><i class="fa fa-reply "></i></a>
																		</figcaption>
																	</figure>
																	<div class="tg-patientfeedbackcontent">
																		<div class="tg-contenthead">
																			<div class="tg-leftbox">
																				<div class="tg-patientname">
																					<h4><a href="#">Sensation &amp; Pain in PMT</a></h4>
																				</div>
																				<ul class="tg-metadata">
																					<li><a href="#">Edward Coldiron</a></li>
																					<li><a href="#">10 Min Ago</a></li>
																				</ul>
																			</div>
																			<div class="tg-rightbox">
																				<ul class="tg-metadata">
																					<li>
																						<a href="#">
																							<i class="fa fa-thumbs-o-up tg-tooltip" data-toggle="tooltip" data-placement="top" title="like"></i>
																						</a>
																					</li>
																					<li>
																						<a href="#">
																							<i class="fa fa-thumbs-o-down tg-tooltip tg-dislike" data-toggle="tooltip" data-placement="top" title="dislike"></i>
																						</a>
																					</li>
																				</ul>
																			</div>
																		</div>
																		<div class="tg-description">
																			<p>Cliqua enim ad minim veniam quis nostrud exercitation ullamco laboris nisi ut aliquip modoia aiat irure dolor in reprehenderit in.</p>
																		</div>
																	</div>
																</div>
															</div>
															<div class="tg-questionanswer">
																<div class="tg-patientfeedbackbox">
																	<figure>
																		<img src="images/thumbnails/img-11.jpg" alt="image description">
																		<figcaption>
																			<a href="#"><i class="fa fa-reply "></i></a>
																		</figcaption>
																	</figure>
																	<div class="tg-patientfeedbackcontent">
																		<div class="tg-contenthead">
																			<div class="tg-leftbox">
																				<div class="tg-patientname">
																					<h4><a href="#">Sensation &amp; Pain in PMT</a></h4>
																				</div>
																				<ul class="tg-metadata">
																					<li><a href="#">Edward Coldiron</a></li>
																					<li><a href="#">10 Min Ago</a></li>
																				</ul>
																			</div>
																			<div class="tg-rightbox">
																				<ul class="tg-metadata">
																					<li>
																						<a href="#">
																							<i class="fa fa-thumbs-o-up tg-tooltip" data-toggle="tooltip" data-placement="top" title="like"></i>
																						</a>
																					</li>
																					<li>
																						<a href="#">
																							<i class="fa fa-thumbs-o-down tg-tooltip tg-dislike" data-toggle="tooltip" data-placement="top" title="dislike"></i>
																						</a>
																					</li>
																				</ul>
																			</div>
																		</div>
																		<div class="tg-description">
																			<p>Cliqua enim ad minim veniam quis nostrud exercitation ullamco laboris nisi ut aliquip modoia aiat irure dolor in reprehenderit in.</p>
																		</div>
																	</div>
																</div>
															</div>
															<div class="tg-questionanswer">
																<div class="tg-patientfeedbackbox">
																	<figure>
																		<img src="images/thumbnails/img-12.jpg" alt="image description">
																		<figcaption>
																			<a href="#"><i class="fa fa-reply "></i></a>
																		</figcaption>
																	</figure>
																	<div class="tg-patientfeedbackcontent">
																		<div class="tg-contenthead">
																			<div class="tg-leftbox">
																				<div class="tg-patientname">
																					<h4><a href="#">Sensation &amp; Pain in PMT</a></h4>
																				</div>
																				<ul class="tg-metadata">
																					<li><a href="#">Edward Coldiron</a></li>
																					<li><a href="#">10 Min Ago</a></li>
																				</ul>
																			</div>
																			<div class="tg-rightbox">
																				<ul class="tg-metadata">
																					<li>
																						<a href="#">
																							<i class="fa fa-thumbs-o-up tg-tooltip" data-toggle="tooltip" data-placement="top" title="like"></i>
																						</a>
																					</li>
																					<li>
																						<a href="#">
																							<i class="fa fa-thumbs-o-down tg-tooltip tg-dislike" data-toggle="tooltip" data-placement="top" title="dislike"></i>
																						</a>
																					</li>
																				</ul>
																			</div>
																		</div>
																		<div class="tg-description">
																			<p>Cliqua enim ad minim veniam quis nostrud exercitation ullamco laboris nisi ut aliquip modoia aiat irure dolor in reprehenderit in.</p>
																		</div>
																	</div>
																</div>
															</div>
															<div class="tg-questionanswer">
																<div class="tg-patientfeedbackbox">
																	<figure>
																		<img src="images/thumbnails/img-13.jpg" alt="image description">
																		<figcaption>
																			<a href="#"><i class="fa fa-reply "></i></a>
																		</figcaption>
																	</figure>
																	<div class="tg-patientfeedbackcontent">
																		<div class="tg-contenthead">
																			<div class="tg-leftbox">
																				<div class="tg-patientname">
																					<h4><a href="#">Sensation &amp; Pain in PMT</a></h4>
																				</div>
																				<ul class="tg-metadata">
																					<li><a href="#">Edward Coldiron</a></li>
																					<li><a href="#">10 Min Ago</a></li>
																				</ul>
																			</div>
																			<div class="tg-rightbox">
																				<ul class="tg-metadata">
																					<li>
																						<a href="#">
																							<i class="fa fa-thumbs-o-up tg-tooltip" data-toggle="tooltip" data-placement="top" title="like"></i>
																						</a>
																					</li>
																					<li>
																						<a href="#">
																							<i class="fa fa-thumbs-o-down tg-tooltip tg-dislike" data-toggle="tooltip" data-placement="top" title="dislike"></i>
																						</a>
																					</li>
																				</ul>
																			</div>
																		</div>
																		<div class="tg-description">
																			<p>Cliqua enim ad minim veniam quis nostrud exercitation ullamco laboris nisi ut aliquip modoia aiat irure dolor in reprehenderit in.</p>
																		</div>
																	</div>
																</div>
															</div>
															<div class="tg-questionanswer">
																<div class="tg-patientfeedbackbox">
																	<figure>
																		<img src="images/thumbnails/img-07.jpg" alt="image description">
																		<figcaption>
																			<a href="#"><i class="fa fa-reply "></i></a>
																		</figcaption>
																	</figure>
																	<div class="tg-patientfeedbackcontent">
																		<div class="tg-contenthead">
																			<div class="tg-leftbox">
																				<div class="tg-patientname">
																					<h4><a href="#">Sensation &amp; Pain in PMT</a></h4>
																				</div>
																				<ul class="tg-metadata">
																					<li><a href="#">Edward Coldiron</a></li>
																					<li><a href="#">10 Min Ago</a></li>
																				</ul>
																			</div>
																			<div class="tg-rightbox">
																				<ul class="tg-metadata">
																					<li>
																						<a href="#">
																							<i class="fa fa-thumbs-o-up tg-tooltip" data-toggle="tooltip" data-placement="top" title="like"></i>
																						</a>
																					</li>
																					<li>
																						<a href="#">
																							<i class="fa fa-thumbs-o-down tg-tooltip tg-dislike" data-toggle="tooltip" data-placement="top" title="dislike"></i>
																						</a>
																					</li>
																				</ul>
																			</div>
																		</div>
																		<div class="tg-description">
																			<p>Cliqua enim ad minim veniam quis nostrud exercitation ullamco laboris nisi ut aliquip modoia aiat irure dolor in reprehenderit in.</p>
																		</div>
																	</div>
																</div>
															</div>
															<div class="tg-questionanswer">
																<div class="tg-patientfeedbackbox">
																	<figure>
																		<img src="images/thumbnails/img-08.jpg" alt="image description">
																		<figcaption>
																			<a href="#"><i class="fa fa-reply "></i></a>
																		</figcaption>
																	</figure>
																	<div class="tg-patientfeedbackcontent">
																		<div class="tg-contenthead">
																			<div class="tg-leftbox">
																				<div class="tg-patientname">
																					<h4><a href="#">Sensation &amp; Pain in PMT</a></h4>
																				</div>
																				<ul class="tg-metadata">
																					<li><a href="#">Edward Coldiron</a></li>
																					<li><a href="#">10 Min Ago</a></li>
																				</ul>
																			</div>
																			<div class="tg-rightbox">
																				<ul class="tg-metadata">
																					<li>
																						<a href="#">
																							<i class="fa fa-thumbs-o-up tg-tooltip" data-toggle="tooltip" data-placement="top" title="like"></i>
																						</a>
																					</li>
																					<li>
																						<a href="#">
																							<i class="fa fa-thumbs-o-down tg-tooltip tg-dislike" data-toggle="tooltip" data-placement="top" title="dislike"></i>
																						</a>
																					</li>
																				</ul>
																			</div>
																		</div>
																		<div class="tg-description">
																			<p>Cliqua enim ad minim veniam quis nostrud exercitation ullamco laboris nisi ut aliquip modoia aiat irure dolor in reprehenderit in.</p>
																		</div>
																	</div>
																</div>
															</div>
															<div class="tg-questionanswer">
																<div class="tg-patientfeedbackbox">
																	<figure>
																		<img src="images/thumbnails/img-09.jpg" alt="image description">
																		<figcaption>
																			<a href="#"><i class="fa fa-reply "></i></a>
																		</figcaption>
																	</figure>
																	<div class="tg-patientfeedbackcontent">
																		<div class="tg-contenthead">
																			<div class="tg-leftbox">
																				<div class="tg-patientname">
																					<h4><a href="#">Sensation &amp; Pain in PMT</a></h4>
																				</div>
																				<ul class="tg-metadata">
																					<li><a href="#">Edward Coldiron</a></li>
																					<li><a href="#">10 Min Ago</a></li>
																				</ul>
																			</div>
																			<div class="tg-rightbox">
																				<ul class="tg-metadata">
																					<li>
																						<a href="#">
																							<i class="fa fa-thumbs-o-up tg-tooltip" data-toggle="tooltip" data-placement="top" title="like"></i>
																						</a>
																					</li>
																					<li>
																						<a href="#">
																							<i class="fa fa-thumbs-o-down tg-tooltip tg-dislike" data-toggle="tooltip" data-placement="top" title="dislike"></i>
																						</a>
																					</li>
																				</ul>
																			</div>
																		</div>
																		<div class="tg-description">
																			<p>Cliqua enim ad minim veniam quis nostrud exercitation ullamco laboris nisi ut aliquip modoia aiat irure dolor in reprehenderit in.</p>
																		</div>
																	</div>
																</div>
															</div>
															<div class="tg-questionanswer">
																<div class="tg-patientfeedbackbox">
																	<figure>
																		<img src="images/thumbnails/img-10.jpg" alt="image description">
																		<figcaption>
																			<a href="#"><i class="fa fa-reply "></i></a>
																		</figcaption>
																	</figure>
																	<div class="tg-patientfeedbackcontent">
																		<div class="tg-contenthead">
																			<div class="tg-leftbox">
																				<div class="tg-patientname">
																					<h4><a href="#">Sensation &amp; Pain in PMT</a></h4>
																				</div>
																				<ul class="tg-metadata">
																					<li><a href="#">Edward Coldiron</a></li>
																					<li><a href="#">10 Min Ago</a></li>
																				</ul>
																			</div>
																			<div class="tg-rightbox">
																				<ul class="tg-metadata">
																					<li>
																						<a href="#">
																							<i class="fa fa-thumbs-o-up tg-tooltip" data-toggle="tooltip" data-placement="top" title="like"></i>
																						</a>
																					</li>
																					<li>
																						<a href="#">
																							<i class="fa fa-thumbs-o-down tg-tooltip tg-dislike" data-toggle="tooltip" data-placement="top" title="dislike"></i>
																						</a>
																					</li>
																				</ul>
																			</div>
																		</div>
																		<div class="tg-description">
																			<p>Cliqua enim ad minim veniam quis nostrud exercitation ullamco laboris nisi ut aliquip modoia aiat irure dolor in reprehenderit in.</p>
																		</div>
																	</div>
																</div>
															</div>
															<div class="tg-questionanswer">
																<div class="tg-patientfeedbackbox">
																	<figure>
																		<img src="images/thumbnails/img-11.jpg" alt="image description">
																		<figcaption>
																			<a href="#"><i class="fa fa-reply "></i></a>
																		</figcaption>
																	</figure>
																	<div class="tg-patientfeedbackcontent">
																		<div class="tg-contenthead">
																			<div class="tg-leftbox">
																				<div class="tg-patientname">
																					<h4><a href="#">Sensation &amp; Pain in PMT</a></h4>
																				</div>
																				<ul class="tg-metadata">
																					<li><a href="#">Edward Coldiron</a></li>
																					<li><a href="#">10 Min Ago</a></li>
																				</ul>
																			</div>
																			<div class="tg-rightbox">
																				<ul class="tg-metadata">
																					<li>
																						<a href="#">
																							<i class="fa fa-thumbs-o-up tg-tooltip" data-toggle="tooltip" data-placement="top" title="like"></i>
																						</a>
																					</li>
																					<li>
																						<a href="#">
																							<i class="fa fa-thumbs-o-down tg-tooltip tg-dislike" data-toggle="tooltip" data-placement="top" title="dislike"></i>
																						</a>
																					</li>
																				</ul>
																			</div>
																		</div>
																		<div class="tg-description">
																			<p>Cliqua enim ad minim veniam quis nostrud exercitation ullamco laboris nisi ut aliquip modoia aiat irure dolor in reprehenderit in.</p>
																		</div>
																	</div>
																</div>
															</div>
															<div class="tg-questionanswer">
																<div class="tg-patientfeedbackbox">
																	<figure>
																		<img src="images/thumbnails/img-12.jpg" alt="image description">
																		<figcaption>
																			<a href="#"><i class="fa fa-reply "></i></a>
																		</figcaption>
																	</figure>
																	<div class="tg-patientfeedbackcontent">
																		<div class="tg-contenthead">
																			<div class="tg-leftbox">
																				<div class="tg-patientname">
																					<h4><a href="#">Sensation &amp; Pain in PMT</a></h4>
																				</div>
																				<ul class="tg-metadata">
																					<li><a href="#">Edward Coldiron</a></li>
																					<li><a href="#">10 Min Ago</a></li>
																				</ul>
																			</div>
																			<div class="tg-rightbox">
																				<ul class="tg-metadata">
																					<li>
																						<a href="#">
																							<i class="fa fa-thumbs-o-up tg-tooltip" data-toggle="tooltip" data-placement="top" title="like"></i>
																						</a>
																					</li>
																					<li>
																						<a href="#">
																							<i class="fa fa-thumbs-o-down tg-tooltip tg-dislike" data-toggle="tooltip" data-placement="top" title="dislike"></i>
																						</a>
																					</li>
																				</ul>
																			</div>
																		</div>
																		<div class="tg-description">
																			<p>Cliqua enim ad minim veniam quis nostrud exercitation ullamco laboris nisi ut aliquip modoia aiat irure dolor in reprehenderit in.</p>
																		</div>
																	</div>
																</div>
															</div>
															<div class="tg-questionanswer">
																<div class="tg-patientfeedbackbox">
																	<figure>
																		<img src="images/thumbnails/img-13.jpg" alt="image description">
																		<figcaption>
																			<a href="#"><i class="fa fa-reply "></i></a>
																		</figcaption>
																	</figure>
																	<div class="tg-patientfeedbackcontent">
																		<div class="tg-contenthead">
																			<div class="tg-leftbox">
																				<div class="tg-patientname">
																					<h4><a href="#">Sensation &amp; Pain in PMT</a></h4>
																				</div>
																				<ul class="tg-metadata">
																					<li><a href="#">Edward Coldiron</a></li>
																					<li><a href="#">10 Min Ago</a></li>
																				</ul>
																			</div>
																			<div class="tg-rightbox">
																				<ul class="tg-metadata">
																					<li>
																						<a href="#">
																							<i class="fa fa-thumbs-o-up tg-tooltip" data-toggle="tooltip" data-placement="top" title="like"></i>
																						</a>
																					</li>
																					<li>
																						<a href="#">
																							<i class="fa fa-thumbs-o-down tg-tooltip tg-dislike" data-toggle="tooltip" data-placement="top" title="dislike"></i>
																						</a>
																					</li>
																				</ul>
																			</div>
																		</div>
																		<div class="tg-description">
																			<p>Cliqua enim ad minim veniam quis nostrud exercitation ullamco laboris nisi ut aliquip modoia aiat irure dolor in reprehenderit in.</p>
																		</div>
																	</div>
																</div>
															</div>
														</div>
														<div class="tg-btnbox">
															<a class="tg-btn tg-btnloadmoretwo" href="javascript:void(0);">load more</a>
														</div>
													</div>
												</div>
											</div>
										</div>
									</section>
								</div>
							</div>
						</div>
                        <uc1:Advertisement runat="server" id="Advertisement" />
					</div>
				</div>
			</div>
		</main>
</asp:Content>
