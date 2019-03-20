<%@ Page Title="" Language="C#" MasterPageFile="~/SuperAdmin/SPAdmin.Master" AutoEventWireup="true" CodeBehind="AdminPanel.aspx.cs" Inherits="doctor.SuperAdmin.AdminPanel" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="serviceproviderbody" runat="server">
        <div class="col-lg-9 col-md-8 col-sm-8 col-xs-12 pull-right">
        <div class="tg-dashboardfavoritlisting">
            <div class="tg-dashboardbox">
                <div class="tg-dashboardboxtitle">
                    <h2>Admin Add
                        <asp:Label ID="lblResult" Font-Bold="true" runat="server"></asp:Label></h2>
                </div>
                <div class="tg-box tg-experience tg-uiicons">
                    <div class="row tg-rowmargin">
                        <div class="col-sm-4 col-xs-12 tg-columnpadding">
                            <asp:TextBox ID="txtUsername" CssClass=" form-control" placeholder="Username" runat="server"></asp:TextBox>
                        </div>
                        <div class="col-sm-4 col-xs-12 tg-columnpadding">
                            <asp:TextBox ID="txtPassword" CssClass=" form-control" placeholder="Password" TextMode="Password" runat="server"></asp:TextBox>
                        </div>
                        <div class="col-sm-4 col-xs-12 tg-columnpadding">
                            <asp:TextBox ID="txtFullname" CssClass=" form-control" placeholder="Full Name" runat="server"></asp:TextBox>
                        </div>
                        <div class="col-sm-2 col-xs-12 tg-columnpadding">
                            <asp:Button ID="btnAdd" OnClick="btnAdd_Click" CssClass="btn btn-info" runat="server" Text="Add" />
                        </div>
                    </div>
                </div>
            </div>
            

            <asp:GridView ID="GridView1" Width="100%" runat="server" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="SqlDataSource1" AllowSorting="True" AllowPaging="True" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3">
                <Columns>
                    <asp:CommandField ShowEditButton="True" ShowDeleteButton="True"></asp:CommandField>
                    <asp:BoundField DataField="ID" HeaderText="ID" ReadOnly="True" InsertVisible="False" SortExpression="ID"></asp:BoundField>
                    <asp:BoundField DataField="UserName" HeaderText="UserName" SortExpression="UserName"></asp:BoundField>
                    <asp:TemplateField HeaderText="Password" SortExpression="Password">
                        <EditItemTemplate>
                            <asp:TextBox runat="server" Text='<%# Bind("Password") %>' ID="TextBox1"></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label runat="server" Text="*******" ID="Label1"></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:BoundField DataField="FullName" HeaderText="FullName" SortExpression="FullName"></asp:BoundField>

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


            <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:DoctorDBCS %>' DeleteCommand="DELETE FROM [AdminLogin] WHERE [ID] = @ID" InsertCommand="INSERT INTO [AdminLogin] ([UserName], [Password], [FullName]) VALUES (@UserName, @Password, @FullName)" SelectCommand="SELECT * FROM [AdminLogin]" UpdateCommand="UPDATE [AdminLogin] SET [UserName] = @UserName, [Password] = @Password, [FullName] = @FullName WHERE [ID] = @ID">
                <DeleteParameters>
                    <asp:Parameter Name="ID" Type="Int32"></asp:Parameter>
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="UserName" Type="String"></asp:Parameter>
                    <asp:Parameter Name="Password" Type="String"></asp:Parameter>
                    <asp:Parameter Name="FullName" Type="String"></asp:Parameter>
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="UserName" Type="String"></asp:Parameter>
                    <asp:Parameter Name="Password" Type="String"></asp:Parameter>
                    <asp:Parameter Name="FullName" Type="String"></asp:Parameter>
                    <asp:Parameter Name="ID" Type="Int32"></asp:Parameter>
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
    </div>
</asp:Content>
