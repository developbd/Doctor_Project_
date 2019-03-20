<%@ Page Title="" Language="C#" MasterPageFile="~/Hospital/Hospital.Master" AutoEventWireup="true" CodeBehind="Verify.aspx.cs" Inherits="doctor.Hospital.Verify" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="HospitalBody" runat="server">
    <div class="col-lg-9 col-md-8 col-sm-8 col-xs-12 pull-right">
							<div class="tg-dashboardsecuritysettings">
                                <div class="tg-dashboardbox">
                                    <div class="tg-dashboardboxtitle">
                                        <h2>Your Personal Photo <sup>(*.JPG)(*.JPEG) File Required</sup></h2>
                                    </div>
                                    <div class="tg-box tg-profilephoto">
                                        <div class="row tg-rowmargin">
                                            <div class="col-md-8 col-sm-12 col-xs-12 tg-columnpadding">
                                                <div class="form-group tg-formgroup">
                                                    <asp:FileUpload ID="FileUploadPersonalImage" runat="server" />
                                                </div>
                                            </div>
                                            <div class="col-md-4 col-sm-12 col-xs-12 tg-columnpadding">
                                                 <div class="form-group tg-formgroup">
                                                     <asp:Button ID="btnPersonalImage" OnClick="btnPersonalImage_Click" CssClass="btn btn-info" runat="server" Text="Upload" />
                                                     <asp:Label ID="lblPersonalImageResult" Font-Bold="true" runat="server"></asp:Label>
                                                 </div>
                                            </div>
                                            <div class="col-md-12 col-sm-12 col-xs-12 tg-columnpadding">
                                                <div class="form-group tg-formgroup">
                                                    <asp:Image ID="imagePersonalPhoto" Width="150" Height="150" runat="server" />
                                                </div>
                                            </div>

                                        </div>
                                    </div>
                                </div>    
                                <asp:Panel ID="pnlOwnerPhoto" runat="server">
                                <div class="tg-dashboardbox">
                                    <div class="tg-dashboardboxtitle">
                                        <h2>Owner Photo <sup>(*.JPG)(*.JPEG) File Required</sup></h2>
                                    </div>
                                    <div class="tg-box tg-profilephoto">
                                        <div class="row tg-rowmargin">
                                            <div class="col-md-8 col-sm-12 col-xs-12 tg-columnpadding">
                                                <div class="form-group tg-formgroup">
                                                    <asp:FileUpload ID="FileUploadOwnerPhoto" runat="server" />
                                                </div>
                                            </div>
                                             <div class="col-md-4 col-sm-12 col-xs-12 tg-columnpadding">
                                                 <div class="form-group tg-formgroup">
                                                     <asp:Button ID="btnOwnerPhoto" OnClick="btnOwnerPhoto_Click" CssClass="btn btn-info" runat="server" Text="Upload" />
                                                     <asp:Label ID="lblOwnerResult" Font-Bold="true" runat="server"></asp:Label>
                                                 </div>
                                            </div>
                                            <div class="col-md-12 col-sm-12 col-xs-12 tg-columnpadding">
                                                <div class="form-group tg-formgroup">
                                                     <asp:Image ID="imageOwnerPhoto" Width="150" Height="150" runat="server" />
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                      </asp:Panel>                                                                         
                                <div class="tg-dashboardbox">
                                    <div class="tg-dashboardboxtitle">
                                        <h2>Hospital Outside Photo <sup>(*.JPG)(*.JPEG) File Required</sup></h2>
                                    </div>
                                    <div class="tg-box tg-profilephoto">
                                        <div class="row tg-rowmargin">
                                            <div class="col-md-8 col-sm-12 col-xs-12 tg-columnpadding">
                                                <div class="form-group tg-formgroup">
                                                    <asp:FileUpload ID="FileUploadHospitalOutsidePhoto" runat="server" />
                                                </div>
                                            </div>
                                             <div class="col-md-4 col-sm-12 col-xs-12 tg-columnpadding">
                                                 <div class="form-group tg-formgroup">
                                                     <asp:Button ID="btnHospitalOutside" OnClick="btnHospitalOutside_Click" CssClass="btn btn-info" runat="server" Text="Upload" />
                                                     <asp:Label ID="lblHospitalOutside" Font-Bold="true" runat="server"></asp:Label>
                                                 </div>
                                            </div>
                                            <div class="col-md-12 col-sm-12 col-xs-12 tg-columnpadding">
                                                <div class="form-group tg-formgroup">
                                                    <asp:Image ID="imageHospitalOutsidePhoto" Width="150" Height="150" runat="server" />
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div class="tg-dashboardbox">
                                    <div class="tg-dashboardboxtitle">
                                        <h2>Hospital License Photocopy  <sup>(*.JPG)(*.JPEG) Color File Required</sup></h2>
                                    </div>
                                    <div class="tg-box tg-profilephoto">
                                        <div class="row tg-rowmargin">
                                            <div class="col-md-8 col-sm-12 col-xs-12 tg-columnpadding">
                                                <div class="form-group tg-formgroup">
                                                    <asp:FileUpload ID="FileUploadHospitalLicencePhoto" runat="server" />
                                                </div>
                                            </div>
                                             <div class="col-md-4 col-sm-12 col-xs-12 tg-columnpadding">
                                                 <div class="form-group tg-formgroup">
                                                     <asp:Button ID="btnHospitalLicence" OnClick="btnHospitalLicence_Click" CssClass="btn btn-info" runat="server" Text="Upload" />
                                                     <asp:Label ID="lblHospitalLicence" Font-Bold="true" runat="server"></asp:Label>
                                                 </div>
                                            </div>
                                            <div class="col-md-12 col-sm-12 col-xs-12 tg-columnpadding">
                                                <div class="form-group tg-formgroup">
                                                     <asp:Image ID="imageHospitalLicencePhoto" Width="150" Height="150" runat="server" />
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <asp:Panel ID="pnlVerification" runat="server">
                                    <div class="tg-dashboardbox">
                                        <div class="tg-dashboardboxtitle">
                                            <h2>Email/ Mobile Verification Code</h2>
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
                                                        <asp:Button ID="btnVerify" OnClick="btnVerify_Click" CssClass="tg-btn" runat="server" Text="Email/ Mobile Verified" />
                                                    </div>
                                                </div>
                                                <div class="col-md-12 col-sm-6 col-xs-12 tg-columnpadding">
                                                    <div class="form-group tg-formgroup">
                                                        <asp:Label ID="lblResult" runat="server" Font-Bold="true" ForeColor="Red"></asp:Label>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </asp:Panel>


								
							</div>
						</div>
</asp:Content>
