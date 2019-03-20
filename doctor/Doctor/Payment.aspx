<%@ Page Title="" Language="C#" MasterPageFile="~/Doctor/Doctor.Master" AutoEventWireup="true" CodeBehind="Payment.aspx.cs" Inherits="doctor.Doctor.Payment" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../css/extra.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="DocotorBody" runat="server">
    <div class="col-lg-9 col-md-8 col-sm-8 col-xs-12 pull-right">
        <div role="tabpanel" class="tab-pane" id="services">
            <div class="tg-dashboardbox tg-profilesettings">
                <div class="tg-dashboardboxtitle">
                    <h2>Payment</h2>
                </div>
                <div class="tg-box tg-dashboardservices tg-uiicons">
											<div class="row tg-rowmargin">											
												<div class="col-md-4 col-sm-6 col-xs-12 tg-columnpadding">
                                                    <span class="tg-inputicon tg-calendaricon">
                                                        <asp:TextBox ID="txtDate" CssClass="form-control tg-datepicker" placeholder="Schedul Cancle Date" runat="server"></asp:TextBox>
                                                    </span>
												</div>
												<div class="col-md-2 col-sm-6 col-xs-12 tg-columnpadding">
                                                    <asp:Button ID="btnScarch" CssClass="tg-btn tg-btn-lg" OnClick="btnScarch_Click" runat="server" Text="Scarch" />
												</div>
											</div>
                <div class="tg-box tg-dashboardservices tg-uiicons">                
                    <div class="tg-dashboardboxtitle tg-margin">
                        <h2>Services</h2>
                    </div>
                    <div class="tg-dashboardboxtitle tg-feetitle tg-margin">
                        <h2>Fee Per Patient</h2>
                    </div>
                    <div class="tg-servicesbox">
                        <div class="tg-servicesholder">
                            <div class="tg-mainservice"><em>Today Payment</em></div><b style=" float:right;">Total: &#2547; <asp:Label ID="lblTotalPayment" runat="server" ></asp:Label></b>
                            <ul class="tg-themelist tg-liststyledot tg-listdatastyle tg-childservices">
                                <asp:PlaceHolder ID="pnlTodayPayment" runat="server"></asp:PlaceHolder>
                            </ul>
                        </div>
                        <div class="tg-servicesholder">
                            <div class="tg-mainservice"><em>All Patient</em></div>
                            <ul class="tg-themelist tg-liststyledot tg-listdatastyle tg-childservices">
                                <asp:GridView ID="gridDate" GridLines="None" ShowHeader="false" runat="server" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="SqlDataSource2">
                                    <Columns>
                                        <asp:TemplateField HeaderText="PatientName" SortExpression="PatientName">
                                            <ItemTemplate>
                                <li><em>Serial No: <strong class="colorsup"><%# Eval("SerialNumber") %></strong>  Patient Name: <strong class="colorsup"><%# Eval("PatientName") %></strong> Payment Date: <strong class="colorsup"><%# Eval("SubmitDate") %></strong></em> <span>&#2547; <%# Eval("Payment") %></span> </li>
                                            </ItemTemplate>
                                        </asp:TemplateField>

                                    </Columns>
                                </asp:GridView>
                                <asp:SqlDataSource runat="server" ID="SqlDataSource2" ConnectionString='<%$ ConnectionStrings:DoctorDBCS %>' SelectCommand="SELECT * FROM [DoctorPayment] WHERE ([SubmitDate] = @SubmitDate)">
                                    <SelectParameters>
                                        <asp:ControlParameter ControlID="txtDate" PropertyName="Text" Name="SubmitDate" Type="String"></asp:ControlParameter>
                                    </SelectParameters>
                                </asp:SqlDataSource>
                                <asp:GridView ID="gridSess" CssClass="broder" Width="100%" GridLines="None" ShowHeader="false" runat="server" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="SqlDataSource1">
                                    <Columns>
                                        <asp:TemplateField SortExpression="Payment">
                                            <ItemTemplate>
                                <li><em>Serial No: <strong class="colorsup"><%# Eval("SerialNumber") %></strong>  Patient Name: <strong class="colorsup"><%# Eval("PatientName") %></strong> Payment Date: <strong class="colorsup"><%# Eval("SubmitDate") %></strong></em> <span>&#2547; <%# Eval("Payment") %></span> </li>
                                            </ItemTemplate>
                                        </asp:TemplateField>

                                    </Columns>
                                </asp:GridView>
                                <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:DoctorDBCS %>' SelectCommand="SELECT * FROM [DoctorPayment] WHERE ([DoctorID] = @DoctorID)">
                                    <SelectParameters>
                                        <asp:SessionParameter SessionField="DoctorID" Name="DoctorID" Type="String"></asp:SessionParameter>
                                    </SelectParameters>
                                </asp:SqlDataSource>
                            </ul>
                        </div>
                        
                    </div>
                </div>
            </div>            
        </div>
    </div>
</asp:Content>
