<%@ Page Title="" Language="C#" MasterPageFile="~/Doctor/Doctor.Master" AutoEventWireup="true" CodeBehind="Verify.aspx.cs" Inherits="doctor.Doctor.Verify" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="DocotorBody" runat="server">
     
    <div class="col-lg-9 col-md-8 col-sm-8 col-xs-12 pull-right">
							<div class="tg-dashboardsecuritysettings">
                                <div class="tg-dashboardbox">
                                    <div class="tg-dashboardboxtitle">
                                        <h2>Doctor Photo (*.JPG)(*.JPEG) File Required</h2>
                                    </div>
                                    <div class="tg-box tg-profilephoto">
                                        <div class="row tg-rowmargin">
                                            <div class="col-md-8 col-sm-12 col-xs-12 tg-columnpadding">
                                                <div class="form-group tg-formgroup">
                                                    <asp:FileUpload ID="FileUploadDoctorImage" runat="server" />
                                                </div>
                                            </div>
                                            <div class="col-md-12 col-sm-12 col-xs-12 tg-columnpadding">
                                                <div class="form-group tg-formgroup">
                                                    <asp:Image ID="imageDoctorPhoto" Width="150" Height="150" runat="server" />
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>    
                                                                                                                    
                                <div class="tg-dashboardbox">
                                    <div class="tg-dashboardboxtitle">
                                        <h2>Doctor license Photocopy (*.JPG)(*.JPEG) File Required</h2>
                                    </div>
                                    <div class="tg-box tg-profilephoto">
                                        <div class="row tg-rowmargin">
                                            <div class="col-md-8 col-sm-12 col-xs-12 tg-columnpadding">
                                                <div class="form-group tg-formgroup">
                                                    <asp:FileUpload ID="FileUploadDoctorLicenceInage" runat="server" />
                                                </div>
                                            </div>
                                            <div class="col-md-4 col-sm-12 col-xs-12 tg-columnpadding">
                                                <div class="form-group tg-formgroup">
                                                    <asp:Button ID="btnVerify" OnClick="btnVerify_Click" CssClass="tg-btn"  runat="server" Text="Upload Doctor/Licence Photo" />
                                                 </div>
                                            </div>
                                            <div class="col-md-12 col-sm-12 col-xs-12 tg-columnpadding">
                                                <div class="form-group tg-formgroup">
                                                    <asp:Image ID="imageLicencePhoto" Width="150" Height="150" runat="server" />
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <asp:Panel ID="pnlVerify" runat="server">
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
                                                    <asp:Button ID="btnVeryfy" OnClick="btnVeryfy_Click" CssClass="tg-btn"  runat="server" Text="Verify" />
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
                                </asp:Panel>
								
							</div>
						</div>
     
</asp:Content>
