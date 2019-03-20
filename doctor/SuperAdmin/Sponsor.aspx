<%@ Page Title="" Language="C#" MasterPageFile="~/SuperAdmin/SPAdmin.Master" AutoEventWireup="true" CodeBehind="Sponsor.aspx.cs" Inherits="doctor.SuperAdmin.Sponsor" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="serviceproviderbody" runat="server">
    <div class="col-lg-9 col-md-8 col-sm-8 col-xs-12 pull-right">
        <div class="tg-dashboardfavoritlisting">

            <div class="tg-dashboardbox">
                <div class="tg-dashboardboxtitle">
                    <h2>Sponsor logo upload (169 x 29)<asp:Label ID="lblResult" Font-Bold="true" runat="server" ></asp:Label></h2>
                </div>
                <div class="tg-box tg-experience tg-uiicons">
                     <div class="row tg-rowmargin">
                        <div class="col-sm-4 col-xs-12 tg-columnpadding">
                            <div class="form-group tg-formgroup">
                                <asp:TextBox ID="txtlink" CssClass="form-control" placeholder="Call Center Number" runat="server"></asp:TextBox>
                            </div>
                        </div>
                         <div class="col-sm-4 col-xs-12 tg-columnpadding">
                            <div class="form-group tg-formgroup">
                                <asp:FileUpload ID="FileUpload1" CssClass="form-control" runat="server" />
                            </div>
                        </div>
                         <div class="col-sm-2 col-xs-12 tg-columnpadding">
                            <div class="form-group tg-formgroup">
                                <asp:Button ID="Button1" OnClick="Button1_Click" CssClass="btn btn-info" runat="server" Text="Button" />
                            </div>
                        </div>
                     </div>
                </div>
            </div>
            



        </div>
    </div>

</asp:Content>
