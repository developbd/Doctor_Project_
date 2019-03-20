<%@ Page Title="" Language="C#" MasterPageFile="~/SuperAdmin/SPAdmin.Master" AutoEventWireup="true" CodeBehind="AdminSettings.aspx.cs" Inherits="doctor.SuperAdmin.AdminSettings" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="serviceproviderbody" runat="server">
     <div class="col-lg-9 col-md-8 col-sm-8 col-xs-12 pull-right">
        <div class="tg-dashboardfavoritlisting">

         <%--   <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>--%>
            <div class="tg-dashboardbox">
                <div class="tg-dashboardboxtitle">
                    <h2>Country<asp:Label ID="lblCountryResult" Font-Bold="true" runat="server" ></asp:Label></h2>
                </div>
                <div class="tg-box tg-experience tg-uiicons">
                    <div class="row tg-rowmargin">
                        <div class="col-sm-5 col-xs-12 tg-columnpadding">
                            <div class="form-group tg-formgroup">
                                <asp:TextBox ID="txtCountry" CssClass="form-control" placeholder="country type..." runat="server"></asp:TextBox>
                            </div>
                        </div>
                        <div class="col-sm-5 col-xs-12 tg-columnpadding">
                            <div class="form-group tg-formgroup">
                                 <asp:TextBox ID="txtCountryValue" CssClass="form-control" placeholder="country value..." runat="server"></asp:TextBox>
                            </div>
                        </div>
                        <div class="col-sm-2 col-xs-12 tg-columnpadding">
                            <div class="form-group tg-formgroup">
                                <asp:Button ID="btnAddCountry" OnClick="btnAddCountry_Click" CssClass="tg-btn tg-btn-lg" runat="server" Text="Add Now" />                                
                            </div>
                        </div>
                    </div>
                    <ul class="tg-themelist tg-liststyledot tg-listdatastyle">
                        <asp:GridView ID="GridView1" runat="server" Width="100%" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="SqlDataSource1" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" AllowPaging="True" AllowSorting="True">
                            <Columns>
                                <asp:CommandField ShowEditButton="True" ShowDeleteButton="True"></asp:CommandField>
                                <asp:BoundField DataField="ID" HeaderText="ID" ReadOnly="True" InsertVisible="False" SortExpression="ID"></asp:BoundField>
                                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name"></asp:BoundField>
                                <asp:BoundField DataField="Value" HeaderText="Value" SortExpression="Value"></asp:BoundField>
                            </Columns>
                            <FooterStyle BackColor="White" ForeColor="#000066"></FooterStyle>

                            <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White"></HeaderStyle>

                            <PagerStyle HorizontalAlign="Left" BackColor="White" ForeColor="#000066"></PagerStyle>

                            <RowStyle ForeColor="#000066"></RowStyle>

                            <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White"></SelectedRowStyle>

                            <SortedAscendingCellStyle BackColor="#F1F1F1"></SortedAscendingCellStyle>

                            <SortedAscendingHeaderStyle BackColor="#007DBB"></SortedAscendingHeaderStyle>

                            <SortedDescendingCellStyle BackColor="#CAC9C9"></SortedDescendingCellStyle>

                            <SortedDescendingHeaderStyle BackColor="#00547E"></SortedDescendingHeaderStyle>
                        </asp:GridView>
                        <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:DoctorDBCS %>' DeleteCommand="DELETE FROM [Country] WHERE [ID] = @ID" InsertCommand="INSERT INTO [Country] ([Name], [Value]) VALUES (@Name, @Value)" SelectCommand="SELECT * FROM [Country]" UpdateCommand="UPDATE [Country] SET [Name] = @Name, [Value] = @Value WHERE [ID] = @ID">
                            <DeleteParameters>
                                <asp:Parameter Name="ID" Type="Int32"></asp:Parameter>
                            </DeleteParameters>
                            <InsertParameters>
                                <asp:Parameter Name="Name" Type="String"></asp:Parameter>
                                <asp:Parameter Name="Value" Type="String"></asp:Parameter>
                            </InsertParameters>
                            <UpdateParameters>
                                <asp:Parameter Name="Name" Type="String"></asp:Parameter>
                                <asp:Parameter Name="Value" Type="String"></asp:Parameter>
                                <asp:Parameter Name="ID" Type="Int32"></asp:Parameter>
                            </UpdateParameters>
                        </asp:SqlDataSource>                       
                    </ul>
                </div>
            </div>
            <div class="tg-dashboardbox">
                <div class="tg-dashboardboxtitle">
                    <h2>Division <asp:Label ID="lblDivisionResult" Font-Bold="true" runat="server" ></asp:Label></h2>
                </div>
                <div class="tg-box tg-experience tg-uiicons">
                    <div class="row tg-rowmargin">
                        <div class="col-sm-6 col-xs-12 tg-columnpadding">
                            <div class="form-group tg-formgroup">
                                <asp:DropDownList ID="ddlCountry" CssClass="form-control" runat="server"></asp:DropDownList>
                            </div>
                        </div>
                        <div class="col-sm-6 col-xs-12 tg-columnpadding">
                            <div class="form-group tg-formgroup">
                                <asp:TextBox ID="txtDivision" CssClass="form-control" placeholder="division type..." runat="server"></asp:TextBox>
                            </div>
                        </div>
                        <div class="col-sm-6 col-xs-12 tg-columnpadding">
                            <div class="form-group tg-formgroup">
                                 <asp:TextBox ID="txtDivisionValue" CssClass="form-control" placeholder="division value..." runat="server"></asp:TextBox>
                            </div>
                        </div>
                        <div class="col-sm-3 col-xs-12 tg-columnpadding">
                            <div class="form-group tg-formgroup">
                                <asp:Button ID="btnDivision" OnClick="btnDivision_Click" CssClass="tg-btn tg-btn-lg" runat="server" Text="Add Now" />                                
                            </div>
                        </div>
                        <div class="col-sm-3 col-xs-12 tg-columnpadding">
                            <div class="form-group tg-formgroup">
                                <asp:Button ID="btnCheckDivision" OnClick="btnCheckDivision_Click" CssClass="tg-btn tg-btn-lg" runat="server" Text="Check Now" />
                            </div>
                        </div>

                    </div>
                    <ul class="tg-themelist tg-liststyledot tg-listdatastyle">
                        <asp:GridView ID="GridView2" runat="server" Width="100%" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="SqlDataSource2" AllowPaging="True" AllowSorting="True" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3">
                            <Columns>
                                <asp:CommandField ShowEditButton="True" ShowDeleteButton="True"></asp:CommandField>
                                <asp:BoundField DataField="ID" HeaderText="ID" ReadOnly="True" InsertVisible="False" SortExpression="ID"></asp:BoundField>
                                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name"></asp:BoundField>
                                <asp:BoundField DataField="Value" HeaderText="Value" SortExpression="Value"></asp:BoundField>
                                <asp:BoundField DataField="LinkID" HeaderText="LinkID" SortExpression="LinkID"></asp:BoundField>
                                <asp:BoundField DataField="LinkName" HeaderText="LinkName" SortExpression="LinkName"></asp:BoundField>
                            </Columns>
                            <FooterStyle BackColor="White" ForeColor="#000066"></FooterStyle>

                            <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White"></HeaderStyle>

                            <PagerStyle HorizontalAlign="Left" BackColor="White" ForeColor="#000066"></PagerStyle>

                            <RowStyle ForeColor="#000066"></RowStyle>

                            <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White"></SelectedRowStyle>

                            <SortedAscendingCellStyle BackColor="#F1F1F1"></SortedAscendingCellStyle>

                            <SortedAscendingHeaderStyle BackColor="#007DBB"></SortedAscendingHeaderStyle>

                            <SortedDescendingCellStyle BackColor="#CAC9C9"></SortedDescendingCellStyle>

                            <SortedDescendingHeaderStyle BackColor="#00547E"></SortedDescendingHeaderStyle>
                        </asp:GridView>
                        <asp:SqlDataSource runat="server" ID="SqlDataSource2" ConnectionString='<%$ ConnectionStrings:DoctorDBCS %>' DeleteCommand="DELETE FROM [Division] WHERE [ID] = @ID" InsertCommand="INSERT INTO [Division] ([Name], [Value], [LinkID], [LinkName]) VALUES (@Name, @Value, @LinkID, @LinkName)" SelectCommand="SELECT * FROM [Division] WHERE ([LinkID] = @LinkID)" UpdateCommand="UPDATE [Division] SET [Name] = @Name, [Value] = @Value, [LinkID] = @LinkID, [LinkName] = @LinkName WHERE [ID] = @ID">
                            <DeleteParameters>
                                <asp:Parameter Name="ID" Type="Int32"></asp:Parameter>
                            </DeleteParameters>
                            <InsertParameters>
                                <asp:Parameter Name="Name" Type="String"></asp:Parameter>
                                <asp:Parameter Name="Value" Type="String"></asp:Parameter>
                                <asp:Parameter Name="LinkID" Type="Int32"></asp:Parameter>
                                <asp:Parameter Name="LinkName" Type="String"></asp:Parameter>
                            </InsertParameters>
                            <SelectParameters>
                                <asp:SessionParameter SessionField="CountryID" Name="LinkID" Type="Int32"></asp:SessionParameter>
                            </SelectParameters>
                            <UpdateParameters>
                                <asp:Parameter Name="Name" Type="String"></asp:Parameter>
                                <asp:Parameter Name="Value" Type="String"></asp:Parameter>
                                <asp:Parameter Name="LinkID" Type="Int32"></asp:Parameter>
                                <asp:Parameter Name="LinkName" Type="String"></asp:Parameter>
                                <asp:Parameter Name="ID" Type="Int32"></asp:Parameter>
                            </UpdateParameters>
                        </asp:SqlDataSource>
                    </ul>
                </div>
            </div>
            <div class="tg-dashboardbox">
                <div class="tg-dashboardboxtitle">
                    <h2>District <asp:Label ID="lblDistrictResult" Font-Bold="true" runat="server" ></asp:Label></h2>
                </div>
                <div class="tg-box tg-experience tg-uiicons">
                    <div class="row tg-rowmargin">
                        <div class="col-sm-4 col-xs-12 tg-columnpadding">
                            <div class="form-group tg-formgroup">
                                <asp:DropDownList ID="ddlCountry2" OnTextChanged="ddlCountry2_TextChanged" AutoPostBack="true" CssClass="form-control" runat="server"></asp:DropDownList>
                            </div>
                        </div>
                        <div class="col-sm-4 col-xs-12 tg-columnpadding">
                            <div class="form-group tg-formgroup">
                                <asp:DropDownList ID="ddlDivision" CssClass="form-control" runat="server"></asp:DropDownList>
                            </div>
                        </div>
                        <div class="col-sm-4 col-xs-12 tg-columnpadding">
                            <div class="form-group tg-formgroup">
                                <asp:TextBox ID="txtDistrict" CssClass="form-control" placeholder="district type..." runat="server"></asp:TextBox>
                            </div>
                        </div>
                        <div class="col-sm-6 col-xs-12 tg-columnpadding">
                            <div class="form-group tg-formgroup">
                                 <asp:TextBox ID="txtDistrictValue" CssClass="form-control" placeholder="district value..." runat="server"></asp:TextBox>
                            </div>
                        </div>
                        <div class="col-sm-3 col-xs-12 tg-columnpadding">
                            <div class="form-group tg-formgroup">
                                <asp:Button ID="btnDistrictAdd" OnClick="btnDistrictAdd_Click" CssClass="tg-btn tg-btn-lg" runat="server" Text="Add Now" />                                
                            </div>
                        </div>
                        <div class="col-sm-3 col-xs-12 tg-columnpadding">
                            <div class="form-group tg-formgroup">
                                <asp:Button ID="btnDistrictCheck" OnClick="btnDistrictCheck_Click" CssClass="tg-btn tg-btn-lg" runat="server" Text="Check Now" />                                
                            </div>
                        </div>
                    </div>
                    <ul class="tg-themelist tg-liststyledot tg-listdatastyle">
                        <asp:GridView ID="GridView3" Width="100%" runat="server" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="SqlDataSource3" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" AllowPaging="True" AllowSorting="True">
                            <Columns>
                                <asp:CommandField ShowEditButton="True" ShowDeleteButton="True"></asp:CommandField>
                                <asp:BoundField DataField="ID" HeaderText="ID" ReadOnly="True" InsertVisible="False" SortExpression="ID"></asp:BoundField>
                                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name"></asp:BoundField>
                                <asp:BoundField DataField="Value" HeaderText="Value" SortExpression="Value"></asp:BoundField>
                                <asp:BoundField DataField="LinkID" HeaderText="LinkID" SortExpression="LinkID"></asp:BoundField>
                                <asp:BoundField DataField="LinkName" HeaderText="LinkName" SortExpression="LinkName"></asp:BoundField>
                            </Columns>
                            <FooterStyle BackColor="White" ForeColor="#000066"></FooterStyle>

                            <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White"></HeaderStyle>

                            <PagerStyle HorizontalAlign="Left" BackColor="White" ForeColor="#000066"></PagerStyle>

                            <RowStyle ForeColor="#000066"></RowStyle>

                            <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White"></SelectedRowStyle>

                            <SortedAscendingCellStyle BackColor="#F1F1F1"></SortedAscendingCellStyle>

                            <SortedAscendingHeaderStyle BackColor="#007DBB"></SortedAscendingHeaderStyle>

                            <SortedDescendingCellStyle BackColor="#CAC9C9"></SortedDescendingCellStyle>

                            <SortedDescendingHeaderStyle BackColor="#00547E"></SortedDescendingHeaderStyle>
                        </asp:GridView>
                        <asp:SqlDataSource runat="server" ID="SqlDataSource3" ConnectionString='<%$ ConnectionStrings:DoctorDBCS %>' SelectCommand="SELECT * FROM [District] WHERE ([LinkID] = @LinkID)" DeleteCommand="DELETE FROM [District] WHERE [ID] = @ID" InsertCommand="INSERT INTO [District] ([Name], [Value], [LinkID], [LinkName]) VALUES (@Name, @Value, @LinkID, @LinkName)" UpdateCommand="UPDATE [District] SET [Name] = @Name, [Value] = @Value, [LinkID] = @LinkID, [LinkName] = @LinkName WHERE [ID] = @ID">
                            <DeleteParameters>
                                <asp:Parameter Name="ID" Type="Int32"></asp:Parameter>
                            </DeleteParameters>
                            <InsertParameters>
                                <asp:Parameter Name="Name" Type="String"></asp:Parameter>
                                <asp:Parameter Name="Value" Type="String"></asp:Parameter>
                                <asp:Parameter Name="LinkID" Type="Int32"></asp:Parameter>
                                <asp:Parameter Name="LinkName" Type="String"></asp:Parameter>
                            </InsertParameters>
                            <SelectParameters>
                                <asp:SessionParameter SessionField="DivisionID" Name="LinkID" Type="Int32"></asp:SessionParameter>
                            </SelectParameters>
                            <UpdateParameters>
                                <asp:Parameter Name="Name" Type="String"></asp:Parameter>
                                <asp:Parameter Name="Value" Type="String"></asp:Parameter>
                                <asp:Parameter Name="LinkID" Type="Int32"></asp:Parameter>
                                <asp:Parameter Name="LinkName" Type="String"></asp:Parameter>
                                <asp:Parameter Name="ID" Type="Int32"></asp:Parameter>
                            </UpdateParameters>
                        </asp:SqlDataSource>
                    </ul>
                </div>
            </div>

            <div class="tg-dashboardbox">
                <div class="tg-dashboardboxtitle">
                    <h2>Upazila <asp:Label ID="lblUpazilaResult" Font-Bold="true" runat="server"></asp:Label></h2>
                </div>
                <div class="tg-box tg-experience tg-uiicons">
                    <div class="row tg-rowmargin">
                        <div class="col-sm-4 col-xs-12 tg-columnpadding">
                            <div class="form-group tg-formgroup">
                                <asp:DropDownList ID="ddlCountry3" AutoPostBack="true" OnTextChanged="ddlCountry3_TextChanged" CssClass="form-control" runat="server"></asp:DropDownList>
                            </div>
                        </div>
                        <div class="col-sm-4 col-xs-12 tg-columnpadding">
                            <div class="form-group tg-formgroup">
                                <asp:DropDownList ID="ddlDivision2" OnTextChanged="ddlDivision2_TextChanged" AutoPostBack="true" CssClass="form-control" runat="server"></asp:DropDownList>
                            </div>
                        </div>
                        <div class="col-sm-4 col-xs-12 tg-columnpadding">
                            <div class="form-group tg-formgroup">
                                <asp:DropDownList ID="ddlDistrict" CssClass="form-control" runat="server"></asp:DropDownList>
                            </div>
                        </div>
                        <div class="col-sm-4 col-xs-12 tg-columnpadding">
                            <div class="form-group tg-formgroup">
                                <asp:TextBox ID="txtUpazila" CssClass="form-control" placeholder="upazila value..." runat="server"></asp:TextBox>
                            </div>
                        </div>
                        <div class="col-sm-4 col-xs-12 tg-columnpadding">
                            <div class="form-group tg-formgroup">
                                <asp:TextBox ID="txtUpazilaValue" CssClass="form-control" placeholder="upazila value..." runat="server"></asp:TextBox>
                            </div>
                        </div>
                        <div class="col-sm-2 col-xs-12 tg-columnpadding">
                            <div class="form-group tg-formgroup">
                                <asp:Button ID="btnUpazilaAdd" OnClick="btnUpazilaAdd_Click" CssClass="tg-btn tg-btn-lg" runat="server" Text="Add Now" />
                            </div>
                        </div>
                        <div class="col-sm-2 col-xs-12 tg-columnpadding">
                            <div class="form-group tg-formgroup">
                                <asp:Button ID="btnUpazilaCheck" OnClick="btnUpazilaCheck_Click" CssClass="tg-btn tg-btn-lg" runat="server" Text="Check Now" />
                            </div>
                        </div>
                    </div>
                    <ul class="tg-themelist tg-liststyledot tg-listdatastyle">
                        <asp:GridView ID="GridView4" Width="100%" runat="server" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="SqlDataSource4" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" AllowPaging="True" AllowSorting="True">
                            <Columns>
                                <asp:CommandField ShowEditButton="True" ShowDeleteButton="True"></asp:CommandField>
                                <asp:BoundField DataField="ID" HeaderText="ID" ReadOnly="True" InsertVisible="False" SortExpression="ID"></asp:BoundField>
                                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name"></asp:BoundField>
                                <asp:BoundField DataField="Value" HeaderText="Value" SortExpression="Value"></asp:BoundField>
                                <asp:BoundField DataField="LinkID" HeaderText="LinkID" SortExpression="LinkID"></asp:BoundField>
                                <asp:BoundField DataField="LinkName" HeaderText="LinkName" SortExpression="LinkName"></asp:BoundField>
                            </Columns>
                            <FooterStyle BackColor="White" ForeColor="#000066"></FooterStyle>

                            <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White"></HeaderStyle>

                            <PagerStyle HorizontalAlign="Left" BackColor="White" ForeColor="#000066"></PagerStyle>

                            <RowStyle ForeColor="#000066"></RowStyle>

                            <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White"></SelectedRowStyle>

                            <SortedAscendingCellStyle BackColor="#F1F1F1"></SortedAscendingCellStyle>

                            <SortedAscendingHeaderStyle BackColor="#007DBB"></SortedAscendingHeaderStyle>

                            <SortedDescendingCellStyle BackColor="#CAC9C9"></SortedDescendingCellStyle>

                            <SortedDescendingHeaderStyle BackColor="#00547E"></SortedDescendingHeaderStyle>
                        </asp:GridView>
                        <asp:SqlDataSource runat="server" ID="SqlDataSource4" ConnectionString='<%$ ConnectionStrings:DoctorDBCS %>' DeleteCommand="DELETE FROM [Upazila] WHERE [ID] = @ID" InsertCommand="INSERT INTO [Upazila] ([Name], [Value], [LinkID], [LinkName]) VALUES (@Name, @Value, @LinkID, @LinkName)" SelectCommand="SELECT * FROM [Upazila] WHERE ([LinkID] = @LinkID)" UpdateCommand="UPDATE [Upazila] SET [Name] = @Name, [Value] = @Value, [LinkID] = @LinkID, [LinkName] = @LinkName WHERE [ID] = @ID">
                            <DeleteParameters>
                                <asp:Parameter Name="ID" Type="Int32"></asp:Parameter>
                            </DeleteParameters>
                            <InsertParameters>
                                <asp:Parameter Name="Name" Type="String"></asp:Parameter>
                                <asp:Parameter Name="Value" Type="String"></asp:Parameter>
                                <asp:Parameter Name="LinkID" Type="Int32"></asp:Parameter>
                                <asp:Parameter Name="LinkName" Type="String"></asp:Parameter>
                            </InsertParameters>
                            <SelectParameters>
                                <asp:SessionParameter SessionField="UpdazilaID" Name="LinkID" Type="Int32"></asp:SessionParameter>
                            </SelectParameters>
                            <UpdateParameters>
                                <asp:Parameter Name="Name" Type="String"></asp:Parameter>
                                <asp:Parameter Name="Value" Type="String"></asp:Parameter>
                                <asp:Parameter Name="LinkID" Type="Int32"></asp:Parameter>
                                <asp:Parameter Name="LinkName" Type="String"></asp:Parameter>
                                <asp:Parameter Name="ID" Type="Int32"></asp:Parameter>
                            </UpdateParameters>
                        </asp:SqlDataSource>
                    </ul>
                </div>
            </div>

<%--                </ContentTemplate>
            </asp:UpdatePanel>--%>
        </div>
    </div>
</asp:Content>
