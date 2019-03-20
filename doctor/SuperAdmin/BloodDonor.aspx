<%@ Page Title="" Language="C#" MasterPageFile="~/SuperAdmin/SPAdmin.Master" AutoEventWireup="true" CodeBehind="BloodDonor.aspx.cs" Inherits="doctor.SuperAdmin.BloodDonor" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="serviceproviderbody" runat="server">
    <div class="col-lg-9 col-md-8 col-sm-8 col-xs-12 pull-right">
        <div class="tg-dashboardfavoritlisting">

            <asp:GridView ID="GridView1" Width="100%" runat="server" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="SqlDataSource1" AllowPaging="True" AllowSorting="True" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3">
                <Columns>
                    <asp:CommandField ShowEditButton="True" ShowDeleteButton="True"></asp:CommandField>
                    <asp:TemplateField HeaderText="Fullname" SortExpression="Fullname">
                        <EditItemTemplate>
                            <asp:TextBox runat="server" Text='<%# Bind("Fullname") %>' ID="TextBox1"></asp:TextBox>
                            <asp:TextBox runat="server" Text='<%# Bind("Username") %>' ID="TextBox2"></asp:TextBox>
                            <asp:TextBox runat="server" Text='<%# Bind("Password") %>' ID="TextBox3"></asp:TextBox>
                            <asp:TextBox runat="server" Text='<%# Bind("BloodGroup") %>' ID="TextBox4"></asp:TextBox>
                            <asp:TextBox runat="server" Text='<%# Bind("Mobile") %>' ID="TextBox5"></asp:TextBox>
                            <asp:TextBox runat="server" Text='<%# Bind("Gender") %>' ID="TextBox6"></asp:TextBox>
                            <asp:TextBox runat="server" Text='<%# Bind("Address") %>' ID="TextBox7"></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                           Name: <asp:Label runat="server" Text='<%# Bind("Fullname") %>' ID="Label1"></asp:Label><br />
                           UserName: <asp:Label runat="server" Text='<%# Bind("Username") %>' ID="Label3"></asp:Label><br />
                           Password: <asp:Label runat="server" Text='<%# Bind("Password") %>' ID="Label4"></asp:Label><br />
                           Blood Group: <asp:Label runat="server" Text='<%# Bind("BloodGroup") %>' ID="Label5"></asp:Label><br />
                           Mobile: <asp:Label runat="server" Text='<%# Bind("Mobile") %>' ID="Label6"></asp:Label><br />
                           Gender: <asp:Label runat="server" Text='<%# Bind("Gender") %>' ID="Label7"></asp:Label><br />
                           Address: <asp:Label runat="server" Text='<%# Bind("Address") %>' ID="Label8"></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>             
                          <asp:BoundField DataField="Authority" HeaderText="Authority" SortExpression="Authority"></asp:BoundField>
                    <asp:TemplateField HeaderText="Photo" SortExpression="Photo">
                        <ItemTemplate>
                            <asp:Image ID="Image1" ImageUrl='<%# Bind("Photo","../Donor/Image/{0}") %>' Width="100" Height="100" runat="server" />
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


            <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:DoctorDBCS %>' DeleteCommand="DELETE FROM [DonerRegistation] WHERE [ID] = @ID" InsertCommand="INSERT INTO [DonerRegistation] ([DonerID], [Fullname], [Username], [Password], [BloodGroup], [Email], [Mobile], [Gender], [Country], [Division], [District], [Upazila], [Address], [Authority], [Photo]) VALUES (@DonerID, @Fullname, @Username, @Password, @BloodGroup, @Email, @Mobile, @Gender, @Country, @Division, @District, @Upazila, @Address, @Authority, @Photo)" SelectCommand="SELECT * FROM [DonerRegistation]" UpdateCommand="UPDATE [DonerRegistation] SET [DonerID] = @DonerID, [Fullname] = @Fullname, [Username] = @Username, [Password] = @Password, [BloodGroup] = @BloodGroup, [Email] = @Email, [Mobile] = @Mobile, [Gender] = @Gender, [Country] = @Country, [Division] = @Division, [District] = @District, [Upazila] = @Upazila, [Address] = @Address, [Authority] = @Authority, [Photo] = @Photo WHERE [ID] = @ID">
                <DeleteParameters>
                    <asp:Parameter Name="ID" Type="Int32"></asp:Parameter>
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="DonerID" Type="String"></asp:Parameter>
                    <asp:Parameter Name="Fullname" Type="String"></asp:Parameter>
                    <asp:Parameter Name="Username" Type="String"></asp:Parameter>
                    <asp:Parameter Name="Password" Type="String"></asp:Parameter>
                    <asp:Parameter Name="BloodGroup" Type="String"></asp:Parameter>
                    <asp:Parameter Name="Email" Type="String"></asp:Parameter>
                    <asp:Parameter Name="Mobile" Type="String"></asp:Parameter>
                    <asp:Parameter Name="Gender" Type="String"></asp:Parameter>
                    <asp:Parameter Name="Country" Type="String"></asp:Parameter>
                    <asp:Parameter Name="Division" Type="String"></asp:Parameter>
                    <asp:Parameter Name="District" Type="String"></asp:Parameter>
                    <asp:Parameter Name="Upazila" Type="String"></asp:Parameter>
                    <asp:Parameter Name="Address" Type="String"></asp:Parameter>
                    <asp:Parameter Name="Authority" Type="String"></asp:Parameter>
                    <asp:Parameter Name="Photo" Type="String"></asp:Parameter>
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="DonerID" Type="String"></asp:Parameter>
                    <asp:Parameter Name="Fullname" Type="String"></asp:Parameter>
                    <asp:Parameter Name="Username" Type="String"></asp:Parameter>
                    <asp:Parameter Name="Password" Type="String"></asp:Parameter>
                    <asp:Parameter Name="BloodGroup" Type="String"></asp:Parameter>
                    <asp:Parameter Name="Email" Type="String"></asp:Parameter>
                    <asp:Parameter Name="Mobile" Type="String"></asp:Parameter>
                    <asp:Parameter Name="Gender" Type="String"></asp:Parameter>
                    <asp:Parameter Name="Country" Type="String"></asp:Parameter>
                    <asp:Parameter Name="Division" Type="String"></asp:Parameter>
                    <asp:Parameter Name="District" Type="String"></asp:Parameter>
                    <asp:Parameter Name="Upazila" Type="String"></asp:Parameter>
                    <asp:Parameter Name="Address" Type="String"></asp:Parameter>
                    <asp:Parameter Name="Authority" Type="String"></asp:Parameter>
                    <asp:Parameter Name="Photo" Type="String"></asp:Parameter>
                    <asp:Parameter Name="ID" Type="Int32"></asp:Parameter>
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
    </div>



</asp:Content>
