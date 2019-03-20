<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="forgotpassword.aspx.cs" Inherits="doctor.forgotpassword" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <main id="tg-main" class="tg-main tg-haslayout">
            <div class="container">
                <div class="row">
                    <div id="tg-twocolumns" class="tg-twocolumns">
                       <div class="col-md-4 col-sm-5 col-xs-12">
                            <aside id="tg-sidebar" class="tg-sidebar">
                                <div class="tg-widget tg-widgetlogin">
                                    <div class="tg-widgetcontent">
                                        <div class="tg-widgettitle">
                                            <h3>Forgot Password</h3>
                                        </div>
                                        <div class="form-group tg-formgroup">
                                            <asp:DropDownList ID="ddlSelectLogin" CssClass="form-control" runat="server">                                                
                                                <asp:ListItem Value="DLOGIN">Doctor Login</asp:ListItem>
                                                <asp:ListItem Value="HLONIG">Hospital Login</asp:ListItem>
                                                <asp:ListItem Value="BDLOGIN">Donor List Check</asp:ListItem>
                                            </asp:DropDownList>
                                        </div>
                                        <div class="form-group tg-formgroup">
                                            <asp:TextBox ID="txtEmail" runat="server" placeholder="Email" TextMode="Email" CssClass="form-control"></asp:TextBox>
                                        </div>                                        
                                        <asp:Label ID="lblResult" runat="server" Font-Bold="true" ForeColor="Red"></asp:Label>
                                        <asp:Button ID="btnLogin" OnClick="btnLogin_Click"  CssClass="tg-btn tg-btn-lg" runat="server" Text="Login Now" />
                                    </div>
                                </div>
                            </aside>
                        </div>
                    </div>
                </div>
            </div>
        </main>
</asp:Content>
