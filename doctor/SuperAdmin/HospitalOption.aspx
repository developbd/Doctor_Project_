<%@ Page Title="" Language="C#" MasterPageFile="~/SuperAdmin/SPAdmin.Master" AutoEventWireup="true" CodeBehind="HospitalOption.aspx.cs" Inherits="doctor.Admin.HospitalOption" %>
<asp:Content ID="Content1" ContentPlaceHolderID="serviceproviderbody" runat="server">
    <style type="text/css">
        .btnRed{
            padding:5px;
            border-radius:5px;
            background-color:#dd3131;
            color:white;
            font-size:10px;
        }
            .btnRed:hover {
            background-color:#00b1f5;
            color:white;            
            }
        .btnBlack
        {
            padding:5px;
            border-radius:5px;
            background-color:black;
            color:white;
            font-size:10px;
        }
        .btnBlack:hover
        {
            background-color:#00b1f5;
            color:white;
        }
        .redc{
            color:#dd3131;
        }
        .greenc{
            color:#8ce25e;
        }
    </style>
    <div class="col-lg-9 col-md-8 col-sm-8 col-xs-12 pull-right">
							<div class="tg-dashboardfavoritlisting">
								<div class="tg-dashboardbox">
									<div class="tg-dashboardboxtitle">
										<h2>Hospital Verifycation Settings</h2>
									</div>
                                    <asp:Panel ID="Panel1"  runat="server">
                                        <div class="col-md-12 col-sm-6 col-xs-12 tg-columnpadding">
                                            <div class="form-group tg-formgroup">
                                                <asp:Button ID="btnScarchAll" OnClick="btnScarchAll_Click"  runat="server" CssClass="form-control btn-success" Text="Search by ALL" />
                                            </div>
                                        </div>
                                        <div class="col-md-4 col-sm-6 col-xs-12 tg-columnpadding">
                                            <div class="form-group tg-formgroup">
                                                <asp:DropDownList ID="ddlCountry"  OnTextChanged="ddlCountry_TextChanged" CssClass="form-control" runat="server" AutoPostBack="True">
                                                </asp:DropDownList>
                                            </div>
                                        </div>
                                        <div class="col-md-4 col-sm-6 col-xs-12 tg-columnpadding">
                                            <div class="form-group tg-formgroup">
                                                <asp:DropDownList ID="ddlDvision" OnTextChanged="ddlDvision_TextChanged"  AutoPostBack="true" CssClass="form-control" runat="server"></asp:DropDownList>
                                            </div>
                                        </div>
                                        <div class="col-md-4 col-sm-6 col-xs-12 tg-columnpadding">
                                            <div class="form-group tg-formgroup">
                                                <asp:DropDownList ID="ddlDistrict" OnTextChanged="ddlDistrict_TextChanged"  CssClass="form-control" AutoPostBack="true" runat="server"></asp:DropDownList>
                                            </div>
                                        </div>
                                        <div class="col-md-4 col-sm-6 col-xs-12 tg-columnpadding">
                                            <div class="form-group tg-formgroup">
                                                <asp:DropDownList ID="ddlUpazila" CssClass="form-control" runat="server">
                                                </asp:DropDownList>
                                            </div>
                                        </div>
                                        <div class="col-md-8 col-sm-6 col-xs-12 tg-columnpadding">
                                            <div class="form-group tg-formgroup">
                                                <asp:Button ID="btnScarchCountry" OnClick="btnScarchCountry_Click" runat="server" CssClass="form-control btn-success" Text="Search by Country" />
                                            </div>
                                        </div>
                                        <div class="col-md-4 col-sm-6 col-xs-12 tg-columnpadding">
                                            <div class="form-group tg-formgroup">
                                                <asp:TextBox ID="txtDoctorRegistationNumber" CssClass="form-control" placeholder="Registation Number" runat="server"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="col-md-8 col-sm-6 col-xs-12 tg-columnpadding">
                                            <div class="form-group tg-formgroup">
                                                <asp:Button ID="btnScarchRegistationNumber" OnClick="btnScarchRegistationNumber_Click"  runat="server" CssClass="form-control btn-success" Text="Search by Registation Number" />
                                            </div>
                                        </div>



                                        <div class="col-md-4 col-sm-6 col-xs-12 tg-columnpadding">
                                            <div class="form-group tg-formgroup">
                                                <asp:TextBox ID="txtDoctorFullName" CssClass="form-control" placeholder="Doctor Full Number" runat="server"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="col-md-8 col-sm-6 col-xs-12 tg-columnpadding">
                                            <div class="form-group tg-formgroup">
                                                <asp:Button ID="btnScarchDocetorFullname"  OnClick="btnScarchDocetorFullname_Click" runat="server" CssClass="form-control btn-success" Text="Search by Name" />
                                            </div>
                                        </div>

                                        <div class="col-md-4 col-sm-6 col-xs-12 tg-columnpadding">
                                            <div class="form-group tg-formgroup">
                                                <asp:DropDownList ID="ddlverify" CssClass="form-control" runat="server">
                                                    <asp:ListItem Value="0" Selected="True">Select Iteam</asp:ListItem>
                                                    <asp:ListItem Value="TRUE">TRUE</asp:ListItem>
                                                    <asp:ListItem Value="FALSE">FALSE</asp:ListItem>
                                                </asp:DropDownList>
                                            </div>
                                        </div>
                                        <div class="col-md-8 col-sm-6 col-xs-12 tg-columnpadding">
                                            <div class="form-group tg-formgroup">
                                                <asp:Button ID="btnScarchVerify" OnClick="btnScarchVerify_Click" runat="server" CssClass="form-control btn-success" Text="Search by Verified ID" />
                                            </div>
                                        </div>

                                        <div class="col-md-4 col-sm-6 col-xs-12 tg-columnpadding">
                                            <div class="form-group tg-formgroup">
                                                <asp:DropDownList ID="ddlAuthority" CssClass="form-control" runat="server">
                                                    <asp:ListItem Value="0" Selected="True">Select Iteam</asp:ListItem>
                                                    <asp:ListItem Value="TRUE">TRUE</asp:ListItem>
                                                    <asp:ListItem Value="FALSE">FALSE</asp:ListItem>
                                                </asp:DropDownList>
                                            </div>
                                        </div>
                                        <div class="col-md-8 col-sm-6 col-xs-12 tg-columnpadding">
                                            <div class="form-group tg-formgroup">
                                                <asp:Button ID="btnScarchAuthority" OnClick="btnScarchAuthority_Click"  runat="server" CssClass="form-control btn-success" Text="Search by Authority ID" />
                                            </div>
                                        </div>

                                        <div class="col-md-4 col-sm-6 col-xs-12 tg-columnpadding">
                                            <div class="form-group tg-formgroup">
                                                <asp:DropDownList ID="ddlLoginParmit" CssClass="form-control" runat="server">
                                                    <asp:ListItem Value="0" Selected="True">Select Iteam</asp:ListItem>
                                                    <asp:ListItem Value="TRUE">TRUE</asp:ListItem>
                                                    <asp:ListItem Value="FALSE">FALSE</asp:ListItem>
                                                </asp:DropDownList>
                                            </div>
                                        </div>
                                        <div class="col-md-8 col-sm-6 col-xs-12 tg-columnpadding">
                                            <div class="form-group tg-formgroup">
                                                <asp:Button ID="btnScarchLoginParmit" OnClick="btnScarchLoginParmit_Click"  runat="server" CssClass="form-control btn-success" Text="Search by Login Permit ID" />
                                            </div>
                                        </div>
                                    </asp:Panel>



									<div class="tg-tablescroll">
										<div class="tg-favoritlistingbox">
											<div class="tg-favoritlisttitle">
												<span>Hospital Details</span>
												<span class="tg-titleaction">Action</span>
											</div>
											<ul class="tg-favoritlist">
                                                <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
                                                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                                                    <ContentTemplate>
                                                        <asp:GridView ID="GridView1" runat="server" ShowHeader="false" GridLines="None" AutoGenerateColumns="False" DataKeyNames="ID" PageSize="100">
                                                            <Columns>
                                                                <asp:TemplateField SortExpression="Command">
                                                                    <ItemTemplate>
                                                                        <li>
                                                                            <div class="tg-favotirelistcontent">
                                                                                <figure>
                                                                                    <a href="#">
                                                                                        <img src='<%# Eval("PersonalPhoto","../Hospital/Image/Personal/Profile/{0}") %>' alt="image description"></a>
                                                                                </figure>
                                                                                <div class="tg-listdata">
                                                                                    <h4><a><%# Eval("PersonalFullname") %></a> <a>&nbsp;&nbsp;Reg: <%# Eval("RegistationNumber") %></a></h4>
                                                                                    <h4><a>&nbsp;&nbsp;&nbsp;Name: <%# Eval("HospitalName") %></a></h4>
                                                                                    <h4 style="font-size: 8px;"><a>Authorise: <%# Eval("Authority").ToString()=="TRUE"? "<a class='greenc'><i class='fa fa-check-square'></i></a>":"<a class='redc'><i class='fa fa-times'></i></a>" %></a>&nbsp;&nbsp;&nbsp;Verify: <%# Eval("Verify").ToString()=="TRUE"? "<a class='greenc'><i class='fa fa-check-square'></i></a>":"<a class='redc'><i class='fa fa-times'></i></a>" %><a>&nbsp;&nbsp;&nbsp;Login Permit: <%# Eval("LoginParmit").ToString()=="TRUE"? "<a class='greenc'><i class='fa fa-check-square'></i></a>":"<a class='redc'><i class='fa fa-times'></i></a>" %></a>&nbsp;&nbsp;&nbsp;<a>Date: <%# Eval("IssuDate") %></a></h4>
                                                                                </div>
                                                                            </div>
                                                                            <div class="tg-btnaction">
                                                                                <asp:LinkButton ID="btnDelete" OnCommand="btnDelete_Command" OnClientClick="return confirm('Are you sure you want to delete this hospital?');" CssClass="btnRed" CommandArgument='<%# Eval ("ID") %>' runat="server">Delete</asp:LinkButton>
                                                                                <asp:LinkButton ID="btnAutority" CssClass="btnBlack" OnCommand="btnAutority_Command" runat="server" CommandArgument='<%# Eval ("ID") %>' >Authorise</asp:LinkButton>
                                                                                <asp:LinkButton ID="btnVerify" CssClass="btnBlack" runat="server" OnCommand="btnVerify_Command" CommandArgument='<%# Eval ("ID") %>' >Verify</asp:LinkButton>
                                                                                <asp:LinkButton ID="btnLoginPermit" CssClass="btnBlack" runat="server" OnCommand="btnLoginPermit_Command" CommandArgument='<%# Eval ("ID") %>' >Log Permit</asp:LinkButton>
                                                                                <a class="btnBlack" href='<%# Eval("HospitalID","HospitalAdd.aspx?Edit={0}") %>'>View/Edit</a>
                                                                            </div>
                                                                        </li>
                                                                    </ItemTemplate>
                                                                </asp:TemplateField>
                                                            </Columns>
                                                        </asp:GridView>
                                                        <asp:Label ID="lblResult" Font-Bold="true" runat="server" ></asp:Label>

                                                    </ContentTemplate>
                                                </asp:UpdatePanel>

                                       <!--         <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:DoctorDBCS %>' SelectCommand="SELECT * FROM [DoctorRegistation]"></asp:SqlDataSource> -->
                                               
												
											</ul>
										</div>
									</div>
								</div>
							</div>
						</div>





</asp:Content>
