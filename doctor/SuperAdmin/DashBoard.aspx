<%@ Page Title="" Language="C#" MasterPageFile="~/SuperAdmin/SPAdmin.Master" AutoEventWireup="true" CodeBehind="DashBoard.aspx.cs" Inherits="doctor.SuperAdmin.DashBoard" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="serviceproviderbody" runat="server">
    	<div class="col-lg-9 col-md-8 col-sm-8 col-xs-12 pull-right">
						<div class="tg-dashboardtabs">							
							<div class="tab-content tg-dashboardtabcontent">
								<div role="tabpanel" class="tab-pane active" id="overview">
                                    <div class="tg-searchbulder">
                                        <h1>Welcome To BD Doctors Point</h1>
                                        <h3>Admin Panel</h3>
                                        <br /><br /><br /><hr />
                                        <h3>Total Doctors &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;: <a><asp:Label ID="lblTotalDoctors" runat="server"></asp:Label></a></h3>
                                        <h3>Total Hospital&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;: <a><asp:Label ID="lblTotalHospital" runat="server"></asp:Label></a></h3>
                                        <h3>Total Blood Doner&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;: <a><asp:Label ID="lblTotalBloodDoner" runat="server"></asp:Label></a></h3>
                                        <h3>Total Serial&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;: <a><asp:Label ID="lbltotalSerial" runat="server"></asp:Label></a></h3>
                                        <h3>Today Serial&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;: <a><asp:Label ID="lbltodayserial" runat="server"></asp:Label></a></h3>
                                        <hr />
                                        </div>
                                    </div>
                                </div>
                            </div>
            </div>

</asp:Content>
