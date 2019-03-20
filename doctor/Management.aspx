<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="Management.aspx.cs" Inherits="doctor.Management" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <!--************************************
				Main Start						
		*************************************-->
        <main id="tg-main" class="tg-main tg-haslayout">
            <div class="container">
                <div class="row">
                    <div id="tg-twocolumns" class="tg-twocolumns">
                        <div class="col-md-4 col-sm-5 col-xs-12">
                            <aside id="tg-sidebar" class="tg-sidebar">
                                <div class="tg-widget tg-widgetlogin">
                                    <div class="tg-widgetcontent">
                                        <div class="tg-widgettitle">
                                            <h3>Admin Login</h3>
                                        </div>
                                        <div class="form-group tg-formgroup">
                                            <asp:TextBox ID="txtLOGusername" runat="server" placeholder="Username" CssClass="form-control"></asp:TextBox>
                                        </div>
                                        <div class="form-group tg-formgroup">
                                            <asp:TextBox ID="txtLOGPassword" runat="server" placeholder="Password" TextMode="Password" CssClass="form-control"></asp:TextBox>
                                        </div>
                                        <asp:Label ID="lblloginResult" runat="server" Font-Bold="true" ForeColor="Red"></asp:Label>
                                        <asp:Button ID="btnLogin" OnClick="btnLogin_Click" CssClass="tg-btn tg-btn-lg" runat="server" Text="Login Now" />

                                    </div>
                                </div>
                            </aside>
                        </div>
                    </div>
                </div>
            </div>
        </main>
        <!--************************************
				Main End
		*************************************-->

</asp:Content>
