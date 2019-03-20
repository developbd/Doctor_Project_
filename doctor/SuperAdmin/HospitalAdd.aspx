<%@ Page Title="" Language="C#" MasterPageFile="~/SuperAdmin/SPAdmin.Master" AutoEventWireup="true" CodeBehind="HospitalAdd.aspx.cs" Inherits="doctor.Admin.HospitalAdd" %>
<asp:Content ID="Content1" ContentPlaceHolderID="serviceproviderbody" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
					<div class="col-lg-9 col-md-8 col-sm-8 col-xs-12 pull-right">
						<div class="tg-dashboardtabs">							
							<div class="tab-content tg-dashboardtabcontent">
								<div role="tabpanel" class="tab-pane active" id="overview">
                                    <div class="tg-searchbulder">
                                                        <div id="tg-subcategories-two" class="tg-subcategories">
                                                            <div id="doctorscategory2" class="tg-tabcontent tg-active">

                                                                <div class="tg-dashboardbox">
<!--
                                                                    <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                                                                        <ContentTemplate>
-->

                                                                            <div class="tg-dashboardboxtitle">
                                                                                <h2>Hospital Details ( <asp:Label ID="lblCountryDDU" runat="server" ></asp:Label> )</h2>
                                                                            </div>
                                                                            <div class="tg-box tg-basicinformation">
                                                                                <div class="row tg-rowmargin">
                                                                                    <div class="col-md-4 col-sm-6 col-xs-12 tg-columnpadding">
                                                                                        <div class="form-group tg-formgroup">
                                                                                            <asp:DropDownList ID="ddlCountry" OnTextChanged="ddlCountry_TextChanged" AutoPostBack="true" CssClass="form-control" runat="server">
                                                                                            </asp:DropDownList>
                                                                                        </div>
                                                                                    </div>
                                                                                    <div class="col-md-4 col-sm-6 col-xs-12 tg-columnpadding">
                                                                                        <div class="form-group tg-formgroup">
                                                                                            <asp:DropDownList ID="ddlDvision" OnTextChanged="ddlDvision_TextChanged" AutoPostBack="true"  CssClass="form-control" runat="server">
                                                                                            </asp:DropDownList>
                                                                                        </div>
                                                                                    </div>
                                                                                    <div class="col-md-4 col-sm-6 col-xs-12 tg-columnpadding">
                                                                                        <div class="form-group tg-formgroup">
                                                                                            <asp:DropDownList ID="ddlDistrict" OnTextChanged="ddlDistrict_TextChanged" AutoPostBack="true"  CssClass="form-control" runat="server">
                                                                                            </asp:DropDownList>
                                                                                        </div>
                                                                                    </div>
                                                                                    <div class="col-md-4 col-sm-6 col-xs-12 tg-columnpadding">
                                                                                        <div class="form-group tg-formgroup">
                                                                                            <asp:DropDownList ID="ddlUpazila" CssClass="form-control" runat="server"></asp:DropDownList>
                                                                                        </div>
                                                                                    </div>
                                                                                    <div class="col-md-8 col-sm-6 col-xs-12 tg-columnpadding">
                                                                                        <div class="form-group tg-formgroup">
                                                                                            <asp:DropDownList ID="ddlHostipal" CssClass="form-control" runat="server" DataSourceID="SqlDataSource1" DataTextField="Name" DataValueField="Name">
                                                                                            </asp:DropDownList>
                                                                                            <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:DoctorDBCS %>' SelectCommand="SELECT * FROM [Hospital]"></asp:SqlDataSource>
                                                                                        </div>
                                                                                    </div>
                                                                                    <div class="col-md-4 col-sm-6 col-xs-12 tg-columnpadding">
                                                                                        <div class="form-group tg-formgroup">
                                                                                            <asp:DropDownList ID="ddlHospitalType" AutoPostBack="true"  CssClass="form-control" runat="server">
                                                                                                <asp:ListItem Value="0">Select Hospital Type</asp:ListItem>
                                                                                                <asp:ListItem Value="Government">Government</asp:ListItem>
                                                                                                <asp:ListItem Value="Private">Private</asp:ListItem>
                                                                                                <asp:ListItem Value="Ngo">Ngo</asp:ListItem>
                                                                                                <asp:ListItem Value="Floating">Floating</asp:ListItem>
                                                                                                <asp:ListItem Value="Air">Air</asp:ListItem>
                                                                                            </asp:DropDownList>
                                                                                        </div>
                                                                                    </div>
                                                                                    <div class="col-md-4 col-sm-6 col-xs-12 tg-columnpadding">
                                                                                        <div class="form-group tg-formgroup">
                                                                                            <asp:DropDownList ID="ddlHospitalShift" CssClass="form-control" runat="server">
                                                                                                <asp:ListItem Value="0">Select Hospital Shift</asp:ListItem>
                                                                                                <asp:ListItem Value="Day Only">Day Only</asp:ListItem>
                                                                                                <asp:ListItem Value="Night Only">Night Only</asp:ListItem>
                                                                                                <asp:ListItem Value="Day-Night">Day-Night</asp:ListItem>
                                                                                            </asp:DropDownList>
                                                                                        </div>
                                                                                    </div>

                                                                                    <div class="col-md-4 col-sm-6 col-xs-12 tg-columnpadding">
                                                                                        <div class="form-group tg-formgroup">
                                                                                            <asp:TextBox ID="txtHospitalRegNumber" placeholder="Hospital/ Clinic Registaion No" CssClass="form-control" runat="server"></asp:TextBox>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                            </div>
																<!--
                                                                        </ContentTemplate>
                                                                    </asp:UpdatePanel> -->
                                                                <asp:Panel ID="Panel1" Visible="true" GroupingText="Personal Details" runat="server">
                                                                    <div class="tg-dashboardbox">
                                                                        <div class="tg-dashboardboxtitle">
                                                                            <h2>Hospital Information</h2>
                                                                        </div>
                                                                        <div class="tg-box tg-basicinformation">
                                                                            <div class="row tg-rowmargin">
                                                                                <div class="col-md-12 col-sm-12 col-xs-12 tg-columnpadding">
                                                                                    <div class="form-group tg-formgroup">
                                                                                        <asp:TextBox ID="txtHospitalName" CssClass="form-control" placeholder="Hospital Name" runat="server"></asp:TextBox>
                                                                                    </div>
                                                                                </div>
                                                                                <div class="col-md-4 col-sm-6 col-xs-12 tg-columnpadding">
                                                                                    <div class="form-group tg-formgroup">
                                                                                        <asp:TextBox ID="txtHospitalWebsite" placeholder="Hospital Website (optional)" CssClass="form-control" runat="server"></asp:TextBox>
                                                                                    </div>
                                                                                </div>
                                                                                <div class="col-md-4 col-sm-6 col-xs-12 tg-columnpadding">
                                                                                    <div class="form-group tg-formgroup">
                                                                                        <asp:TextBox ID="txtHospitalEmail" TextMode="Email" placeholder="Hospital Email (optional)" CssClass="form-control" runat="server"></asp:TextBox>
                                                                                    </div>
                                                                                </div>
                                                                                <div class="col-md-4 col-sm-6 col-xs-12 tg-columnpadding">
                                                                                    <div class="form-group tg-formgroup">
                                                                                        <asp:TextBox ID="txtHospitalMoblie" placeholder="Hospital Moblie (Official)" MaxLength="11" CssClass="form-control" runat="server"></asp:TextBox>
                                                                                    </div>
                                                                                </div>
                                                                                <div class="col-md-12 col-sm-12 col-xs-12 tg-columnpadding">
                                                                                    <div class="form-group tg-formgroup">
                                                                                        <asp:TextBox ID="txtHospitalAddress" CssClass="form-control" placeholder="Hospital Physical Address" TextMode="MultiLine" Columns="10" runat="server"></asp:TextBox>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                    <div class="tg-dashboardbox">
                                                                        <div class="tg-dashboardboxtitle">
                                                                            <h2>Hospital Owner Information</h2>
                                                                        </div>
                                                                        <div class="tg-box tg-basicinformation">
                                                                            <div class="row tg-rowmargin">
                                                                                <asp:UpdatePanel ID="UpdatePanel4" runat="server">
                                                                                    <ContentTemplate>                                                                                    
                                                                                <div class="col-md-4 col-sm-6 col-xs-12 tg-columnpadding">
                                                                                    <div class="form-group tg-formgroup">
                                                                                        <asp:TextBox ID="txtHospitalOwnerFullname" CssClass="form-control" placeholder="Owner Full Name" runat="server"></asp:TextBox>
                                                                                    </div>
                                                                                </div>
                                                                                <div class="col-md-4 col-sm-6 col-xs-12 tg-columnpadding">
                                                                                    <div class="form-group tg-formgroup">
                                                                                        <asp:TextBox ID="txtHospitalOwnerMobile" CssClass="form-control" placeholder="Owner Mobile" MaxLength="11" runat="server"></asp:TextBox>
                                                                                    </div>
                                                                                </div>
                                                                                </ContentTemplate>
                                                                                </asp:UpdatePanel>
                                                                                <div class="col-md-4 col-sm-6 col-xs-12 tg-columnpadding">
                                                                                    <div class="form-group tg-formgroup">
                                                                                        <asp:DropDownList ID="ddlOwnerApproval" CssClass="form-control" runat="server">
                                                                                            <asp:ListItem Value="0">Owner Approval</asp:ListItem>
                                                                                            <asp:ListItem Value="Yes">Yes</asp:ListItem>
                                                                                            <asp:ListItem Value="No">No</asp:ListItem>
                                                                                        </asp:DropDownList>
                                                                                    </div>
                                                                                </div>                                                                              
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                    <div class="tg-dashboardbox">
                                                                        <div class="tg-dashboardboxtitle">
                                                                            <h2>Personal Information</h2>
                                                                        </div>
                                                                        <div class="tg-box tg-basicinformation">
                                                                            <div class="row tg-rowmargin">
                                                                                <div class="col-md-4 col-sm-6 col-xs-12 tg-columnpadding">
                                                                                    <div class="form-group tg-formgroup">
                                                                                        <asp:TextBox ID="txt_H_P_Fullname" CssClass="form-control" placeholder="Personal Full Name" runat="server"></asp:TextBox>
                                                                                    </div>
                                                                                </div>
                                                                                <div class="col-md-4 col-sm-6 col-xs-12 tg-columnpadding">
                                                                                    <div class="form-group tg-formgroup">
                                                                                        <asp:TextBox ID="txt_H_P_Email" CssClass="form-control" TextMode="Email" placeholder="Personal Email" runat="server"></asp:TextBox>
                                                                                    </div>
                                                                                </div>
                                                                                <div class="col-md-4 col-sm-6 col-xs-12 tg-columnpadding">
                                                                                    <div class="form-group tg-formgroup">
                                                                                        <asp:TextBox ID="txt_H_P_Mobile" CssClass="form-control" placeholder="Personal Mobile" MaxLength="11" runat="server"></asp:TextBox>
                                                                                    </div>
                                                                                </div>
                                                                                <div class="col-md-4 col-sm-6 col-xs-12 tg-columnpadding">
                                                                                    <div class="form-group tg-formgroup">
                                                                                        <asp:TextBox ID="txt_H_P_UserName" CssClass="form-control" placeholder="username" runat="server"></asp:TextBox>
                                                                                    </div>
                                                                                </div>
                                                                                <div class="col-md-4 col-sm-6 col-xs-12 tg-columnpadding">
                                                                                    <div class="form-group tg-formgroup">
                                                                                        <asp:TextBox ID="txt_H_P_Password" CssClass="form-control" TextMode="Password" placeholder="Password" runat="server"></asp:TextBox>
                                                                                    </div>
                                                                                </div>
                                                                                <div class="col-md-4 col-sm-6 col-xs-12 tg-columnpadding">
                                                                                    <div class="form-group tg-formgroup">
                                                                                        <asp:TextBox ID="txt_H_P_NID" CssClass="form-control" placeholder="NID/ Driving Licence/ Passport" runat="server"></asp:TextBox>
                                                                                    </div>
                                                                                </div>
                                                                                <div class="col-md-4 col-sm-6 col-xs-12 tg-columnpadding">
                                                                                    <div class="form-group tg-formgroup">
                                                                                        <asp:DropDownList ID="ddlPersonalGender" CssClass="form-control" runat="server">
                                                                                            <asp:ListItem Value="0">Select Gender</asp:ListItem>
                                                                                            <asp:ListItem Value="Male">Male</asp:ListItem>
                                                                                            <asp:ListItem Value="Female">Female</asp:ListItem>
                                                                                        </asp:DropDownList>
                                                                                    </div>
                                                                                </div>
                                                                                <div class="col-md-4 col-sm-6 col-xs-12 tg-columnpadding">
                                                                                    <div class="form-group tg-formgroup">
                                                                                        <asp:DropDownList ID="ddlWorkHere" CssClass="form-control" runat="server">
                                                                                            <asp:ListItem Value="0">Are You work Here</asp:ListItem>
                                                                                            <asp:ListItem Value="Yes">Yes</asp:ListItem>
                                                                                            <asp:ListItem Value="No">No</asp:ListItem>
                                                                                        </asp:DropDownList>
                                                                                    </div>
                                                                                </div>
                                                                                <div class="col-md-4 col-sm-6 col-xs-12 tg-columnpadding">
                                                                                    <div class="form-group tg-formgroup">
                                                                                        <asp:DropDownList ID="ddlExprience" CssClass="form-control" runat="server">
                                                                                            <asp:ListItem Value="0">Do You Have Experience</asp:ListItem>
                                                                                            <asp:ListItem Value="Yes">Yes</asp:ListItem>
                                                                                            <asp:ListItem Value="No">No</asp:ListItem>
                                                                                        </asp:DropDownList>
                                                                                    </div>
                                                                                </div>

                                                                                <div class="col-md-12 col-sm-12 col-xs-12 tg-columnpadding">
                                                                                    <div class="form-group tg-formgroup">
                                                                                        <asp:TextBox ID="txt_H_P_Address" CssClass="form-control" placeholder="(Nid/ Driving Licence/ Passport)  Address" TextMode="MultiLine" Columns="10" runat="server"></asp:TextBox>
                                                                                    </div>
                                                                                </div>

                                                                            </div>
                                                                        </div>
                                                                    </div> 

                                                                     <div class="tg-dashboardbox">
                                                                        <div class="tg-dashboardboxtitle">
                                                                            <h2>Photo Verification</h2>
                                                                        </div>
                                                                        <div class="tg-box tg-basicinformation">
                                                                            <div class="row tg-rowmargin">
                                                                                <label>Personal Photo</label>
                                                                                <div class="col-md-8 col-sm-6 col-xs-12 tg-columnpadding">
                                                                                    <div class="form-group tg-formgroup">
                                                                                        <asp:FileUpload ID="FileUploadPersonalPhoto" runat="server" />
                                                                                    </div>
                                                                                </div>
                                                                                <div class="col-md-4 col-sm-12 col-xs-12 tg-columnpadding">
                                                                                    <div class="form-group tg-formgroup">
                                                                                        <asp:ImageButton ID="ImagePersonalPhoto" AlternateText=" No Personal Photo" Width="150" Height="150" runat="server" />
                                                                                    </div>
                                                                                </div>
                                                                                <label>Hospital Photo </label>
                                                                                <div class="col-md-8 col-sm-6 col-xs-12 tg-columnpadding">
                                                                                    <div class="form-group tg-formgroup">
                                                                                        <asp:FileUpload ID="FileUploadHospitalPhoto" runat="server" />
                                                                                    </div>
                                                                                </div>
                                                                                <div class="col-md-4 col-sm-12 col-xs-12 tg-columnpadding">
                                                                                    <div class="form-group tg-formgroup">
                                                                                        <asp:ImageButton ID="ImageHospitalPhoto" AlternateText=" No Hospital Photo"  Width="150" Height="150" runat="server" />
                                                                                    </div>
                                                                                </div>
                                                                                <label>Owner Photo</label>
                                                                                <div class="col-md-8 col-sm-6 col-xs-12 tg-columnpadding">
                                                                                    <div class="form-group tg-formgroup">
                                                                                        <asp:FileUpload ID="FileUploadOwnerPhoto" runat="server" />
                                                                                    </div>
                                                                                </div>
                                                                                <div class="col-md-4 col-sm-12 col-xs-12 tg-columnpadding">
                                                                                    <div class="form-group tg-formgroup">
                                                                                        <asp:ImageButton ID="ImageOwnerPhoto" AlternateText=" No Owner Photo" Width="150" Height="150" runat="server" />
                                                                                    </div>
                                                                                </div>
                                                                                <label>Licence Photo</label>
                                                                                <div class="col-md-8 col-sm-6 col-xs-12 tg-columnpadding">
                                                                                    <div class="form-group tg-formgroup">
                                                                                        <asp:FileUpload ID="FileUploadLicencePhoto" runat="server" />
                                                                                    </div>
                                                                                </div>
                                                                                <div class="col-md-4 col-sm-12 col-xs-12 tg-columnpadding">
                                                                                    <div class="form-group tg-formgroup">
                                                                                        <asp:ImageButton ID="ImageLicencePhoto" AlternateText=" No Licence Photo" Width="150" Height="150" runat="server" />
                                                                                    </div>
                                                                                </div>

                                                                            </div>
                                                                        </div>
                                                                    </div> 
                                                                      <div class="tg-dashboardbox">
                                                                        <div class="tg-dashboardboxtitle">
                                                                            <h2>Select Permit</h2>
                                                                        </div>
                                                                        <div class="tg-box tg-languages tg-uiicons">
                                                                            <div class="row tg-rowmargin">
                                                                                <div class="col-md-4 col-sm-12 col-xs-12 tg-columnpadding">
                                                                                    <asp:CheckBox ID="chkAuthrise"  runat="server" /> Authrise
                                                                                </div>                                                                              
                                                                                <div class="col-md-4 col-sm-12 col-xs-12 tg-columnpadding">
                                                                                    <asp:CheckBox ID="chkVerify" runat="server" /> Verify
                                                                                </div>  
                                                                                <div class="col-md-4 col-sm-12 col-xs-12 tg-columnpadding">
                                                                                    <asp:CheckBox ID="chkLoginParmit" runat="server" /> LoginParmit
                                                                                </div>  
                                                                        </div>
                                                                    </div>
                                                                    </div>                                                                   
                                                                    <div class="tg-dashboardbox">
                                                                        <div class="tg-dashboardboxtitle">
                                                                            <h2>Note</h2>
                                                                        </div>
                                                                        <div class="tg-box tg-languages tg-uiicons">
                                                                            <div class="row tg-rowmargin">
                                                                                <div class="col-md-10 col-sm-9 col-xs-12 tg-columnpadding">
                                                                                    <h6>Fill all From and Click Registastion and Photo Varification Process Will Come.</h6>
                                                                                </div>
                                                                                <asp:UpdatePanel ID="UpdatePanel3" runat="server">
                                                                                    <ContentTemplate>
                                                                                        <div class="col-md-2 col-sm-3 col-xs-12 tg-columnpadding">
                                                                                            <div class="form-group tg-formgroup">
                                                                                                <asp:Button ID="btnHospitalRegistation" OnClick="btnHospitalRegistation_Click" CssClass="tg-btn tg-btn-lg" runat="server" Text="Registation" />
                                                                                                <asp:Button ID="btnUpdate" CssClass="tg-btn tg-btn-lg" OnClick="btnUpdate_Click" runat="server" Text="Update" />
                                                                                            </div>
                                                                                        </div>
                                                                                        <asp:Label ID="lblHostipalResult" runat="server"></asp:Label>
                                                                                        </div>
                                                                                    </ContentTemplate>
                                                                                </asp:UpdatePanel>

                                                                            </div>
                                                                        </div>
                                                                    </div>    
                                                                </asp:Panel>
                                                                       


                                                                    
                                                                </div>


                                                                
                                                            </div>
                                                        </div>
                                                    </div>
                                    

								</div>

							</div>
						</div>
                        </div>


</asp:Content>
