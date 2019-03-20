<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" EnableEventValidation="false" CodeBehind="Verify.aspx.cs" Inherits="doctor.Verify" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="css/extra.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <main id="tg-main" class="tg-main tg-haslayout">
			<div class="container">
				<div class="row">
					<div id="tg-content" class="tg-content tg-dashboard tg-tuitiondashboard">
						<div class="col-lg-3 col-md-4 col-sm-4 col-xs-12 pull-left">
							<div class="tg-widgetdashboard">
								<div class="tg-widgetprofile">
									<figure class="tg-directpostimg">
										<a href="#">
                                            <asp:Image ID="DoctorImage" runat="server" /></a>
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
									<div class="tg-directposthead">
										<h3><a href="#"><asp:Label ID="lblDoctorName" runat="server"></asp:Label></a></h3>
										<div class="tg-subjects"><asp:Label ID="lblDoctorDeg" runat="server"></asp:Label></div>										
									</div>								
								</div>
								
							</div>
							<div class="tg-widgetdashboard">
								<div class="tg-dashboardnotification tg-pkgexpirey"><span>
                                    <asp:Label ID="lblSchedul_Date" runat="server" ></asp:Label></span>Doctor Schedul Date</div>
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
                            <div class="tg-widgetdashboard">
								<div class="tg-banneradd">
                                    <asp:PlaceHolder ID="pnlAdd3" runat="server"></asp:PlaceHolder>
								</div>
							</div>

						</div>

						<div class="col-lg-9 col-md-8 col-sm-8 col-xs-12 pull-right">
                            <asp:Panel ID="pnlCancleSchedul" runat="server">
                                <fieldset>
                                    <div class="tg-pkgexpireyandcounter">
                                        <div class="tg-pkgexpirey" style="width: 100%">
                                            <h3>Doctor Cancle This Schedul.</h3>
                                            <div class="tg-description">
                                                <p>
                                                    <asp:Label ID="lblReason" runat="server" ></asp:Label></p>
                                            </div>
                                        </div>
                                    </div>
                                </fieldset>
                            </asp:Panel>

                            <asp:Panel ID="pnlSchedulOK" runat="server">
								<fieldset>
									<div class="tg-dashboardbox">
										<div class="tg-dashboardboxtitle">
											<h2>Serial Package</h2>
										</div>
										<div class="tg-packagesbox">
											<div class="tg-packagesplanstabs">
												<ul class="tg-navpackageplans" role="tablist">
													<li role="presentation" class="active">
														<a href="#tg-basic" aria-controls="tg-basic" role="tab" data-toggle="tab">
															<div class="tg-pkgplan">
																<div class="tg-pkgplanhead">
																	<h3>Normal</h3>
																	<h4>from <span>&#2547;<asp:Label ID="lblAdditionalPrice_Taka_Top" runat="server"></asp:Label></span> Per Serial</h4>
																</div>
																<div class="tg-description">
																	<p>Fast Serial</p>
																	<p>Verified Doctor</p>
																	<p>Waiting List</p>
																</div>
																<span class="tg-btn">Serial Now</span>
															</div>
														</a>
													</li>
													<%--<li role="presentation">
														<a href="#tg-silver" aria-controls="tg-silver" role="tab" data-toggle="tab">
															<div class="tg-pkgplan">
																<div class="tg-pkgplanhead">
																	<h3>Emergency</h3>
																	<h4>from <span>&#2547;00</span> Per Serial</h4>
																</div>
																<div class="tg-description">
																	<p>Emergency Serial</p>
																	<p>Verified Doctor</p>
																	<p>No Waiting List</p>
																</div>
																<span class="tg-btn">Serial Now</span>
															</div>
														</a>
													</li>
													<li role="presentation">
														<a href="#tg-gold" aria-controls="tg-gold" role="tab" data-toggle="tab">
															<div class="tg-pkgplan">
																<div class="tg-pkgplanhead">
																	<h3>Emergency & Ambulance</h3>
																	<h4>from <span>&#2547;00</span> Per Serial</h4>
																</div>
																<div class="tg-description">
																	<p>Emergency & Ambulance Service</p>
																	
																</div>
																<span class="tg-btn">Serial Now</span>
															</div>
														</a>
													</li>--%>
												</ul>

												<div class="tab-content tg-pkgtabcontent">
													<div role="tabpanel" class="tab-pane fade in active" id="tg-basic">
														<div class="tg-summary">
															<div class="tg-tablescroll">
																<table class="table table-striped tg-dashboardtable">
																	<thead>
																		<tr>
																			<th colspan="2">Normal Serial</th>
																		</tr>
																	</thead>
																	<tbody>
                                                                        <tr>
																			<td>Serial Price <sup class="colorsup"><asp:Label ID="lblSerial_Title" runat="server"></asp:Label></sup></td>
																			<td>&#2547; <asp:Label ID="lblSerial_Taka" runat="server"></asp:Label></td>
																		</tr>
																		<tr>
																			<td>Additional Price <sup class="colorsup"><asp:Label ID="lblAdditionalPrice_Title" runat="server"></asp:Label></sup></td>
																			<td>&#2547; <asp:Label ID="lblAdditionalPrice_Taka" runat="server"></asp:Label></td>
																		</tr>
                                                                        <tr>
																			<td>Discount <sup class="colorsup"><asp:Label ID="lblDiscount_Title" runat="server"></asp:Label></sup></td>
																			<td>&#2547; <asp:Label ID="lblDiscount_Taka" runat="server"></asp:Label></td>
																		</tr>
                                                                        <tr>
																			<td>Vat <sup class="colorsup"><asp:Label ID="lblVat_Title" runat="server"></asp:Label></sup></td>
																			<td>&#2547; <asp:Label ID="lblVat_Taka" runat="server"></asp:Label></td>
																		</tr>                                                                        
																		<tr>
																			<td>Total</td>
																			<td>&#2547; <asp:Label ID="lblTotal_Taka" runat="server"></asp:Label></td>
																		</tr>
																	</tbody>
																</table>
															</div>
														</div>
                                                        
                                                        <asp:Panel ID="pnlNoLogin" runat="server">
                                                            <div class="tg-summary">
                                                                <div class="tg-tablescroll">
                                                                    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
                                                                    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                                                                        <ContentTemplate>
                                                                            <table class="table table-striped tg-dashboardtable">
                                                                                <thead>
                                                                                    <tr>
                                                                                        <th colspan="4">Patient Details</th>
                                                                                    </tr>
                                                                                </thead>
                                                                                <tbody>
                                                                                    <tr>
                                                                                        <td>
                                                                                            <asp:TextBox ID="txtPatientName" placeholder="Patient Name" CssClass="form-control" runat="server"></asp:TextBox></td>
                                                                                        <td>
                                                                                            <asp:TextBox ID="txtEmail" placeholder="Email" TextMode="Email" CssClass="form-control" runat="server"></asp:TextBox></td>
                                                                                        <td>
                                                                                            <asp:TextBox ID="txtMobileNo" placeholder="Mobile No" MaxLength="11" CssClass="form-control" runat="server"></asp:TextBox></td>
                                                                                    </tr>
                                                                                    <tr>

                                                                                        <td>
                                                                                            <asp:DropDownList ID="ddlDivision" AutoPostBack="true" OnTextChanged="ddlDivision_TextChanged" CssClass=" form-control" runat="server"></asp:DropDownList>
                                                                                        </td>
                                                                                        <td>
                                                                                            <asp:DropDownList ID="ddlDistrict" AutoPostBack="true" OnTextChanged="ddlDistrict_TextChanged" CssClass=" form-control" runat="server"></asp:DropDownList>
                                                                                        </td>
                                                                                        <td>
                                                                                            <asp:DropDownList ID="ddlUpazila" CssClass=" form-control" runat="server"></asp:DropDownList>
                                                                                        </td>

                                                                                    </tr>
                                                                                </tbody>
                                                                            </table>
                                                                        </ContentTemplate>
                                                                    </asp:UpdatePanel>
                                                                </div>
                                                            </div>
                                                        </asp:Panel>

                                                        <asp:Panel ID="pnlLogin" runat="server">
                                                            <div class="tg-summary">
                                                                <div class="tg-tablescroll">
                                                                    <table class="table table-striped tg-dashboardtable">
                                                                        <thead>
                                                                            <tr>
                                                                                <th colspan="2">Patient Details</th>
                                                                            </tr>
                                                                        </thead>
                                                                        <tbody>
                                                                            <tr>
                                                                                <td>
                                                                                    Patient Name: 
                                                                                </td>
                                                                                <td>
                                                                                    <asp:TextBox ID="txtPatientName_Auto" placeholder="Patient Name" CssClass="form-control" runat="server"></asp:TextBox>
                                                                                </td>
                                                                            </tr>                                                                           
                                                                        </tbody>
                                                                    </table>
                                                                </div>
                                                            </div>
                                                        </asp:Panel>

                                                        <asp:Panel ID="pnlPayment" runat="server">
                                                            <div class="tg-paymentoption">
                                                                <div class="tg-tablescroll">
                                                                    <table class="table table-striped tg-dashboardtable">
                                                                        <thead>
                                                                            <tr>
                                                                                <th colspan="2">Payment Options</th>
                                                                            </tr>
                                                                        </thead>
                                                                        <tbody>
                                                                            <tr>
                                                                                <td>
                                                                                    <img src="images/icons/icon-31.png" alt="image description">
                                                                                    Bank Transfer</td>
                                                                                <td>&thinsp;<asp:RadioButton ID="RBBank" GroupName="a" runat="server" /></td>
                                                                            </tr>
                                                                            <tr>
                                                                                <td>
                                                                                    <img src="images/icons/icon-32.png" alt="image description">
                                                                                    Paypal</td>
                                                                                <td>&thinsp;<asp:RadioButton ID="RBPaypal" GroupName="a" runat="server" /></td>
                                                                            </tr>
                                                                            <tr>
                                                                                        <td>
                                                                                    <img src="images/visa.jpg" width="25" height="22" alt="image description">
                                                                                    Visa</td>
                                                                                <td>&thinsp;<asp:RadioButton ID="RBVisa" GroupName="a" runat="server" /></td>
                                                                            </tr>
                                                                            <tr>
                                                                                <td>
                                                                                    <img src="images/mastercard.gif" width="25" height="22" alt="image description">
                                                                                    Master Card</td>
                                                                                <td>&thinsp;<asp:RadioButton ID="RBMasterCard" GroupName="a" runat="server" /></td>
                                                                            </tr>
                                                                            <tr>
                                                                                <td>
                                                                                    <img src="images/bkesk.png" width="25" height="22" alt="image description">
                                                                                    Bkash</td>
                                                                                <td>&thinsp;<asp:RadioButton ID="RBbkash" GroupName="a" runat="server" /></td>
                                                                            </tr>
                                                                            <tr>
                                                                                <td>
                                                                                    <img src="images/roket.png" width="25" height="22" alt="image description">
                                                                                    Rocket</td>
                                                                                <td>&thinsp;<asp:RadioButton ID="RBRocket" GroupName="a" runat="server" /></td>
                                                                            </tr>
                                                                        </tbody>
                                                                    </table>
                                                                </div>
                                                            </div>
                                                        </asp:Panel>
														<div class="tg-pkgfoot">	
                                                            <asp:Button ID="btnSerial" OnClick="btnSerial_Click" CssClass="tg-btn" runat="server" Text="Serial Now" />	
                                                            <asp:Label ID="lblResult" Font-Bold="true" runat="server" ></asp:Label>													
														</div>

													</div>
													<div role="tabpanel" class="tab-pane fade" id="tg-silver">
														<div class="tg-summary">
															<div class="tg-tablescroll">
																<table class="table table-striped tg-dashboardtable">
																	<thead>
																		<tr>
																			<th colspan="2">Not Available For Now.</th>
																		</tr>
																	</thead>
																	<%--<tbody>
																		<tr>
																			<td>Package (Silver Package)</td>
																			<td>$15.00</td>
																		</tr>
																		<tr>
																			<td>Total</td>
																			<td>$15.00</td>
																		</tr>
																	</tbody>--%>
																</table>
															</div>
														</div>
														<%--<div class="tg-paymentoption">
															<div class="tg-tablescroll">
																<table class="table table-striped tg-dashboardtable">
																	<thead>
																		<tr>
																			<th colspan="2">Payment Options</th>
																		</tr>
																	</thead>
																	<tbody>
																		<tr>
																			<td><img src="images/icons/icon-31.png" alt="image description"> Bank Transfer</td>
																			<td>&thinsp;</td>
																		</tr>
																		<tr>
																			<td><img src="images/icons/icon-32.png" alt="image description"> Paypal</td>
																			<td>&thinsp;</td>
																		</tr>
																		<tr>
																			<td><img src="images/icons/icon-33.png" alt="image description"> Paypal Recurring Payment</td>
																			<td>&thinsp;</td>
																		</tr>
																		<tr>
																			<td><img src="images/icons/icon-34.png" alt="image description"> Credit Card (Stripe)</td>
																			<td>&thinsp;</td>
																		</tr>
																	</tbody>
																</table>
															</div>
														</div>
														<div class="tg-pkgfoot">
															<span class="tg-checkbox">
																<input type="checkbox" id="currentjob2" name="currentjob" value="I’m doing this currently.">
																<label for="currentjob2">I have read the <strong>terms and conditions</strong> and accept them.</label>
															</span>
															<a class="tg-btn" href="#">proceed Now</a>
														</div>--%>
													</div>
													<div role="tabpanel" class="tab-pane fade" id="tg-gold">
														<div class="tg-summary">
															<div class="tg-tablescroll">
																<table class="table table-striped tg-dashboardtable">
																	<thead>
																		<tr>
																			<th colspan="2">No Available for Now</th>
																		</tr>
																	</thead>
																	<%--<tbody>
																		<tr>
																			<td>Package (Silver Package)</td>
																			<td>$25.00</td>
																		</tr>
																		<tr>
																			<td>Total</td>
																			<td>$25.00</td>
																		</tr>
																	</tbody>--%>
																</table>
															</div>
														</div>
														<%--<div class="tg-paymentoption">
															<div class="tg-tablescroll">
																<table class="table table-striped tg-dashboardtable">
																	<thead>
																		<tr>
																			<th colspan="2">Payment Options</th>
																		</tr>
																	</thead>
																	<tbody>
																		<tr>
																			<td><img src="images/icons/icon-31.png" alt="image description"> Bank Transfer</td>
																			<td>&thinsp;</td>
																		</tr>
																		<tr>
																			<td><img src="images/icons/icon-32.png" alt="image description"> Paypal</td>
																			<td>&thinsp;</td>
																		</tr>
																		<tr>
																			<td><img src="images/icons/icon-33.png" alt="image description"> Paypal Recurring Payment</td>
																			<td>&thinsp;</td>
																		</tr>
																		<tr>
																			<td><img src="images/icons/icon-34.png" alt="image description"> Credit Card (Stripe)</td>
																			<td>&thinsp;</td>
																		</tr>
																	</tbody>
																</table>
															</div>
														</div>
														<div class="tg-pkgfoot">
															<span class="tg-checkbox">
																<input type="checkbox" id="currentjob3" name="currentjob" value="I’m doing this currently.">
																<label for="currentjob3">I have read the <strong>terms and conditions</strong> and accept them.</label>
															</span>
															<a class="tg-btn" href="#">proceed Now</a>
														</div>--%>
													</div>
												</div>

											</div>
										</div>
									</div>
								</fieldset>
						    </asp:Panel>
						</div>
					</div>
				</div>
			</div>
		</main>
</asp:Content>
