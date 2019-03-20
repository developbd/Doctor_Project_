<%@ Page Title="" Language="C#" MasterPageFile="~/SuperAdmin/SPAdmin.Master" AutoEventWireup="true" CodeBehind="User.aspx.cs" Inherits="doctor.SuperAdmin.User" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="serviceproviderbody" runat="server">
    <div class="col-lg-9 col-md-8 col-sm-8 col-xs-12 pull-right">
        <div class="tg-dashboardfavoritlisting">
            <asp:GridView ID="GridView1" Width="100%" runat="server" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="SqlDataSource1" AllowSorting="True" AllowPaging="True" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3">
                <Columns>
                    <asp:CommandField ShowEditButton="True" ShowDeleteButton="True"></asp:CommandField>
                    <asp:TemplateField HeaderText="UserID" SortExpression="UserID">
                        <EditItemTemplate>
                            <asp:TextBox runat="server" Text='<%# Bind("Name") %>' ID="TextBox1"></asp:TextBox>
                            <asp:TextBox runat="server" Text='<%# Bind("Username") %>' ID="TextBox2"></asp:TextBox>
                            <asp:TextBox runat="server" Text='<%# Bind("Password") %>' ID="TextBox3"></asp:TextBox>
                            <asp:TextBox runat="server" Text='<%# Bind("Email") %>' ID="TextBox5"></asp:TextBox>
                            <asp:TextBox runat="server" Text='<%# Bind("Mobile") %>' ID="TextBox6"></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            Name: <asp:Label runat="server" Text='<%# Bind("Name") %>' ID="Label1"></asp:Label><br />
                            Username: <asp:Label runat="server" Text='<%# Bind("Username") %>' ID="Label2"></asp:Label><br />
                            Password: <asp:Label runat="server" Text='<%# Bind("Password") %>' ID="Label3"></asp:Label><br />
                            Email: <asp:Label runat="server" Text='<%# Bind("Email") %>' ID="Label4"></asp:Label><br />
                            Mobile: <asp:Label runat="server" Text='<%# Bind("Mobile") %>' ID="Label5"></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="Auth" HeaderText="Auth" SortExpression="Auth"></asp:BoundField>
                    <asp:TemplateField HeaderText="Photo" SortExpression="Photo">                      
                        <ItemTemplate>
                            <asp:Image ID="Image1" ImageUrl='<%# Bind("Photo","../User/Image/{0}") %>' Width="100" Height="100" runat="server" />
                        </ItemTemplate>
                    </asp:TemplateField>

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



            <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:DoctorDBCS %>' DeleteCommand="DELETE FROM [Registation] WHERE [ID] = @ID" InsertCommand="INSERT INTO [Registation] ([UserID], [Name], [Username], [Password], [Email], [Mobile], [sex], [Reg], [Auth], [Photo]) VALUES (@UserID, @Name, @Username, @Password, @Email, @Mobile, @sex, @Reg, @Auth, @Photo)" SelectCommand="SELECT * FROM [Registation]" UpdateCommand="UPDATE [Registation] SET [UserID] = @UserID, [Name] = @Name, [Username] = @Username, [Password] = @Password, [Email] = @Email, [Mobile] = @Mobile, [sex] = @sex, [Reg] = @Reg, [Auth] = @Auth, [Photo] = @Photo WHERE [ID] = @ID">
                <DeleteParameters>
                    <asp:Parameter Name="ID" Type="Int32"></asp:Parameter>
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="UserID" Type="String"></asp:Parameter>
                    <asp:Parameter Name="Name" Type="String"></asp:Parameter>
                    <asp:Parameter Name="Username" Type="String"></asp:Parameter>
                    <asp:Parameter Name="Password" Type="String"></asp:Parameter>
                    <asp:Parameter Name="Email" Type="String"></asp:Parameter>
                    <asp:Parameter Name="Mobile" Type="String"></asp:Parameter>
                    <asp:Parameter Name="sex" Type="String"></asp:Parameter>
                    <asp:Parameter Name="Reg" Type="String"></asp:Parameter>
                    <asp:Parameter Name="Auth" Type="String"></asp:Parameter>
                    <asp:Parameter Name="Photo" Type="String"></asp:Parameter>
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="UserID" Type="String"></asp:Parameter>
                    <asp:Parameter Name="Name" Type="String"></asp:Parameter>
                    <asp:Parameter Name="Username" Type="String"></asp:Parameter>
                    <asp:Parameter Name="Password" Type="String"></asp:Parameter>
                    <asp:Parameter Name="Email" Type="String"></asp:Parameter>
                    <asp:Parameter Name="Mobile" Type="String"></asp:Parameter>
                    <asp:Parameter Name="sex" Type="String"></asp:Parameter>
                    <asp:Parameter Name="Reg" Type="String"></asp:Parameter>
                    <asp:Parameter Name="Auth" Type="String"></asp:Parameter>
                    <asp:Parameter Name="Photo" Type="String"></asp:Parameter>
                    <asp:Parameter Name="ID" Type="Int32"></asp:Parameter>
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
    </div>

</asp:Content>
