<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" EnableEventValidation="false" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="doctor.Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script>
        $(document).ready(function () {
            $("button").click(function () {
                $(".another_nav").fadeIn(3000);
            });
        });
</script>
	
<script>
    function myFunction() {
        var x = document.getElementById("ContentPlaceHolder1_txtLOGPassword");
        if (x.type === "password") {
            x.type = "text";
        } else {
            x.type = "password";
        }
    }

    function myFunctionDoc() {
        var x = document.getElementById("ContentPlaceHolder1_txtDoctorPassword");
        if (x.type === "password") {
            x.type = "text";
        } else {
            x.type = "password";
        }
    }
    function myFunctionHP() {
        var x = document.getElementById("ContentPlaceHolder1_txt_H_P_Password");
        if (x.type === "password") {
            x.type = "text";
        } else {
            x.type = "password";
        }
    }
    function myFunctionDL() {
        var x = document.getElementById("ContentPlaceHolder1_txtDonerPassword");
        if (x.type === "password") {
            x.type = "text";
        } else {
            x.type = "password";
        }
    }
</script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
 
        <main id="tg-main" class="tg-main tg-haslayout">
            <div class="container">
                <div class="row">
                    <div id="tg-twocolumns" class="tg-twocolumns">
                        <div class="col-md-4 col-sm-5 col-xs-12">
                            <aside id="tg-sidebar" class="tg-sidebar">
                                <div class="tg-widget tg-widgetlogin">
                                    <div class="tg-widgetcontent">
                                        <div class="tg-widgettitle">
                                            <h3>Login Now</h3>
                                        </div>
                                        <div class="form-group tg-formgroup">
                                            <asp:DropDownList ID="ddlSelectLogin" CssClass="form-control" runat="server">                                                
                                                <asp:ListItem Value="DLOGIN">Doctor Login</asp:ListItem>
                                                <asp:ListItem Value="HLONIG">Hospital Login</asp:ListItem>
                                                <asp:ListItem Value="BDLOGIN">Donor List Check</asp:ListItem>
                                            </asp:DropDownList>
                                        </div>
                                        <div class="form-group tg-formgroup">
                                            <asp:TextBox ID="txtLOGusername" runat="server" placeholder="Username" CssClass="form-control"></asp:TextBox>
                                        </div>
                                        <div class="form-group tg-formgroup">
                                            <asp:TextBox ID="txtLOGPassword"  runat="server" placeholder="Password" TextMode="Password" CssClass="form-control"></asp:TextBox>                                           
                                        </div>
                                        <span style="display:inline-flex; font-weight:bold; font-size:12px;"><input type="checkbox" class="my_checkbox" onclick="myFunction()"> Show Password</span>
                                        
                                        <asp:Label ID="lblloginResult" runat="server" Font-Bold="true" ForeColor="Red"></asp:Label>
                                        <asp:Button ID="btnLogin" OnClick="btnLogin_Click" CssClass="tg-btn tg-btn-lg" runat="server" Text="Login Now" />
                                        <br />
                                        <a href="forgotpassword">Forgot Password</a>
                                    </div>
                                </div>
                            </aside>
                        </div>

                        <div class="col-md-8 col-sm-7 col-xs-12">
                            <div id="tg-content" class="tg-content">
                                <div class="tg-signinsignup">
                                    <div class="tg-title">
                                        <h2>Register Now As</h2>
                                    </div>
                                    <div class="tg-dashboardtabs">
                                        <ul class="tg-dashboardtabnav" role="tablist">
                                            <%--<li role="presentation">
                                                <a href="#overview" aria-controls="overview" role="tab" data-toggle="tab">User Registation</a>
                                            </li>--%>
                                            <li role="presentation" class="active">
                                                <a href="#services" aria-controls="services" role="tab" data-toggle="tab">Doctor Registation</a>
                                            </li>
                                            <li role="presentation">
                                                <a href="#services2" aria-controls="services" role="tab" data-toggle="tab">Hospital Registation</a>
                                            </li>
                                            <li role="presentation">
                                                <a href="#services3" aria-controls="services" role="tab" data-toggle="tab">Blood Donor Registation</a>
                                            </li>
                                        </ul>
                                        <div class="tab-content tg-dashboardtabcontent">
                                            <!-- User Registation -->
                                            <div role="tabpanel" class="tab-pane" id="overview">
                                                <div class="tg-searchbulder">
                                                    <div id="tg-subcategories" class="tg-subcategories">
                                                        <div id="doctorscategory" class="tg-tabcontent tg-active">
                                                            <div class="row tg-rowmargin">
                                                                <div class="col-md-4 col-sm-6 col-xs-12 tg-columnpadding">
                                                                    <div class="form-group tg-formgroup">
                                                                        <asp:TextBox ID="txtname" CssClass="form-control" placeholder="*Name" runat="server"></asp:TextBox>
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-4 col-sm-6 col-xs-12 tg-columnpadding">
                                                                    <div class="form-group tg-formgroup">
                                                                        <asp:TextBox ID="txtusername" CssClass="form-control" placeholder="*Username" runat="server"></asp:TextBox>
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-4 col-sm-6 col-xs-12 tg-columnpadding">
                                                                    <div class="form-group tg-formgroup">
                                                                        <asp:TextBox ID="txtpassword" CssClass="form-control" TextMode="Password" placeholder="*Password" runat="server"></asp:TextBox>
                                                                    </div>
                                                                </div>

                                                                <div class="col-md-4 col-sm-6 col-xs-12 tg-columnpadding">
                                                                    <div class="form-group tg-formgroup">
                                                                        <asp:TextBox ID="txtEmail" CssClass="form-control" TextMode="Email" placeholder="Email" runat="server"></asp:TextBox>
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-4 col-sm-6 col-xs-12 tg-columnpadding">
                                                                    <div class="form-group tg-formgroup">
                                                                        <asp:TextBox ID="txtMobile" CssClass="form-control" placeholder="*Mobile" runat="server"></asp:TextBox>
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-4 col-sm-6 col-xs-12 tg-columnpadding">
                                                                    <div class="form-group tg-formgroup">
                                                                        <asp:DropDownList ID="ddlUserGender" CssClass="form-control" runat="server">
                                                                            <asp:ListItem Value="0">Select Item</asp:ListItem>
                                                                            <asp:ListItem Value="Male">Male</asp:ListItem>
                                                                            <asp:ListItem Value="Female">Female</asp:ListItem>
                                                                        </asp:DropDownList>
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-12 col-sm-6 col-xs-12 tg-columnpadding">
                                                                    <div class="form-group tg-formgroup">
                                                                        <asp:TextBox ID="txtAddress" TextMode="MultiLine" CssClass="form-control" placeholder="Address" runat="server"></asp:TextBox>
                                                                    </div>
                                                                </div>


                                                                <div class="col-md-12 col-sm-12 col-xs-12 tg-columnpadding">
                                                                    <div class="form-group tg-formgroup">
                                                                        <asp:Label ID="lblUserResult" runat="server"></asp:Label>
                                                                    </div>
                                                                </div>

                                                                <div class="col-sm-12 col-xs-12 tg-columnpadding">
                                                                    <asp:Button ID="btnuserReg" runat="server" CssClass="tg-btn" OnClick="btnuserReg_Click" Text="Register Now" />
                                                                </div>
                                                            </div>



                                                        </div>



                                                    </div>
                                                </div>
                                            </div>
                                            <!-- Doctor Registation -->
                                            <div role="tabpanel" class="tab-pane active" id="services">
                                                <div class="tg-searchbulder">
                                                    <div id="tg-subcategories-one" class="tg-subcategories">
                                                        <div id="doctorscategory1" class="tg-tabcontent tg-active">
                                                            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                                                                <ContentTemplate>

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
                                                                            <h2>Doctor Information</h2>
                                                                        </div>



                                                                        <div class="tg-box tg-basicinformation">
                                                                            <div class="row tg-rowmargin">
                                                                                <div class="col-md-4 col-sm-6 col-xs-12 tg-columnpadding">
                                                                                    <div class="form-group tg-formgroup">
                                                                                        <asp:DropDownList ID="ddlCountry" OnTextChanged="ddlCountry_TextChanged" CssClass="form-control" runat="server" AutoPostBack="True">
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
                                                                                        <asp:DropDownList ID="ddlDistrict" OnTextChanged="ddlDistrict_TextChanged" CssClass="form-control" AutoPostBack="true" runat="server"></asp:DropDownList>
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
                                                                                        <asp:TextBox ID="txtDoctorNID" CssClass="form-control" placeholder="NID" runat="server"></asp:TextBox>
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
                                                                                 <span style="display:inline-flex; font-weight:bold; font-size:12px;"><input type="checkbox" class="my_checkbox" onclick="myFunctionDoc()"> Show Password</span>

                                                                                </div>
                                                                                <div class="col-md-8 col-sm-12 col-xs-12 tg-columnpadding">
                                                                                    <div class="form-group tg-formgroup">
                                                                                        <asp:TextBox ID="txtDoctorAddress" CssClass="form-control" placeholder="Address" TextMode="MultiLine" Columns="10" runat="server"></asp:TextBox>
                                                                                    </div>
                                                                                </div>

                                                                            </div>
                                                                        </div>


                                                                    </div>

                                                                    <!--
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
                                                                    </div>
                                                                </div>
                                                            </div>
                                                               -->


                                                                    <div class="tg-dashboardbox">
                                                                        <div class="tg-dashboardboxtitle">
                                                                            <h2>Save</h2>
                                                                        </div>


                                                                        <div class="tg-box tg-languages tg-uiicons">
                                                                            <div class="row tg-rowmargin">
                                                                                <div class="col-md-10 col-sm-9 col-xs-12 tg-columnpadding">

                                                                                    <h6>Fill all From and Click Registastion and Photo Varification Process Will Come.</h6>

                                                                                </div>

                                                                                <div class="col-md-2 col-sm-3 col-xs-12 tg-columnpadding">
                                                                                    <div class="form-group tg-formgroup">
                                                                                        <asp:Button ID="btnSave" OnClick="btnSave_Click" CssClass="tg-btn tg-btn-lg" runat="server" Text="Save" />
                                                                                    </div>
                                                                                </div>



                                                                            </div>
                                                                            <ul class="tg-threecolumns tg-liststyledot">
                                                                                <asp:Label ID="lblDoctorResult" ForeColor="Red" runat="server" Font-Bold="true"></asp:Label>
                                                                            </ul>
                                                                        </div>


                                                                    </div>

                                                                    </div>

                                                                </ContentTemplate>
                                                            </asp:UpdatePanel>







                                                        </div>
                                                    </div>
                                                </div>
                                                <!-- Hospital Registation -->
                                                <div role="tabpanel" class="tab-pane" id="services2">
                                                    <div class="tg-searchbulder">
                                                        <div id="tg-subcategories-two" class="tg-subcategories">
                                                            <div id="doctorscategory2" class="tg-tabcontent tg-active">

                                                                <div class="tg-dashboardbox">

                                                                    <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                                                                        <ContentTemplate>


                                                                            <div class="tg-dashboardboxtitle">
                                                                                <h2>Hospital Details</h2>
                                                                            </div>
                                                                            <div class="tg-box tg-basicinformation">
                                                                                <div class="row tg-rowmargin">
                                                                                    <div class="col-md-4 col-sm-6 col-xs-12 tg-columnpadding">
                                                                                        <div class="form-group tg-formgroup">
                                                                                            <asp:DropDownList ID="ddlCountry2" AutoPostBack="true" OnTextChanged="ddlCountry2_TextChanged" CssClass="form-control" runat="server">
                                                                                            </asp:DropDownList>
                                                                                        </div>
                                                                                    </div>
                                                                                    <div class="col-md-4 col-sm-6 col-xs-12 tg-columnpadding">
                                                                                        <div class="form-group tg-formgroup">
                                                                                            <asp:DropDownList ID="ddlDivision2" AutoPostBack="true" OnTextChanged="ddlDivision2_TextChanged" CssClass="form-control" runat="server">
                                                                                            </asp:DropDownList>
                                                                                        </div>
                                                                                    </div>
                                                                                    <div class="col-md-4 col-sm-6 col-xs-12 tg-columnpadding">
                                                                                        <div class="form-group tg-formgroup">
                                                                                            <asp:DropDownList ID="ddlDistric2" AutoPostBack="true" OnTextChanged="ddlDistric2_TextChanged" CssClass="form-control" runat="server">
                                                                                            </asp:DropDownList>
                                                                                        </div>
                                                                                    </div>
                                                                                    <div class="col-md-4 col-sm-6 col-xs-12 tg-columnpadding">
                                                                                        <div class="form-group tg-formgroup">
                                                                                            <asp:DropDownList ID="ddlUpazila2" CssClass="form-control" runat="server"></asp:DropDownList>
                                                                                        </div>
                                                                                    </div>
                                                                                    <div class="col-md-8 col-sm-6 col-xs-12 tg-columnpadding">
                                                                                        <div class="form-group tg-formgroup">
                                                                                            <asp:DropDownList ID="ddlHostipal" CssClass="form-control" runat="server" DataSourceID="SqlDataSource1" DataTextField="Name" DataValueField="ID">
                                                                                            </asp:DropDownList>
                                                                                            <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:DoctorDBCS %>' SelectCommand="SELECT * FROM [Hospital]"></asp:SqlDataSource>
                                                                                        </div>
                                                                                    </div>
                                                                                    <div class="col-md-4 col-sm-6 col-xs-12 tg-columnpadding">
                                                                                        <div class="form-group tg-formgroup">
                                                                                            <asp:DropDownList ID="ddlHospitalType" AutoPostBack="true"  OnTextChanged="ddlType_TextChanged" CssClass="form-control" runat="server">
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
                                                                                                <asp:ListItem Value="Day">Day Only</asp:ListItem>
                                                                                                <asp:ListItem Value="Day">Night Only</asp:ListItem>
                                                                                                <asp:ListItem Value="Day">Day-Night</asp:ListItem>
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
                                                                        </ContentTemplate>
                                                                    </asp:UpdatePanel>
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
                                                                                        <span style="display:inline-flex; font-weight:bold; font-size:12px;"><input type="checkbox" class="my_checkbox" onclick="myFunctionHP()"> Show Password</span>
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
                                                                                    </div>
                                                                                </div>                                                                            
                                                                            <asp:Label ID="lblHostipalResult" runat="server"></asp:Label>
                                                                           </div>
                                                                              </ContentTemplate>
                                                                                </asp:UpdatePanel>
                                                                        </div>
                                                                    </div>                                                                        
                                                                </asp:Panel>                                                                    
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>

                                                    <!-- Blood Donor Registation -->
                                                    <div role="tabpanel" class="tab-pane" id="services3">
                                                        <div class="tg-searchbulder">
                                                            <div id="tg-subcategories-three" class="tg-subcategories">
                                                                <div id="doctorscategory3" class="tg-tabcontent tg-active">
                                                                    <asp:UpdatePanel ID="UpdatePanel5" runat="server">
                                                                        <ContentTemplate>                                                                       
                                                                            <div class="row tg-rowmargin">
                                                                        <div class="col-md-4 col-sm-6 col-xs-12 tg-columnpadding">
                                                                            <div class="form-group tg-formgroup">
                                                                                <asp:TextBox ID="txtDonerName" CssClass="form-control" placeholder="*Name" runat="server"></asp:TextBox>
                                                                            </div>
                                                                        </div>
                                                                                <div class="col-md-4 col-sm-6 col-xs-12 tg-columnpadding">
                                                                                    <div class="form-group tg-formgroup">
                                                                                        <asp:TextBox ID="txtDonerUserName" CssClass="form-control" placeholder="Username" runat="server"></asp:TextBox>
                                                                                    </div>
                                                                                </div>
                                                                        <div class="col-md-4 col-sm-6 col-xs-12 tg-columnpadding">
                                                                            <div class="form-group tg-formgroup">
                                                                                <asp:TextBox ID="txtDonerPassword" CssClass="form-control" placeholder="Password" TextMode="Password" runat="server"></asp:TextBox>
                                                                            </div>
                                                                                                                    <span style="display:inline-flex; font-weight:bold; font-size:12px;"><input type="checkbox" class="my_checkbox" onclick="myFunctionDL()"> Show Password</span>

                                                                        </div>
                                                                        <div class="col-md-4 col-sm-6 col-xs-12 tg-columnpadding">
                                                                            <div class="form-group tg-formgroup">
                                                                                <asp:TextBox ID="txtDonerEmail" CssClass="form-control" placeholder="Email" TextMode="Email" runat="server"></asp:TextBox>
                                                                            </div>
                                                                        </div>
                                                                        <div class="col-md-4 col-sm-6 col-xs-12 tg-columnpadding">
                                                                            <div class="form-group tg-formgroup">
                                                                                <asp:TextBox ID="txtDonerMobile" CssClass="form-control" placeholder="*Mobile" runat="server"></asp:TextBox>
                                                                            </div>
                                                                        </div>
                                                                        <div class="col-md-4 col-sm-6 col-xs-12 tg-columnpadding">
                                                                            <div class="form-group tg-formgroup">
                                                                                <asp:DropDownList ID="ddlDonerGender" CssClass="form-control" runat="server">
                                                                                    <asp:ListItem Selected="True" Value="0">Select Gender</asp:ListItem>
                                                                                    <asp:ListItem Value="Male">Male</asp:ListItem>
                                                                                    <asp:ListItem Value="Female">Female</asp:ListItem>
                                                                                </asp:DropDownList>
                                                                            </div>
                                                                        </div>
                                                                        <div class="col-md-4 col-sm-6 col-xs-12 tg-columnpadding">
                                                                            <div class="form-group tg-formgroup">
                                                                                <asp:DropDownList ID="ddlDonerBloodGroup" CssClass="form-control" runat="server">
                                                                                    <asp:ListItem Selected="True" Value="0">Select Blood Group</asp:ListItem>
                                                                                    <asp:ListItem Value="AP">A+</asp:ListItem>
                                                                                    <asp:ListItem Value="AN">A-</asp:ListItem>
                                                                                    <asp:ListItem Value="BP">B+</asp:ListItem>
                                                                                     <asp:ListItem Value="BN">B-</asp:ListItem>
                                                                                     <asp:ListItem Value="ABP">AB+</asp:ListItem>
                                                                                     <asp:ListItem Value="ABN">AB-</asp:ListItem>
                                                                                     <asp:ListItem Value="OP">O+</asp:ListItem>
                                                                                     <asp:ListItem Value="ON">O-</asp:ListItem>
                                                                                </asp:DropDownList>
                                                                            </div>
                                                                        </div>
                                                                         <div class="col-md-4 col-sm-6 col-xs-12 tg-columnpadding">
                                                                                        <div class="form-group tg-formgroup">
                                                                                            <asp:DropDownList ID="ddlDonerCountry" AutoPostBack="true" OnTextChanged="ddlDonerCountry_TextChanged"  CssClass="form-control" runat="server">
                                                                                            </asp:DropDownList>
                                                                                        </div>
                                                                                    </div>
                                                                                    <div class="col-md-4 col-sm-6 col-xs-12 tg-columnpadding">
                                                                                        <div class="form-group tg-formgroup">
                                                                                            <asp:DropDownList ID="ddlDonerDivision" AutoPostBack="true" OnTextChanged="ddlDonerDivision_TextChanged" CssClass="form-control" runat="server">
                                                                                            </asp:DropDownList>
                                                                                        </div>
                                                                                    </div>
                                                                                    <div class="col-md-4 col-sm-6 col-xs-12 tg-columnpadding">
                                                                                        <div class="form-group tg-formgroup">
                                                                                            <asp:DropDownList ID="ddlDonerDistrict" AutoPostBack="true" OnTextChanged="ddlDonerDistrict_TextChanged"  CssClass="form-control" runat="server">
                                                                                            </asp:DropDownList>
                                                                                        </div>
                                                                                    </div>
                                                                                    <div class="col-md-4 col-sm-6 col-xs-12 tg-columnpadding">
                                                                                        <div class="form-group tg-formgroup">
                                                                                            <asp:DropDownList ID="ddlDonerUpazila" CssClass="form-control" runat="server"></asp:DropDownList>
                                                                                        </div>
                                                                                    </div>
                                                                                <div class="col-md-4 col-sm-6 col-xs-12 tg-columnpadding">
                                                                                    <div class="form-group tg-formgroup">
                                                                                        <asp:FileUpload ID="donerPhotoupload" CssClass="form-control" runat="server" />
                                                                                    </div>
                                                                                </div>

                                                                        <div class="col-md-8 col-sm-6 col-xs-12 tg-columnpadding">
                                                                            <div class="form-group tg-formgroup">
                                                                                <asp:TextBox ID="txtDonerAddress" TextMode="MultiLine" CssClass="form-control" placeholder="Address" runat="server"></asp:TextBox>
                                                                            </div>
                                                                        </div>
                                                                               
                                                                        
                                                                        <div class="col-sm-12 col-xs-12 tg-columnpadding">
                                                                            <asp:Label ID="Label2" runat="server"></asp:Label>
                                                                        </div>
                                                                        <div class="col-sm-12 col-xs-12 tg-columnpadding">
                                                                            <asp:Button ID="btnDonerRegistation" OnClick="btnDonerRegistation_Click" CssClass="tg-btn" runat="server" Text="Register Now" />
                                                                            <asp:Label ID="lblDonerResult" runat="server" ></asp:Label>
                                                                        </div>
                                                                    </div>
                                                                     </ContentTemplate>
                                                                    </asp:UpdatePanel>

                                                                </div>


                                                            </div>
                                                        </div>
                                                    </div>


                                                </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div></div></div>
                </div>
        </main>
        <!--************************************
				Main End
		*************************************-->
  
</asp:Content>
