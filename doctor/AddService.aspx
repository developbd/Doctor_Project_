<%@ Page Title="" Language="C#" MasterPageFile="~/serviceprovider.master" AutoEventWireup="true" CodeBehind="AddService.aspx.cs" Inherits="doctor.AddService" %>
<asp:Content ID="Content1" ContentPlaceHolderID="serviceproviderbody" runat="server">
    <form id="fromservice" runat="server">
<div class="col-lg-9 col-md-8 col-sm-8 col-xs-12 pull-right">
						<div class="tg-dashboardtabs">
							<ul class="tg-dashboardtabnav" role="tablist">
								<li role="presentation" class="active"> <a href="#overview" aria-controls="overview" role="tab" data-toggle="tab">Add a Doctor</a> </li>
								<li role="presentation"> <a href="#services" aria-controls="services" role="tab" data-toggle="tab">Add a hospital</a> </li>
								<li role="presentation"> <a href="#addphotos" aria-controls="addphotos" role="tab" data-toggle="tab">Add a Blood Donor</a> </li>
								<li role="presentation"> <a href="#addbrochures" aria-controls="addbrochures" role="tab" data-toggle="tab">Add Brochures</a> </li>
							</ul>
							<div class="tab-content tg-dashboardtabcontent">
								<div role="tabpanel" class="tab-pane active" id="overview">
									
									<div class="tg-dashboardbox">
										<div class="tg-dashboardboxtitle">
											<h2>Doctor Details</h2>
										</div>
										<div class="tg-box tg-basicinformation">
											<div class="row tg-rowmargin">
												<div class="col-md-5 col-sm-6 col-xs-12 tg-columnpadding">
													<div class="form-group tg-formgroup">
														<input type="text" name="firstname" class="form-control" placeholder="Doctor Full Name">
													</div>
												</div>
												<div class="col-md-7 col-sm-6 col-xs-12 tg-columnpadding">
													<div class="form-group tg-formgroup">
														<input type="text" name="lastname" class="form-control" placeholder="Qualification MBBS,MRCP(UK),FCPS">
													</div>
												</div>
                                                <div class="col-md-6 col-sm-6 col-xs-12 tg-columnpadding">
													<div class="form-group tg-formgroup">
														<input type="text" name="lastname" class="form-control" placeholder="Designation">
													</div>
												</div>
                                                <div class="col-md-6 col-sm-6 col-xs-12 tg-columnpadding">
													<div class="form-group tg-formgroup">
														<input type="text" name="lastname" class="form-control" placeholder="Expertise">
													</div>
												</div>
											</div>
										</div>
									</div>
                                    <div class="tg-dashboardbox">
										<div class="tg-dashboardboxtitle">
											<h2>Doctor Information</h2>
										</div>
                                        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
                                        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                                            <ContentTemplate>

										<div class="tg-box tg-basicinformation">
											<div class="row tg-rowmargin">
												<div class="col-md-4 col-sm-6 col-xs-12 tg-columnpadding">
													<div class="form-group tg-formgroup">
                                                        <asp:DropDownList ID="ddlDivision" CssClass="form-control" AutoPostBack="true" runat="server" OnSelectedIndexChanged="ddlDivision_SelectedIndexChanged"></asp:DropDownList>
													</div>
												</div>
												<div class="col-md-4 col-sm-6 col-xs-12 tg-columnpadding">
													<div class="form-group tg-formgroup">
                                                        <asp:DropDownList ID="ddlDistrict" CssClass="form-control" AutoPostBack="true" runat="server" OnSelectedIndexChanged="ddlDistrict_SelectedIndexChanged"></asp:DropDownList>				
													</div>
												</div>
                                                <div class="col-md-4 col-sm-6 col-xs-12 tg-columnpadding">
													<div class="form-group tg-formgroup">
                                                        <asp:DropDownList ID="ddlUpazila" CssClass="form-control"  runat="server"></asp:DropDownList>
													</div>
												</div>
                                                <div class="col-md-12 col-sm-12 col-xs-12 tg-columnpadding">
													<div class="form-group tg-formgroup">
                                                        <asp:TextBox ID="txtAddress" CssClass="form-control" placeholder="Address" TextMode="MultiLine" Columns="10" runat="server"></asp:TextBox>
													</div>
												</div>
                                                <div class="col-md-8 col-sm-6 col-xs-12 tg-columnpadding">
													<div class="form-group tg-formgroup">
                                                        <asp:TextBox ID="txtMobile" CssClass="form-control" placeholder="Contact (Mobile, Phone, Fax)" runat="server"></asp:TextBox>
													</div>
												</div>
                                                <div class="col-md-4 col-sm-6 col-xs-12 tg-columnpadding">
													<div class="form-group tg-formgroup">
                                                        <asp:TextBox ID="txtEmail" CssClass="form-control" placeholder="Email" TextMode="Email" runat="server"></asp:TextBox>
													</div>
												</div>
											</div>
										</div>
                                                
                                            </ContentTemplate>
                                        </asp:UpdatePanel>
									</div>
									<div class="tg-dashboardbox">
										<div class="tg-dashboardboxtitle">
											<h2>Doctor Photo</h2>
										</div>
										<div class="tg-box tg-profilephoto">
											<div class="row tg-rowmargin">
												<div class="col-md-8 col-sm-12 col-xs-12 tg-columnpadding">
													<div class="form-group tg-formgroup">
                                                        <asp:FileUpload ID="FileUpload2" runat="server" />

													</div>
												</div>
												<div class="col-md-2 col-sm-6 col-xs-12 tg-columnpadding">
													<div class="form-group tg-formgroup">
														<button class="tg-btn tg-btn-lg" type="submit">Reset</button>
													</div>
												</div>
												<div class="col-md-2 col-sm-6 col-xs-12 tg-columnpadding">
													<div class="form-group tg-formgroup">
														<button class="tg-btn tg-btn-lg" type="submit">Save</button>
													</div>
												</div>
											</div>
										</div>
								
									</div>
									<div class="tg-dashboardbox">
										<div class="tg-dashboardboxtitle">
											<h2>Doctor Login Authority</h2>
										</div>
										<div class="tg-box tg-experience tg-uiicons">
											<div class="row tg-rowmargin">
												<div class="col-sm-6 col-xs-12 tg-columnpadding">
													<div class="form-group tg-formgroup">
														<input type="text" name="designation" class="form-control" placeholder="Designation">
													</div>
												</div>
												<div class="col-sm-6 col-xs-12 tg-columnpadding">
													<div class="form-group tg-formgroup">
														<input type="text" name="companyname" class="form-control" placeholder="Company Name">
													</div>
												</div>
												<div class="col-sm-5 col-xs-12 tg-columnpadding">
													<div class="form-group tg-formgroup">
														<input type="text" name="startingdate" class="form-control" placeholder="Starting Date">
													</div>
												</div>
												<div class="col-sm-5 col-xs-12 tg-columnpadding">
													<div class="form-group tg-formgroup">
														<input type="text" name="endingdate" class="form-control" placeholder="Ending Date">
													</div>
												</div>
												<div class="col-sm-2 col-xs-12 tg-columnpadding">
													<div class="form-group tg-formgroup">
														<button class="tg-btn tg-btn-lg" type="submit">Add Now</button>
													</div>
												</div>
											</div>
											<ul class="tg-themelist tg-liststyledot tg-listdatastyle">
												<li> <span>Senior Consultant</span> <span>Altrincham Group Of Company</span> <span>June 2015 - Present</span> </li>
												<li> <span>Senior Therapist</span> <span>Sydney Trust Hospital</span> <span>Sep 2013 - Sep 2014</span> </li>
												<li> <span>Jr. Osteopathic</span> <span>Altrincham Group Company</span> <span>Apr 2012 - Apr 2013</span> </li>
											</ul>
										</div>
									</div>

									<div class="tg-dashboardbox">
										<div class="tg-dashboardboxtitle">
											<h2>Awards &amp; Recognitions</h2>
										</div>
										<div class="tg-box tg-uiicons">
											<div class="row tg-rowmargin">
												<div class="col-md-4 col-sm-12 col-xs-12 tg-columnpadding">
													<div class="form-group tg-formgroup"> <span class="tg-select">
														<select>
															<option>Awards &amp; Recognitions Title</option>
															<option>Awards &amp; Recognitions Title</option>
															<option>Awards &amp; Recognitions Title</option>
														</select>
														</span> </div>
												</div>
												<div class="col-md-4 col-sm-6 col-xs-12 tg-columnpadding">
													<div class="form-group tg-formgroup">
														<input type="text" name="Occasion" class="form-control" placeholder="Occasion">
													</div>
												</div>
												<div class="col-md-4 col-sm-6 col-xs-12 tg-columnpadding">
													<div class="form-group tg-formgroup">
														<input type="text" name="date" class="form-control" placeholder="Date">
													</div>
												</div>
												<div class="col-md-2 col-sm-3 col-xs-12 pull-right tg-columnpadding">
													<div class="form-group tg-formgroup">
														<button class="tg-btn tg-btn-lg" type="submit">add now</button>
													</div>
												</div>
											</div>
											<ul class="tg-themelist tg-liststyledot tg-listdatastyle">
												<li> <span> <em>Best Paper Presentation</em> <i class="fa fa-pencil"></i> <i class="fa fa-close"></i> </span> <span>Manchester University</span> <span>June 2013</span> </li>
												<li> <span> <em>Best Young Dentist Award</em> <i class="fa fa-pencil"></i> <i class="fa fa-close"></i> </span> <span>Sydney College Of Health</span> <span>May 2012</span> </li>
												<li> <span> <em>Fellowship and Certification</em> <i class="fa fa-pencil"></i> <i class="fa fa-close"></i> </span> <span>Altrincham School Of Medical</span> <span>Apr 2011</span> </li>
											</ul>
										</div>
									</div>

								</div>
								<div role="tabpanel" class="tab-pane" id="services">
									<div class="tg-dashboardbox tg-profilesettings">
										<div class="tg-dashboardboxtitle">
											<h2>Hospetail Details</h2>
										</div>
										<div class="tg-box tg-dashboardservices tg-uiicons">
											<div class="row tg-rowmargin">
												<div class="col-md-4 col-sm-6 col-xs-12 tg-columnpadding">
													<div class="form-group tg-formgroup"> 
                                                      <asp:DropDownList ID="ddlHospetal" CssClass="form-control" runat="server"></asp:DropDownList>
													</div>
												</div>
												<div class="col-md-4 col-sm-6 col-xs-12 tg-columnpadding">
													<div class="form-group tg-formgroup"> <span class="tg-select">
														<select>
															<option>Select/Type Sub Category</option>
															<option>Select/Type Sub Category</option>
															<option>Select/Type Sub Category</option>
														</select>
														</span> </div>
												</div>
												<div class="col-md-4 col-sm-6 col-xs-12 tg-columnpadding">
													<div class="form-group tg-formgroup">
														<input type="text" name="enterfeeperpatient" class="form-control" placeholder="Enter Fee Per Patient">
													</div>
												</div>
												<div class="col-md-2 col-sm-6 col-xs-12 pull-right tg-columnpadding">
													<button class="tg-btn tg-btn-lg" type="submit">add now</button>
												</div>
											</div>
											<div class="tg-dashboardboxtitle tg-margin">
												<h2>Services</h2>
											</div>
											<div class="tg-dashboardboxtitle tg-feetitle tg-margin">
												<h2>Fee Per Patient</h2>
											</div>
											<div class="tg-servicesbox">
												<div class="tg-servicesholder">
													<div class="tg-mainservice"> <em>Cancer Care</em> <i class="fa fa-pencil"></i> <i class="fa fa-close"></i> </div>
													<ul class="tg-themelist tg-liststyledot tg-listdatastyle tg-childservices">
														<li> <em>Eiusmod Tempor Incididunt</em> <i class="fa fa-pencil"></i> <i class="fa fa-close"></i> <span>$240</span> </li>
														<li> <em>Labore Et Dolore Magna Aliqua</em> <i class="fa fa-pencil"></i> <i class="fa fa-close"></i> </li>
														<li> <em>Ut Enim Ad Minim Veniam</em> <i class="fa fa-pencil"></i> <i class="fa fa-close"></i> <span>$240</span> </li>
														<li> <em>Quis Nostrud Exercitation Laboris</em> <i class="fa fa-pencil"></i> <i class="fa fa-close"></i> <span>$240</span> </li>
														<li> <em>Nisi Ut Aliquip Exea</em> <i class="fa fa-pencil"></i> <i class="fa fa-close"></i> <span>$240</span> </li>
														<li> <em>Commodo Consequat</em> <i class="fa fa-pencil"></i> <i class="fa fa-close"></i> <span>$240</span> </li>
														<li> <em>Duis Aute Cirure Dolor</em> <i class="fa fa-pencil"></i> <i class="fa fa-close"></i> <span>$240</span> </li>
													</ul>
												</div>
												<div class="tg-servicesholder">
													<div class="tg-mainservice"> <em>Cardiac Rehabilitation</em> <i class="fa fa-pencil"></i> <i class="fa fa-close"></i> </div>
													<ul class="tg-themelist tg-liststyledot tg-listdatastyle tg-childservices">
														<li> <em>Voluptate Velit</em> <i class="fa fa-pencil"></i> <i class="fa fa-close"></i> <span>$240</span> </li>
														<li> <em>Esse Cillum Dolore</em> <i class="fa fa-pencil"></i> <i class="fa fa-close"></i> <span>$240</span> </li>
														<li> <em>Eu Fugiat Nulla Pariatur</em> <i class="fa fa-pencil"></i> <i class="fa fa-close"></i> <span>$240</span> </li>
														<li> <em>Excepteur Sint Occaeca</em> <i class="fa fa-pencil"></i> <i class="fa fa-close"></i> <span>$240</span> </li>
														<li> <em>Cupidatat Non Proident</em> <i class="fa fa-pencil"></i> <i class="fa fa-close"></i> <span>$240</span> </li>
													</ul>
												</div>
												<div class="tg-servicesholder">
													<div class="tg-mainservice"> <em>Therapy</em> <i class="fa fa-pencil"></i> <i class="fa fa-close"></i> </div>
													<ul class="tg-themelist tg-liststyledot tg-listdatastyle tg-childservices">
														<li> <em>Deserunt Mollit</em> <i class="fa fa-pencil"></i> <i class="fa fa-close"></i> <span>$240</span> </li>
														<li> <em>Anim Id Est Laborum</em> <i class="fa fa-pencil"></i> <i class="fa fa-close"></i> <span>$240</span> </li>
														<li> <em>Sed Ut Perspiciatis</em> <i class="fa fa-pencil"></i> <i class="fa fa-close"></i> <span>$240</span> </li>
													</ul>
												</div>
											</div>
										</div>
									</div>
									<div class="tg-updateall"> <span class="tg-note">* Click <strong>update all changes</strong> to update latest added detail (s).</span>
										<button class="tg-btn" type="submit">update now</button>
									</div>
								</div>
								<div role="tabpanel" class="tab-pane" id="addphotos">
									<div class="tg-dashboardbox">
										<div class="tg-dashboardboxtitle">
											<h2>Add Photos</h2>
										</div>
										<div class="tg-box tg-profilephoto">
											<div class="row tg-rowmargin">
												<div class="col-md-8 col-sm-12 col-xs-12 tg-columnpadding">
													<div class="form-group tg-formgroup">
														<input type="text" name="firstname" class="form-control" placeholder="First Name">
													</div>
												</div>
												<div class="col-md-2 col-sm-6 col-xs-12 tg-columnpadding">
													<div class="form-group tg-formgroup">
														<button class="tg-btn tg-btn-lg" type="submit">Brows</button>
													</div>
												</div>
												<div class="col-md-2 col-sm-6 col-xs-12 tg-columnpadding">
													<div class="form-group tg-formgroup">
														<button class="tg-btn tg-btn-lg" type="submit">upload</button>
													</div>
												</div>
											</div>
										</div>
										<div class="tg-dashboardboxtitle">
											<h2>Uploaded Photos</h2>
										</div>
										<div class="tg-box tg-uploadedphotos">
											<ul class="tg-uploadedimggallery">
												<li>
													<div class="tg-galleryimg">
														<figure> <img src="images/thumbnails/img-01.jpg" alt="image description">
															<figcaption><i class="fa fa-close"></i></figcaption>
														</figure>
														<span class="tg-filename">img-01.jpg</span> </div>
												</li>
												<li>
													<div class="tg-galleryimg">
														<figure> <img src="images/thumbnails/img-02.jpg" alt="image description">
															<figcaption><i class="fa fa-close"></i></figcaption>
														</figure>
														<span class="tg-filename">img-02.jpg</span> </div>
												</li>
												<li>
													<div class="tg-galleryimg">
														<figure> <img src="images/thumbnails/img-03.jpg" alt="image description">
															<figcaption><i class="fa fa-close"></i></figcaption>
														</figure>
														<span class="tg-filename">img-03.jpg</span> </div>
												</li>
												<li>
													<div class="tg-galleryimg">
														<figure> <img src="images/thumbnails/img-04.jpg" alt="image description">
															<figcaption><i class="fa fa-close"></i></figcaption>
														</figure>
														<span class="tg-filename">img-04.jpg</span> </div>
												</li>
												<li>
													<div class="tg-galleryimg">
														<figure> <img src="images/thumbnails/img-05.jpg" alt="image description">
															<figcaption><i class="fa fa-close"></i></figcaption>
														</figure>
														<span class="tg-filename">img-05.jpg</span> </div>
												</li>
												<li>
													<div class="tg-galleryimg">
														<figure> <img src="images/thumbnails/img-06.jpg" alt="image description">
															<figcaption><i class="fa fa-close"></i></figcaption>
														</figure>
														<span class="tg-filename">img-06.jpg</span> </div>
												</li>
												<li>
													<div class="tg-galleryimg">
														<figure> <img src="images/thumbnails/img-07.jpg" alt="image description">
															<figcaption><i class="fa fa-close"></i></figcaption>
														</figure>
														<span class="tg-filename">img-07.jpg</span> </div>
												</li>
												<li>
													<div class="tg-galleryimg">
														<figure> <img src="images/thumbnails/img-08.jpg" alt="image description">
															<figcaption><i class="fa fa-close"></i></figcaption>
														</figure>
														<span class="tg-filename">img-01.jpg</span> </div>
												</li>
												<li>
													<div class="tg-galleryimg">
														<figure> <img src="images/thumbnails/img-09.jpg" alt="image description">
															<figcaption><i class="fa fa-close"></i></figcaption>
														</figure>
														<span class="tg-filename">img-02.jpg</span> </div>
												</li>
												<li>
													<div class="tg-galleryimg">
														<figure> <img src="images/thumbnails/img-10.jpg" alt="image description">
															<figcaption><i class="fa fa-close"></i></figcaption>
														</figure>
														<span class="tg-filename">img-03.jpg</span> </div>
												</li>
												<li>
													<div class="tg-galleryimg">
														<figure> <img src="images/thumbnails/img-11.jpg" alt="image description">
															<figcaption><i class="fa fa-close"></i></figcaption>
														</figure>
														<span class="tg-filename">img-04.jpg</span> </div>
												</li>
												<li>
													<div class="tg-galleryimg tg-uploading">
														<figure> <img src="images/thumbnails/img-12.jpg" alt="image description"> <span class="tg-loader"><i class="fa fa-spinner"></i></span> <span class="tg-uploadingbar"></span> </figure>
														<span class="tg-filename">file name</span> </div>
												</li>
												<li>
													<div class="tg-galleryimg tg-uploading">
														<figure> <img src="images/thumbnails/img-13.jpg" alt="image description"> <span class="tg-loader"><i class="fa fa-spinner"></i></span> <span class="tg-uploadingbar"></span> </figure>
														<span class="tg-filename">file name</span> </div>
												</li>
												<li>
													<div class="tg-galleryimg tg-uploading">
														<figure> <img src="images/thumbnails/img-14.jpg" alt="image description"> <span class="tg-loader"><i class="fa fa-spinner"></i></span> <span class="tg-uploadingbar"></span> </figure>
														<span class="tg-filename">file name</span> </div>
												</li>
												<li>
													<div class="tg-galleryimg tg-uploading">
														<figure> <img src="images/thumbnails/img-15.jpg" alt="image description"> <span class="tg-loader"><i class="fa fa-spinner"></i></span> <span class="tg-uploadingbar"></span> </figure>
														<span class="tg-filename">file name</span> </div>
												</li>
											</ul>
										</div>
									</div>
									<div class="tg-updateall"> <span class="tg-note">* Click <strong>update all changes</strong> to update latest added detail (s).</span>
										<button class="tg-btn" type="submit">update now</button>
									</div>
								</div>
								<div role="tabpanel" class="tab-pane" id="addbrochures">
									<div class="tg-dashboardbox">
										<div class="tg-dashboardboxtitle">
											<h2>Add Brochures</h2>
										</div>
										<div class="tg-box tg-profilephoto">
											<div class="row tg-rowmargin">
												<div class="col-md-8 col-sm-12 col-xs-12 tg-columnpadding">
													<div class="form-group tg-formgroup">
														<input type="text" name="firstname" class="form-control" placeholder="First Name">
													</div>
												</div>
												<div class="col-md-2 col-sm-6 col-xs-12 tg-columnpadding">
													<div class="form-group tg-formgroup">
														<button class="tg-btn tg-btn-lg" type="submit">Brows</button>
													</div>
												</div>
												<div class="col-md-2 col-sm-6 col-xs-12 tg-columnpadding">
													<div class="form-group tg-formgroup">
														<button class="tg-btn tg-btn-lg" type="submit">upload</button>
													</div>
												</div>
											</div>
										</div>
										<div class="tg-dashboardboxtitle">
											<h2>Uploaded Brochures</h2>
										</div>
										<div class="tg-box tg-uploadedphotos">
											<ul class="tg-uploadedimggallery">
												<li>
													<div class="tg-galleryimg">
														<figure> <img src="images/icons/icon-pdf.png" alt="image description">
															<figcaption><i class="fa fa-close"></i></figcaption>
														</figure>
														<span class="tg-filename">img-01.jpg</span> </div>
												</li>
												<li>
													<div class="tg-galleryimg">
														<figure> <img src="images/icons/icon-doc.png" alt="image description">
															<figcaption><i class="fa fa-close"></i></figcaption>
														</figure>
														<span class="tg-filename">img-02.jpg</span> </div>
												</li>
												<li>
													<div class="tg-galleryimg">
														<figure> <img src="images/icons/icon-pdf.png" alt="image description">
															<figcaption><i class="fa fa-close"></i></figcaption>
														</figure>
														<span class="tg-filename">img-03.jpg</span> </div>
												</li>
												<li>
													<div class="tg-galleryimg">
														<figure> <img src="images/icons/icon-pdf.png" alt="image description">
															<figcaption><i class="fa fa-close"></i></figcaption>
														</figure>
														<span class="tg-filename">img-04.jpg</span> </div>
												</li>
												<li>
													<div class="tg-galleryimg">
														<figure> <img src="images/icons/icon-pdf.png" alt="image description">
															<figcaption><i class="fa fa-close"></i></figcaption>
														</figure>
														<span class="tg-filename">img-05.jpg</span> </div>
												</li>
												<li>
													<div class="tg-galleryimg">
														<figure> <img src="images/icons/icon-pdf.png" alt="image description">
															<figcaption><i class="fa fa-close"></i></figcaption>
														</figure>
														<span class="tg-filename">img-06.jpg</span> </div>
												</li>
												<li>
													<div class="tg-galleryimg">
														<figure> <img src="images/icons/icon-doc.png" alt="image description">
															<figcaption><i class="fa fa-close"></i></figcaption>
														</figure>
														<span class="tg-filename">img-07.jpg</span> </div>
												</li>
												<li>
													<div class="tg-galleryimg">
														<figure> <img src="images/icons/icon-doc.png" alt="image description">
															<figcaption><i class="fa fa-close"></i></figcaption>
														</figure>
														<span class="tg-filename">img-01.jpg</span> </div>
												</li>
												<li>
													<div class="tg-galleryimg">
														<figure> <img src="images/icons/icon-doc.png" alt="image description">
															<figcaption><i class="fa fa-close"></i></figcaption>
														</figure>
														<span class="tg-filename">img-02.jpg</span> </div>
												</li>
												<li>
													<div class="tg-galleryimg">
														<figure> <img src="images/icons/icon-pdf.png" alt="image description">
															<figcaption><i class="fa fa-close"></i></figcaption>
														</figure>
														<span class="tg-filename">img-03.jpg</span> </div>
												</li>
												<li>
													<div class="tg-galleryimg tg-uploading">
														<figure> <img src="images/icons/icon-pdf.png" alt="image description"> <span class="tg-loader"><i class="fa fa-spinner"></i></span> <span class="tg-uploadingbar"></span> </figure>
														<span class="tg-filename">file name</span> </div>
												</li>
												<li>
													<div class="tg-galleryimg tg-uploading">
														<figure> <img src="images/icons/icon-doc.png" alt="image description"> <span class="tg-loader"><i class="fa fa-spinner"></i></span> <span class="tg-uploadingbar"></span> </figure>
														<span class="tg-filename">file name</span> </div>
												</li>
												<li>
													<div class="tg-galleryimg tg-uploading">
														<figure> <img src="images/icons/icon-pdf.png" alt="image description"> <span class="tg-loader"><i class="fa fa-spinner"></i></span> <span class="tg-uploadingbar"></span> </figure>
														<span class="tg-filename">file name</span> </div>
												</li>
												<li>
													<div class="tg-galleryimg tg-uploading">
														<figure> <img src="images/icons/icon-doc.png" alt="image description"> <span class="tg-loader"><i class="fa fa-spinner"></i></span> <span class="tg-uploadingbar"></span> </figure>
														<span class="tg-filename">file name</span> </div>
												</li>
											</ul>
										</div>
									</div>
									<div class="tg-updateall"> <span class="tg-note">* Click <strong>update all changes</strong> to update latest added detail (s).</span>
										<button class="tg-btn" type="submit">update now</button>
									</div>
								</div>
							</div>
						</div>
					</div>
        </form>
					

</asp:Content>
