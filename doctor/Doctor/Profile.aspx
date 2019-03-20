<%@ Page Title="" Language="C#" MasterPageFile="~/Doctor/Doctor.Master" EnableEventValidation="false" AutoEventWireup="true" CodeBehind="Profile.aspx.cs" Inherits="doctor.Doctor.Profile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="DocotorBody" runat="server">
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
                                                                <span>Full Name <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ForeColor="Red" ControlToValidate="txtFullName"   runat="server" ErrorMessage="*"></asp:RequiredFieldValidator>	</span>
                                                            </div>
															<div class="col-md-8">													
                                                                    <asp:TextBox ID="txtFullName" placeholder="FullName" CssClass="form-control" runat="server"></asp:TextBox>	
                                                                
															</div>
														</div>
													</div>
                                                    <div class="col-md-6 col-sm-6 col-xs-12 tg-columnpadding">
														<div class="form-group tg-formgroup">
                                                            <div class="col-md-4">
                                                                <span>Qualification<asp:RequiredFieldValidator ID="RequiredFieldValidator2" ForeColor="Red" ControlToValidate="txtQualification"   runat="server" ErrorMessage="*"></asp:RequiredFieldValidator></span>
                                                            </div>
															<div class="col-md-8">													
                                                                    <asp:TextBox ID="txtQualification" CssClass="form-control" placeholder="Qualification" runat="server"></asp:TextBox>																
															</div>
														</div>
													</div>
													  <div class="col-md-6 col-sm-6 col-xs-12 tg-columnpadding">
														<div class="form-group tg-formgroup">
                                                            <div class="col-md-4">
                                                                <span>Categories</span>
                                                            </div>
															<div class="col-md-8">													
                                                                    <asp:TextBox ID="txtCategories" Enabled="false" CssClass="form-control" runat="server"></asp:TextBox>																
															</div>
														</div>
													</div>
                                                      <div class="col-md-6 col-sm-6 col-xs-12 tg-columnpadding">
														<div class="form-group tg-formgroup">
                                                            <div class="col-md-4">
                                                                <span>Expertise <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ForeColor="Red" ControlToValidate="txtQualification"   runat="server" ErrorMessage="*"></asp:RequiredFieldValidator></span>
                                                            </div>
															<div class="col-md-8">													
                                                                    <asp:TextBox ID="txtExpertise" placeholder="Expertise" CssClass="form-control" runat="server"></asp:TextBox>																
															</div>
														</div>
													</div>
                                                      <div class="col-md-6 col-sm-6 col-xs-12 tg-columnpadding">
														<div class="form-group tg-formgroup">
                                                            <div class="col-md-4">
                                                                <span>Reg Number</span>
                                                            </div>
															<div class="col-md-8">													
                                                                    <asp:TextBox ID="txtRegistationNumber" Enabled="false" CssClass="form-control" runat="server"></asp:TextBox>																
															</div>
														</div>
													</div>
                                                    <div class="col-md-6 col-sm-6 col-xs-12 tg-columnpadding">
														<div class="form-group tg-formgroup">
                                                            <div class="col-md-4">
                                                                <span>Profession <asp:RequiredFieldValidator ID="RequiredFieldValidator4" ForeColor="Red" ControlToValidate="txtPresentProfession"   runat="server" ErrorMessage="*"></asp:RequiredFieldValidator></span>
                                                            </div>
															<div class="col-md-8">													
                                                                    <asp:TextBox ID="txtPresentProfession" placeholder="Present Profession" CssClass="form-control" runat="server"></asp:TextBox>																
															</div>
														</div>
													</div>
                                                    <div class="col-md-6 col-sm-6 col-xs-12 tg-columnpadding">
														<div class="form-group tg-formgroup">
                                                            <div class="col-md-4">
                                                                <span>NID</span>
                                                            </div>
															<div class="col-md-8">													
                                                                    <asp:TextBox ID="txtNID" Enabled="false" CssClass="form-control" runat="server"></asp:TextBox>																
															</div>
														</div>
													</div>
                                                    <div class="col-md-6 col-sm-6 col-xs-12 tg-columnpadding">
														<div class="form-group tg-formgroup">
                                                            <div class="col-md-4">
                                                                <span>Mobile</span>
                                                            </div>
															<div class="col-md-8">													
                                                                    <asp:TextBox ID="txtMobile" Enabled="false" CssClass="form-control" runat="server"></asp:TextBox>																
															</div>
														</div>
													</div>
                                                    <div class="col-md-6 col-sm-6 col-xs-12 tg-columnpadding">
														<div class="form-group tg-formgroup">
                                                            <div class="col-md-4">
                                                                <span>Telephone</span>
                                                            </div>
															<div class="col-md-8">													
                                                                    <asp:TextBox ID="txtTelephone" placeholder="Telephone Number (Optional)" CssClass="form-control" runat="server"></asp:TextBox>																
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
                                                    <div class="col-md-6 col-sm-6 col-xs-12 tg-columnpadding">
														<div class="form-group tg-formgroup">
                                                            <div class="col-md-4">
                                                                <span>Re-Password</span>
                                                            </div>
															<div class="col-md-8">													
                                                                    <asp:TextBox ID="txtRePassword" placeholder="Retry Password" TextMode="Password" CssClass="form-control" runat="server"></asp:TextBox>																
															</div>
														</div>
													</div>                                                    
                                                    <div class="col-md-12 col-sm-12 col-xs-12 tg-columnpadding">
														<div class="form-group tg-formgroup">
                                                            <div class="col-md-4">
                                                                <span>Address <asp:RequiredFieldValidator ID="RequiredFieldValidator5" ForeColor="Red" ControlToValidate="txtAddress" runat="server" ErrorMessage="*"></asp:RequiredFieldValidator></span>
                                                            </div>
															<div class="col-md-8">													
                                                                    <asp:TextBox ID="txtAddress" placeholder="Present Address" TextMode="MultiLine" CssClass="form-control" runat="server"></asp:TextBox>																
															</div>
														</div>
													</div>
                                                    <div class="col-md-12 col-sm-12 col-xs-12 tg-columnpadding">
														<div class="form-group tg-formgroup">
                                                            <div class="col-md-4">
                                                                <span>Doctor Bio</span>
                                                            </div>
															<div class="col-md-8">													
                                                                    <asp:TextBox ID="txtDoctorBio" placeholder="Docetor Information or Personal Data to Share People.  (Optional)" TextMode="MultiLine" CssClass="form-control" runat="server"></asp:TextBox>																
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
                                <asp:Label ID="lblResult" Font-Bold="true" runat="server" ></asp:Label>
							</div>
						</div>
</asp:Content>
