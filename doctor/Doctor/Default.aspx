<%@ Page Title="" Language="C#" MasterPageFile="~/Doctor/Doctor.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="doctor.Doctor.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="DocotorBody" runat="server">
   <div class="col-lg-9 col-md-8 col-sm-8 col-xs-12 pull-right">
							<div class="row">
								<div class="col-sm-12 col-xs-12">
									<div class="tg-alertmessages">
										
										<div class="alert alert-info tg-alertmessage fade in">
											<a href="#" class="close" data-dismiss="alert" aria-label="close">×</a>
											<i class="fa fa-commenting-o"></i>
											<span><strong>Info Message.</strong> <asp:Label ID="lblInfoMessege" runat="server" ></asp:Label></span>
										</div>										
									</div>
								</div>
								<div class="col-md-6 col-sm-12 col-xs-12">
									<div class="tg-profilewidget tg-recommendation">
										<a class="tg-refresh fa fa-refresh" href="#"></a>
										<h3>Total Schedul</h3>
										<span class="tg-profilewidgeticon">
											<img src="../images/icons/icon-26.png" alt="image description">
										</span>
										<div class="tg-percentage">
											<span>
                                                <asp:Label ID="lblTotalSchedul" runat="server" ></asp:Label></span>
											<span>Schedul You Received</span>
										</div>
										<div class="tg-description">
											<p><strong>More Schedul to More Income!</strong>Make more Schedul to make more Money.</p>
										</div>
									</div>
								</div>
								<div class="col-md-6 col-sm-12 col-xs-12">
									<div class="tg-profilewidget tg-favourites">
										<a class="tg-refresh fa fa-refresh" href="#"></a>
										<h3>Total Patient Submit</h3>
										<span class="tg-profilewidgeticon">
											<img src="../images/icons/icon-27.png" alt="image description">
										</span>
										<div class="tg-followers">
											<span><asp:Label ID="lblTotalPatient" runat="server" ></asp:Label></span>
											<span>People are Want to See Your Advise</span>
										</div>
										<div class="tg-description">
											<p><strong>..</strong> Your are see that item's of people.</p>
										</div>
									</div>
								</div>
<%---------------------------------------- chat -----------------------%>
								<%--<div class="col-md-6 col-sm-12 col-xs-12">
									<div class="tg-profilewidget tg-latestreviews">
										<a class="tg-refresh fa fa-refresh" href="#"></a>
										<h3>Total Recommendation</h3>
										<span class="tg-profilewidgeticon">
											<img src="../images/icons/icon-28.png" alt="image description">
										</span>
										<div class="tg-percentage">
											<div class="tg-startsratingbox">
												<span class="tg-stars"><span></span></span>
											</div>
											<span class="tg-subtitle">Recommendation You Received</span>
										</div>
										<ul class="tg-posttype tg-reviews tg-themescrollbar">
											<li>
												<figure>
													<img src="../images/thumbnails/img-07.jpg" alt="image description">
													<figcaption><a href="#"><i class="fa fa-reply "></i></a></figcaption>
												</figure>
												<div class="tg-reviewcontent">
													<div class="tg-reviewhead">
														<h4><a href="#">Dr. Steve Northrop</a></h4><time datetime="2011-12-12">(5 Min Ago)</time>
													</div>
													<div class="tg-description">
														<p>Consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
													</div>
												</div>
											</li>
											<li>
												<figure>
													<img src="../images/thumbnails/img-08.jpg" alt="image description">
													<figcaption><a href="#"><i class="fa fa-reply "></i></a></figcaption>
												</figure>
												<div class="tg-reviewcontent">
													<div class="tg-reviewhead">
														<h4><a href="#">Dr. Steve Northrop</a></h4><time datetime="2011-12-12">(5 Min Ago)</time>
													</div>
													<div class="tg-description">
														<p>Consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
													</div>
												</div>
											</li>
											<li>
												<figure>
													<img src="../images/thumbnails/img-09.jpg" alt="image description">
													<figcaption><a href="#"><i class="fa fa-reply "></i></a></figcaption>
												</figure>
												<div class="tg-reviewcontent">
													<div class="tg-reviewhead">
														<h4><a href="#">Dr. Steve Northrop</a></h4><time datetime="2011-12-12">(5 Min Ago)</time>
													</div>
													<div class="tg-description">
														<p>Consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
													</div>
												</div>
											</li>
											<li>
												<figure>
													<img src="../images/thumbnails/img-10.jpg" alt="image description">
													<figcaption><a href="#"><i class="fa fa-reply "></i></a></figcaption>
												</figure>
												<div class="tg-reviewcontent">
													<div class="tg-reviewhead">
														<h4><a href="#">Dr. Steve Northrop</a></h4><time datetime="2011-12-12">(5 Min Ago)</time>
													</div>
													<div class="tg-description">
														<p>Consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
													</div>
												</div>
											</li>
											<li>
												<figure>
													<img src="../images/thumbnails/img-11.jpg" alt="image description">
													<figcaption><a href="#"><i class="fa fa-reply "></i></a></figcaption>
												</figure>
												<div class="tg-reviewcontent">
													<div class="tg-reviewhead">
														<h4><a href="#">Dr. Steve Northrop</a></h4><time datetime="2011-12-12">(5 Min Ago)</time>
													</div>
													<div class="tg-description">
														<p>Consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
													</div>
												</div>
											</li>
											<li>
												<figure>
													<img src="../images/thumbnails/img-10.jpg" alt="image description">
													<figcaption><a href="#"><i class="fa fa-reply "></i></a></figcaption>
												</figure>
												<div class="tg-reviewcontent">
													<div class="tg-reviewhead">
														<h4><a href="#">Dr. Steve Northrop</a></h4><time datetime="2011-12-12">(5 Min Ago)</time>
													</div>
													<div class="tg-description">
														<p>Consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
													</div>
												</div>
											</li>
											<li>
												<figure>
													<img src="../images/thumbnails/img-11.jpg" alt="image description">
													<figcaption><a href="#"><i class="fa fa-reply "></i></a></figcaption>
												</figure>
												<div class="tg-reviewcontent">
													<div class="tg-reviewhead">
														<h4><a href="#">Dr. Steve Northrop</a></h4><time datetime="2011-12-12">(5 Min Ago)</time>
													</div>
													<div class="tg-description">
														<p>Consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
													</div>
												</div>
											</li>
											<li>
												<figure>
													<img src="../images/thumbnails/img-10.jpg" alt="image description">
													<figcaption><a href="#"><i class="fa fa-reply "></i></a></figcaption>
												</figure>
												<div class="tg-reviewcontent">
													<div class="tg-reviewhead">
														<h4><a href="#">Dr. Steve Northrop</a></h4><time datetime="2011-12-12">(5 Min Ago)</time>
													</div>
													<div class="tg-description">
														<p>Consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
													</div>
												</div>
											</li>
											<li>
												<figure>
													<img src="../images/thumbnails/img-11.jpg" alt="image description">
													<figcaption><a href="#"><i class="fa fa-reply "></i></a></figcaption>
												</figure>
												<div class="tg-reviewcontent">
													<div class="tg-reviewhead">
														<h4><a href="#">Dr. Steve Northrop</a></h4><time datetime="2011-12-12">(5 Min Ago)</time>
													</div>
													<div class="tg-description">
														<p>Consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
													</div>
												</div>
											</li>
										</ul>
										<div class="tg-btnbox">
											<a class="tg-btn" href="#">View All</a>
										</div>
									</div>
								</div>
								<div class="col-md-6 col-sm-12 col-xs-12">
									<div class="tg-profilewidget tg-askquestion">
										<a class="tg-refresh fa fa-refresh" href="#"></a>
										<h3>Total Added To Favourites</h3>
										<span class="tg-profilewidgeticon">
											<img src="../images/icons/icon-29.png" alt="image description">
										</span>
										<div class="tg-followers">
											<span>15092</span>
											<span>People Added You In Favourite List</span>
										</div>
										<div class="tg-description">
											<p><strong>523 People found you not helpful</strong> Consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
										</div>
										<ul class="tg-posttype tg-askquestions tg-themescrollbar">
											<li>
												<figure>
													<img src="../images/thumbnails/img-07.jpg" alt="image description">
													<figcaption><a href="#"><i class="fa fa-reply "></i></a></figcaption>
												</figure>
												<div class="tg-reviewcontent">
													<div class="tg-reviewhead">
														<h4><a href="#">Dr. Steve Northrop</a></h4><time datetime="2011-12-12">(5 Min Ago)</time>
													</div>
													<div class="tg-description">
														<p>Anisi ut aliquip ex ea commodo consequat aute irure dolor in reprehenderit voluptate velit esse cillum dolore.</p>
													</div>
												</div>
											</li>
											<li>
												<figure>
													<img src="../images/thumbnails/img-08.jpg" alt="image description">
													<figcaption><a href="#"><i class="fa fa-reply "></i></a></figcaption>
												</figure>
												<div class="tg-reviewcontent">
													<div class="tg-reviewhead">
														<h4><a href="#">Dr. Steve Northrop</a></h4><time datetime="2011-12-12">(5 Min Ago)</time>
													</div>
													<div class="tg-description">
														<p>Consectetur adipisicing elit sed do eiusmod tempor incididunt ut labore et dolore sitasa magna aliqua enim ad minim veniam quist nostrud exercitation ullamco laboris.</p>
													</div>
												</div>
											</li>
											<li>
												<figure>
													<img src="../images/thumbnails/img-09.jpg" alt="image description">
													<figcaption><a href="#"><i class="fa fa-reply "></i></a></figcaption>
												</figure>
												<div class="tg-reviewcontent">
													<div class="tg-reviewhead">
														<h4><a href="#">Dr. Steve Northrop</a></h4><time datetime="2011-12-12">(5 Min Ago)</time>
													</div>
													<div class="tg-description">
														<p>Anisi ut aliquip ex ea commodo consequat aute irure dolor in reprehenderit voluptate velit esse cillum dolore.</p>
													</div>
												</div>
											</li>
											<li>
												<figure>
													<img src="../images/thumbnails/img-10.jpg" alt="image description">
													<figcaption><a href="#"><i class="fa fa-reply "></i></a></figcaption>
												</figure>
												<div class="tg-reviewcontent">
													<div class="tg-reviewhead">
														<h4><a href="#">Dr. Steve Northrop</a></h4><time datetime="2011-12-12">(5 Min Ago)</time>
													</div>
													<div class="tg-description">
														<p>Anisi ut aliquip ex ea commodo consequat aute irure dolor in reprehenderit voluptate velit esse cillum dolore.</p>
													</div>
												</div>
											</li>
											<li>
												<figure>
													<img src="../images/thumbnails/img-11.jpg" alt="image description">
													<figcaption><a href="#"><i class="fa fa-reply "></i></a></figcaption>
												</figure>
												<div class="tg-reviewcontent">
													<div class="tg-reviewhead">
														<h4><a href="#">Dr. Steve Northrop</a></h4><time datetime="2011-12-12">(5 Min Ago)</time>
													</div>
													<div class="tg-description">
														<p>Consectetur adipisicing elit sed do eiusmod tempor incididunt ut labore et dolore sitasa magna aliqua enim ad minim veniam quist nostrud exercitation ullamco laboris.</p>
													</div>
												</div>
											</li>
											<li>
												<figure>
													<img src="../images/thumbnails/img-12.jpg" alt="image description">
													<figcaption><a href="#"><i class="fa fa-reply "></i></a></figcaption>
												</figure>
												<div class="tg-reviewcontent">
													<div class="tg-reviewhead">
														<h4><a href="#">Dr. Steve Northrop</a></h4><time datetime="2011-12-12">(5 Min Ago)</time>
													</div>
													<div class="tg-description">
														<p>Anisi ut aliquip ex ea commodo consequat aute irure dolor in reprehenderit voluptate velit esse cillum dolore.</p>
													</div>
												</div>
											</li>
										</ul>
										<div class="tg-btnbox">
											<a class="tg-btn" href="#">View All</a>
										</div>
									</div>
								</div>--%>
							</div>
						</div>    
           
       
</asp:Content>
