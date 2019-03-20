<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Advertisement.ascx.cs" Inherits="doctor.Advertisement" %>
<div class="col-md-3 col-sm-4 col-xs-12">
							<aside id="tg-sidebar" class="tg-sidebar">
								<div class="tg-widget">
									<div class="tg-widgettitle">
										<h3>Addvertisement</h3>
									</div>
                                    <div class="tg-widget">
                                        <div class="tg-banneradd">
                                              <asp:PlaceHolder ID="pnlAdd" runat="server"></asp:PlaceHolder>	
                                        </div>
                                    </div>
									
								</div>
								<div class="tg-widget">
									<div class="tg-widgettitle">
										<h3>Related Professionals</h3>
									</div>
									<div class="tg-widgetcontent">
										<ul>
                                            <asp:PlaceHolder ID="pnlDoctors" runat="server"></asp:PlaceHolder>							
										</ul>
									</div>
								</div>
								<%--<div class="tg-widget">
									<div class="tg-widgettitle">
										<h3>Brochures</h3>
									</div>
									<div class="tg-widgetcontent tg-widgetbrochures">
										<ul>
											<li>
												<a href="#">
													<span>Official Brochures 2017.pdf</span>
													<i class="fa fa-download"></i>
												</a>
											</li>
											<li>
												<a href="#">
													<span>Official Brochures 2016.pdf</span>
													<i class="fa fa-download"></i>
												</a>
											</li>
											<li>
												<a href="#">
													<span>Official Brochures 2015.pdf</span>
													<i class="fa fa-download"></i>
												</a>
											</li>
											<li>
												<a href="#">
													<span>Official Brochures 2014.pdf</span>
													<i class="fa fa-download"></i>
												</a>
											</li>
											<li>
												<a href="#">
													<span>Official Brochures 2014.pdf</span>
													<i class="fa fa-download"></i>
												</a>
											</li>
										</ul>
									</div>
								</div>--%>
                                
								<%--<div class="tg-widget">
									<div class="tg-widgettitle">
										<h3>Report This User</h3>
									</div>
									<div class="tg-widgetcontent">
										<form class="tg-formtheme tg-formreportuser">
											<fieldset>
												<input type="text" class="form-control" name="reportsubject" placeholder="Report Subject">
												<textarea class="form-control" placeholder="Report Detail"></textarea>
												<button class="tg-btn tg-btn-lg" type="submit">Submit Report Now</button>
											</fieldset>
										</form>
									</div>
								</div>--%>

								<div class="tg-widget">
									<div class="tg-banneradd">
                                        <asp:PlaceHolder ID="pnlAdd2" runat="server"></asp:PlaceHolder>										                                   
									</div>
								</div>
                                <div class="tg-widget">
									<div class="tg-banneradd">
                                        <asp:PlaceHolder ID="pnlAdd3" runat="server"></asp:PlaceHolder>                                      
									</div>
								</div>
							</aside>
						</div>