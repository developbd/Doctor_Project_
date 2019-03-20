<%@ Page Title="" Language="C#" MasterPageFile="~/Hospital/Hospital.Master" AutoEventWireup="true" CodeBehind="AddDoctor.aspx.cs" Inherits="doctor.Hospital.AddDoctor" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="HospitalBody" runat="server">
     <div class="col-lg-9 col-md-8 col-sm-8 col-xs-12 pull-right">
        <div class="tg-dashboardbox">
            <div class="tg-dashboardboxtitle">
                <h2>Doctor Details</h2>
            </div>
            <div class="tg-box tg-basicinformation">
                <div class="row tg-rowmargin">
                    <div class="col-md-5 col-sm-6 col-xs-12 tg-columnpadding">
                        <div class="form-group tg-formgroup">
                            <asp:TextBox ID="txtDoctorFullName" CssClass="form-control" placeholder="Doctor Full Name" runat="server"></asp:TextBox>
                        </div>
                    </div>
                    <div class="col-md-7 col-sm-6 col-xs-12 tg-columnpadding">
                        <div class="form-group tg-formgroup">
                            <asp:TextBox ID="txtQualification" CssClass="form-control" placeholder="Qualification MBBS,MRCP(UK),FCPS" runat="server"></asp:TextBox>
                        </div>
                    </div>
                    <div class="col-md-4 col-sm-6 col-xs-12 tg-columnpadding">
                        <div class="form-group tg-formgroup">
                            <asp:TextBox ID="txtDesignation" CssClass="form-control" placeholder="Designation" runat="server"></asp:TextBox>
                        </div>
                    </div>
                    <div class="col-md-4 col-sm-6 col-xs-12 tg-columnpadding">
                        <div class="form-group tg-formgroup">
                            <asp:TextBox ID="txtExpertise" CssClass="form-control" placeholder="Expertise" runat="server"></asp:TextBox>
                        </div>
                    </div>
                    <div class="col-md-4 col-sm-6 col-xs-12 tg-columnpadding">
                        <div class="form-group tg-formgroup">
                            <asp:DropDownList ID="ddlDoctorCatagoris" CssClass="form-control" runat="server"></asp:DropDownList>
                        </div>
                    </div>
                    <div class="col-md-4 col-sm-6 col-xs-12 tg-columnpadding">
                        <div class="form-group tg-formgroup">
                            <asp:TextBox ID="txtRegistationNumber" CssClass="form-control" placeholder="Registation Number" runat="server"></asp:TextBox>
                        </div>
                    </div>
                    <div class="col-md-4 col-sm-6 col-xs-12 tg-columnpadding">
                        <div class="form-group tg-formgroup">
                            <asp:TextBox ID="txtPresentProfession" CssClass="form-control" placeholder="Present Profession" runat="server"></asp:TextBox>

                        </div>
                    </div>
                    <div class="col-md-4 col-sm-6 col-xs-12 tg-columnpadding">
                        <div class="form-group tg-formgroup">
                            <asp:DropDownList ID="ddlGender" CssClass="form-control" runat="server">
                                <asp:ListItem Selected="True" Value="0">Select Gender</asp:ListItem>
                                <asp:ListItem Value="Male">Male</asp:ListItem>
                                <asp:ListItem Value="Female">Female</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="tg-dashboardbox">
            <div class="tg-dashboardboxtitle">
                <h2>Doctor Information <asp:Label ID="lblCountry" runat="server"></asp:Label></h2>
            </div>
            <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>

                    <div class="tg-box tg-basicinformation">
                        <div class="row tg-rowmargin">
                            <div class="col-md-4 col-sm-6 col-xs-12 tg-columnpadding">
                                <div class="form-group tg-formgroup">
                                    <asp:DropDownList ID="ddlCountry" OnTextChanged="ddlCountry_TextChanged"  AutoPostBack="true" CssClass="form-control" runat="server">
                                    </asp:DropDownList>
                                </div>
                            </div>
                            <div class="col-md-4 col-sm-6 col-xs-12 tg-columnpadding">
                                <div class="form-group tg-formgroup">
                                    <asp:DropDownList ID="ddlDvision" OnTextChanged="ddlDvision_TextChanged" AutoPostBack="true" CssClass="form-control" runat="server"></asp:DropDownList>
                                </div>
                            </div>
                            <div class="col-md-4 col-sm-6 col-xs-12 tg-columnpadding">
                                <div class="form-group tg-formgroup">
                                    <asp:DropDownList ID="ddlDistrict" OnTextChanged="ddlDistrict_TextChanged" AutoPostBack="true" CssClass="form-control" runat="server"></asp:DropDownList>
                                </div>
                            </div>
                            <div class="col-md-4 col-sm-6 col-xs-12 tg-columnpadding">
                                <div class="form-group tg-formgroup">
                                    <asp:DropDownList ID="ddlUpazila" CssClass="form-control" runat="server">
                                    </asp:DropDownList>
                                </div>
                            </div>

                            <div class="col-md-4 col-sm-6 col-xs-12 tg-columnpadding">
                                <div class="form-group tg-formgroup">
                                    <asp:TextBox ID="txtNID" CssClass="form-control" placeholder="NID" runat="server"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-4 col-sm-6 col-xs-12 tg-columnpadding">
                                <div class="form-group tg-formgroup">
                                    <asp:TextBox ID="txtDoctorMobile" CssClass="form-control" placeholder="Mobile Number" runat="server"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-4 col-sm-6 col-xs-12 tg-columnpadding">
                                <div class="form-group tg-formgroup">
                                    <asp:TextBox ID="txtDoctorTelephone" CssClass="form-control" placeholder="Telephone Number" runat="server"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-4 col-sm-6 col-xs-12 tg-columnpadding">
                                <div class="form-group tg-formgroup">
                                    <asp:TextBox ID="txtDoctorEmail" CssClass="form-control" placeholder="Email" TextMode="Email" runat="server"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-4 col-sm-6 col-xs-12 tg-columnpadding">
                                <div class="form-group tg-formgroup">
                                    <asp:TextBox ID="txtDoctorUserName" CssClass="form-control" placeholder="Username" runat="server"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-4 col-sm-6 col-xs-12 tg-columnpadding">
                                <div class="form-group tg-formgroup">
                                    <asp:TextBox ID="txtDoctorPassword" CssClass="form-control" placeholder="Password" TextMode="Password" runat="server"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-8 col-sm-12 col-xs-12 tg-columnpadding">
                                <div class="form-group tg-formgroup">
                                    <asp:TextBox ID="txtDoctorAddress" CssClass="form-control" placeholder="Address" TextMode="MultiLine" Columns="10" runat="server"></asp:TextBox>
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
                            <asp:FileUpload ID="FileUploadDoctorImage" runat="server" />
                        </div>
                    </div>
                    <div class="col-md-2 col-sm-12 col-xs-12 tg-columnpadding">
                        <div class="form-group tg-formgroup">
                            <asp:ImageButton ID="ImageDoctorPhoto" Width="100" AlternateText=" No Image" Height="100" runat="server" />
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="tg-dashboardbox">
            <div class="tg-dashboardboxtitle">
                <h2>Doctor license Photocopy</h2>
            </div>
            <div class="tg-box tg-profilephoto">
                <div class="row tg-rowmargin">
                    <div class="col-md-8 col-sm-12 col-xs-12 tg-columnpadding">
                        <div class="form-group tg-formgroup">
                            <asp:FileUpload ID="FileUploadDoctorLicenceInage" runat="server" />
                        </div>
                    </div>
                    <div class="col-md-2 col-sm-12 col-xs-12 tg-columnpadding">
                        <div class="form-group tg-formgroup">
                            <asp:ImageButton ID="ImageLicencePhoto" Width="100" AlternateText=" No Image" Height="100" runat="server" />
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="tg-dashboardbox">
            <div class="tg-dashboardboxtitle">
                <h2>Save</h2>
            </div>
            <div class="tg-box tg-languages tg-uiicons">
                <div class="row tg-rowmargin">                  
                            <div class="col-md-2 col-sm-3 col-xs-12 tg-columnpadding">
                                <div class="form-group tg-formgroup">
                                    <asp:Button ID="btnDoctorRegistaion" OnClick="btnDoctorRegistaion_Click"  CssClass="tg-btn tg-btn-lg" runat="server" Text="Save" />
                                    <asp:Button ID="btnUpdate" runat="server"  CssClass="tg-btn tg-btn-lg" Text="Update" />
                                </div>
                            </div>                     
                </div>
                <ul class="tg-threecolumns tg-liststyledot">                 
                        <asp:Label ID="lblResult" runat="server"></asp:Label>                   
                </ul>
            </div>
        </div>
</asp:Content>
