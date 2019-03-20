<%@ Page Title="" Language="C#" MasterPageFile="~/Doctor/Doctor.Master" AutoEventWireup="true" CodeBehind="AppointmentsList.aspx.cs" Inherits="doctor.Doctor.AppointmentsList" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../css/extra.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="DocotorBody" runat="server">
		
						<div class="col-lg-9 col-md-8 col-sm-8 col-xs-12 pull-right">
							<div class="tg-dashboardinvoices">
								<div class="tg-dashboardbox">
									<div class="tg-dashboardboxtitle">
										<h2>Search Appointments List</h2>                                                                          
                                        
									</div>

                                    <div class="row">
                                        <div class="col-md-4">
                                            <asp:TextBox ID="TextBox1" placeholder="Serial Number" CssClass="form-control" runat="server"></asp:TextBox>
                                        </div>
                                        <div class="col-md-2">
                                            <asp:Button ID="btnScarch" OnClick="btnScarch_Click" CssClass="btn btn-info" runat="server" Text="Search" />
                                        </div>
                                          <div class="col-md-2">
                                            <asp:Button ID="btnShowAll"  CssClass="btn btn-danger" OnClick="btnShowAll_Click" runat="server" Text="Show All Serial" />
                                        </div>
                                    </div> 

									<div class="tg-tablescroll">
                                         
										<div class="tg-favoritlistingbox">
											<div class="tg-invoicestitle">
												<span>Information</span>
												<span class="tg-titleamount">Amount</span>
												<span class="tg-titleaction">Action</span>
											</div>
											<ul class="tg-invoices">
                                                <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
                                                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                                                    <ContentTemplate>

                                                        
                                                        <asp:GridView ID="GridQuery" GridLines="None" ShowHeader="false" PageSize="100" runat="server" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="SqlDataSource3">
                                                            <Columns>
                                                                <asp:TemplateField ConvertEmptyStringToNull="False" HeaderText="ID" SortExpression="ID">
                                                                    <ItemTemplate>
                                                                        <li>
                                                                            <div class="tg-invoicesheading">
                                                                                <h6>Serial No: <strong class="colorsup"><%# Eval("SerialID") %></strong>
                                                                                    Patient Name: <strong class="colorsup"><%# Eval("PatientName") %></strong><br />
                                                                                    Mobile : <strong class="colorsup"><%# Eval("MobileNo") %></strong>
                                                                                    Schedul Date: <strong class="colorsup"><%# Eval("SerialDate") %></strong>
                                                                                </h6>
                                                                            </div>
                                                                            <div class="tg-amout">
                                                                                <em>&#2547; <%# Eval("SerialPrice") %></em>Payment: <%# Eval("PaymentClear").ToString()=="TRUE"? "<strong class='clearPay'>CLEAR</strong>":"<strong class='colorsup'>NOT CLEAR</strong>"   %> <%# Eval("SerialActive").ToString()=="TRUE"? "<a class='GreenColor'><i class='fa fa-user-md'></i><i class='fa fa-check-circle' aria-hidden='true'></i></a>":"<a class='colorsup'><i class='fa fa-times-circle' aria-hidden='true'></i></a>" %>
                                                                            </div>
                                                                            <div class="tg-btnaction">
                                                                                <asp:LinkButton ID="LinkButton1" OnCommand="btnDoctorSee_Command" CommandArgument='<%# Eval("ID") %>' CssClass="tg-btnview" runat="server"><i class="fa fa-eye"></i></asp:LinkButton>
                                                                                <asp:LinkButton ID="LinkButton2" OnCommand="btnPaymentClear_Command" CommandArgument='<%# Eval("ID") %>' CssClass="tg-btndelete" runat="server"><i class="fa fa-money"></i></asp:LinkButton>
                                                                            </div>
                                                                        </li>
                                                                    </ItemTemplate>
                                                                </asp:TemplateField>

                                                            </Columns>
                                                        </asp:GridView>
                                                        <asp:SqlDataSource runat="server" ID="SqlDataSource3" ConnectionString='<%$ ConnectionStrings:DoctorDBCS %>' SelectCommand="SELECT * FROM [Serial] WHERE ([SchedulID] = @SchedulID)">
                                                            <SelectParameters>
                                                                <asp:QueryStringParameter QueryStringField="Sid" Name="SchedulID" Type="String"></asp:QueryStringParameter>
                                                            </SelectParameters>
                                                        </asp:SqlDataSource>
                                                        <asp:GridView ID="GridScarch" GridLines="None" ShowHeader="false" PageSize="100" runat="server" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="SqlDataSource2">
                                                            <Columns>
                                                                <asp:TemplateField HeaderText="ID" InsertVisible="False" SortExpression="ID">
                                                                    <ItemTemplate>
                                                                        <li>
                                                                            <div class="tg-invoicesheading">
                                                                                <h6>Serial No: <strong class="colorsup"><%# Eval("SerialID") %></strong>
                                                                                    Patient Name: <strong class="colorsup"><%# Eval("PatientName") %></strong><br />
                                                                                    Mobile : <strong class="colorsup"><%# Eval("MobileNo") %></strong>
                                                                                    Schedul Date: <strong class="colorsup"><%# Eval("SerialDate") %></strong>
                                                                                </h6>

                                                                            </div>
                                                                            <div class="tg-amout">
                                                                                <em>&#2547; <%# Eval("SerialPrice") %></em>Payment: <%# Eval("PaymentClear").ToString()=="TRUE"? "<strong class='clearPay'>CLEAR</strong>":"<strong class='colorsup'>NOT CLEAR</strong>"   %> <%# Eval("SerialActive").ToString()=="TRUE"? "<a class='GreenColor'><i class='fa fa-user-md'></i><i class='fa fa-check-circle' aria-hidden='true'></i></a>":"<a class='colorsup'><i class='fa fa-times-circle' aria-hidden='true'></i></a>" %>
                                                                            </div>
                                                                            <div class="tg-btnaction">
                                                                                <asp:LinkButton ID="LinkButton1" OnCommand="btnDoctorSee_Command" CommandArgument='<%# Eval("ID") %>' CssClass="tg-btnview" runat="server" ><i class="fa fa-eye"></i></asp:LinkButton>
                                                                                <asp:LinkButton ID="LinkButton2" OnCommand="btnPaymentClear_Command" CommandArgument='<%# Eval("ID") %>' CssClass="tg-btndelete" runat="server"><i class="fa fa-money"></i></asp:LinkButton>
                                                                            </div>
                                                                        </li>
                                                                    </ItemTemplate>
                                                                </asp:TemplateField>
                                                            </Columns>
                                                        </asp:GridView>
                                                        <asp:SqlDataSource runat="server" ID="SqlDataSource2" ConnectionString='<%$ ConnectionStrings:DoctorDBCS %>' SelectCommand="SELECT * FROM [Serial] WHERE (([SerialID] = @SerialID) AND ([DoctorID] = @DoctorID))">
                                                            <SelectParameters>
                                                                <asp:ControlParameter ControlID="TextBox1" PropertyName="Text" Name="SerialID" Type="String"></asp:ControlParameter>
                                                                <asp:SessionParameter SessionField="DoctorID" Name="DoctorID" Type="String"></asp:SessionParameter>
                                                            </SelectParameters>
                                                        </asp:SqlDataSource>
                                                        <asp:GridView ID="GridSess" ShowHeader="false" PageSize="100" GridLines="None" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
                                                            <Columns>
                                                                <asp:TemplateField SortExpression="SerialPrice">
                                                                    <ItemTemplate>
                                                                        <li>
                                                                            <div class="tg-invoicesheading">
                                                                                <h6>Serial No: <strong class="colorsup"><%# Eval("SerialID") %></strong>
                                                                                    Patient Name: <strong class="colorsup"><%# Eval("PatientName") %></strong><br />
                                                                                    Mobile : <strong class="colorsup"><%# Eval("MobileNo") %></strong>
                                                                                    Schedul Date: <strong class="colorsup"><%# Eval("SerialDate") %></strong>
                                                                                </h6>
                                                                            </div>
                                                                            <div class="tg-amout">
                                                                                <em>&#2547; <%# Eval("SerialPrice") %></em>Payment: <%# Eval("PaymentClear").ToString()=="TRUE"? "<strong class='clearPay'>CLEAR</strong>":"<strong class='colorsup'>NOT CLEAR</strong>"   %> <%# Eval("SerialActive").ToString()=="TRUE"? "<a class='GreenColor'><i class='fa fa-user-md'></i><i class='fa fa-check-circle' aria-hidden='true'></i></a>":"<a class='colorsup'><i class='fa fa-times-circle' aria-hidden='true'></i></a>" %>
                                                                            </div>
                                                                            <div class="tg-btnaction">
                                                                                <asp:LinkButton ID="btnDoctorSee" OnCommand="btnDoctorSee_Command" CommandArgument='<%# Eval("ID") %>' CssClass="tg-btnview" runat="server"><i class="fa fa-eye"></i></asp:LinkButton>
                                                                                <asp:LinkButton ID="btnPaymentClear" OnCommand="btnPaymentClear_Command" CommandArgument='<%# Eval("ID") %>' CssClass="tg-btndelete" runat="server"><i class="fa fa-money"></i></asp:LinkButton>
                                                                            </div>
                                                                        </li>
                                                                    </ItemTemplate>
                                                                </asp:TemplateField>

                                                            </Columns>
                                                        </asp:GridView>
                                                        <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:DoctorDBCS %>' SelectCommand="SELECT * FROM [Serial] WHERE ([DoctorID] = @DoctorID) order by ID DESC">
                                                            <SelectParameters>
                                                                <asp:SessionParameter SessionField="DoctorID" Name="DoctorID" Type="String"></asp:SessionParameter>
                                                            </SelectParameters>
                                                        </asp:SqlDataSource>
                                                        <asp:GridView ID="gridDate" GridLines="None" ShowHeader="false" PageSize="100" runat="server" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="SqlDataSource4">
                                                            <Columns>
                                                                <asp:TemplateField HeaderText="PaymentClear" SortExpression="PaymentClear">
                                                                    <ItemTemplate>
                                                                         <li>
                                                                            <div class="tg-invoicesheading">
                                                                                <h6>Serial No: <strong class="colorsup"><%# Eval("SerialID") %></strong>
                                                                                    Patient Name: <strong class="colorsup"><%# Eval("PatientName") %></strong><br />
                                                                                    Mobile : <strong class="colorsup"><%# Eval("MobileNo") %></strong>
                                                                                    Schedul Date: <strong class="colorsup"><%# Eval("SerialDate") %></strong>
                                                                                </h6>
                                                                            </div>
                                                                            <div class="tg-amout">
                                                                                <em>&#2547; <%# Eval("SerialPrice") %></em>Payment: <%# Eval("PaymentClear").ToString()=="TRUE"? "<strong class='clearPay'>CLEAR</strong>":"<strong class='colorsup'>NOT CLEAR</strong>"   %> <%# Eval("SerialActive").ToString()=="TRUE"? "<a class='GreenColor'><i class='fa fa-user-md'></i><i class='fa fa-check-circle' aria-hidden='true'></i></a>":"<a class='colorsup'><i class='fa fa-times-circle' aria-hidden='true'></i></a>" %>
                                                                            </div>
                                                                            <div class="tg-btnaction">
                                                                                <asp:LinkButton ID="LinkButton12" OnCommand="btnDoctorSee_Command" CommandArgument='<%# Eval("ID") %>' CssClass="tg-btnview" runat="server"><i class="fa fa-eye"></i></asp:LinkButton>
                                                                                <asp:LinkButton ID="LinkButton23" OnCommand="btnPaymentClear_Command" CommandArgument='<%# Eval("ID") %>' CssClass="tg-btndelete" runat="server"><i class="fa fa-money"></i></asp:LinkButton>
                                                                            </div>
                                                                        </li>
                                                                    </ItemTemplate>
                                                                </asp:TemplateField>

                                                            </Columns>
                                                        </asp:GridView>
                                                        <asp:SqlDataSource runat="server" ID="SqlDataSource4" ConnectionString='<%$ ConnectionStrings:DoctorDBCS %>' SelectCommand="SELECT * FROM [Serial] WHERE ([SerialDate] = @SerialDate)">
                                                            <SelectParameters>
                                                                <asp:QueryStringParameter QueryStringField="date" Name="SerialDate" Type="String"></asp:QueryStringParameter>
                                                            </SelectParameters>
                                                        </asp:SqlDataSource>

                                                    </ContentTemplate>
                                                </asp:UpdatePanel>									
											</ul>
										</div>
									</div>
								</div>
							</div>
						</div>
					
</asp:Content>
