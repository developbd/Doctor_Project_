<%@ Page Title="" Language="C#" MasterPageFile="~/SuperAdmin/SPAdmin.Master" AutoEventWireup="true" CodeBehind="logo.aspx.cs" Inherits="doctor.SuperAdmin.logo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="serviceproviderbody" runat="server">
     <div class="col-lg-9 col-md-8 col-sm-8 col-xs-12 pull-right">
        <div class="tg-dashboardfavoritlisting">

            <div class="tg-dashboardbox">
                <div class="tg-dashboardboxtitle">
                    <h2>Logo upload (370 x 69)<asp:Label ID="lblResult" Font-Bold="true" runat="server" ></asp:Label></h2>
                </div>
                <div class="tg-box tg-experience tg-uiicons">
                    <div class="row tg-rowmargin">
                        <div class="col-sm-4 col-xs-12 tg-columnpadding">
                            <div class="form-group tg-formgroup">
                                <asp:FileUpload ID="FileUpload1" CssClass="form-control" runat="server" />
                            </div>
                        </div>
                        <div class="col-sm-2 col-xs-12 tg-columnpadding">
                            <div class="form-group tg-formgroup">
                                <asp:Button ID="btnchange" OnClick="btnchange_Click" CssClass="tg-btn tg-btn-lg" runat="server" Text="Change" />  
                            </div>
                        </div>                        
                        <div class="col-sm-4 col-xs-12 tg-columnpadding">
                            <div class="form-group tg-formgroup">
                                <asp:Image ID="Image1" CssClass="form-control" Height="50" runat="server" />                
                            </div>
                        </div>                        
                                            
                    </div>
                     <div class="row tg-rowmargin">

                        <div class="col-sm-4 col-xs-12 tg-columnpadding">
                            <div class="form-group tg-formgroup">
                                <asp:TextBox ID="txtCallcenter" CssClass="form-control" placeholder="Call Center Number" runat="server"></asp:TextBox>
                            </div>
                        </div>
                         <div class="col-sm-4 col-xs-12 tg-columnpadding">
                            <div class="form-group tg-formgroup">
                                <asp:TextBox ID="txtEmail" CssClass="form-control" placeholder="Email" runat="server"></asp:TextBox>
                            </div>
                        </div>
                         <div class="col-sm-4 col-xs-12 tg-columnpadding">
                            <div class="form-group tg-formgroup">
                                <asp:TextBox ID="txtAddress" CssClass="form-control" placeholder="Address" TextMode="MultiLine" runat="server"></asp:TextBox>
                            </div>
                        </div>
                          <div class="col-sm-2 col-xs-12 tg-columnpadding">
                            <div class="form-group tg-formgroup">
                                <asp:Button ID="btnUpdate" OnClick="btnUpdate_Click" CssClass="tg-btn tg-btn-lg" runat="server" Text="Update" />  <asp:Label ID="lblUpdateResult" Font-Bold="true" runat="server" ></asp:Label>
                            </div>
                        </div>   
                     </div>
                </div>
            </div>
            



        </div>
    </div>

</asp:Content>
