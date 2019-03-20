<%@ Page Title="" Language="C#" MasterPageFile="~/SuperAdmin/SPAdmin.Master" AutoEventWireup="true" CodeBehind="Payment.aspx.cs" Inherits="doctor.SuperAdmin.Payment" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="serviceproviderbody" runat="server">
    <div class="col-lg-9 col-md-8 col-sm-8 col-xs-12 pull-right">
        <div class="tg-dashboardfavoritlisting">

            <div class="tg-dashboardbox">
                <div class="tg-dashboardboxtitle">
                    <h2>Payment <asp:Label ID="lblResult" Font-Bold="true" runat="server" ></asp:Label></h2>
                </div>
                <div class="tg-box tg-experience tg-uiicons">
                    <div class="row tg-rowmargin">
                        <div class="col-sm-4 col-xs-12 tg-columnpadding">
                            <div class="form-group tg-formgroup">
                                <asp:TextBox ID="txtChargeTitle" CssClass="form-control" placeholder="Charge Title..." runat="server"></asp:TextBox>
                            </div>
                        </div>
                        <div class="col-sm-2 col-xs-12 tg-columnpadding">
                            <div class="form-group tg-formgroup">
                                <asp:TextBox ID="txtChargeTaka" CssClass="form-control" TextMode="Number" placeholder="Charge Taka..." runat="server"></asp:TextBox>
                            </div>
                        </div>
                        <div class="col-sm-4 col-xs-12 tg-columnpadding">
                            <div class="form-group tg-formgroup">
                                <label class=" form-control" style="text-align:right">Vat Percentage (0-100)%</label>
                            </div>
                        </div>
                        <div class="col-sm-2 col-xs-12 tg-columnpadding">
                            <div class="form-group tg-formgroup">
                                <asp:TextBox ID="txtVat" CssClass="form-control" placeholder="(0-100)" TextMode="Number" runat="server"></asp:TextBox>
                            </div>
                        </div>
                        <div class="col-sm-4 col-xs-12 tg-columnpadding">
                            <div class="form-group tg-formgroup">
                                <label class=" form-control" style="text-align:right">Discount Percentage (0-100)%</label>
                            </div>
                        </div>
                        <div class="col-sm-2 col-xs-12 tg-columnpadding">
                            <div class="form-group tg-formgroup">
                                <asp:TextBox ID="txtDiscount" CssClass="form-control" placeholder="(0-100)" TextMode="Number" runat="server"></asp:TextBox>
                            </div>
                        </div>
                        <div class="col-sm-4 col-xs-12 tg-columnpadding">
                            <div class="form-group tg-formgroup">
                                <label class=" form-control" style="text-align:right">How Many Number Show in Serial</label>
                            </div>
                        </div>
                        <div class="col-sm-2 col-xs-12 tg-columnpadding">
                            <div class="form-group tg-formgroup">
                                <asp:TextBox ID="txtSerialNumber" CssClass="form-control" placeholder="Serial Number" TextMode="Number" runat="server"></asp:TextBox>
                            </div>
                        </div>

                        <div class="col-sm-3 col-xs-12 tg-columnpadding">
                            <div class="form-group tg-formgroup">
                                <asp:Button ID="btnAdvertisement" OnClick="btnAdvertisement_Click" CssClass="tg-btn tg-btn-lg" runat="server" Text="Update Now" />                                
                            </div>
                        </div>
                        
                        
                       
                    </div>
                    <ul class="tg-themelist tg-liststyledot tg-listdatastyle">
                                               

                    </ul>
                </div>
            </div>
            



        </div>
    </div>

</asp:Content>
