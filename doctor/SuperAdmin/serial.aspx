<%@ Page Title="" Language="C#" MasterPageFile="~/SuperAdmin/SPAdmin.Master" AutoEventWireup="true" CodeBehind="serial.aspx.cs" Inherits="doctor.SuperAdmin.serial" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="serviceproviderbody" runat="server">

        <div class="col-lg-9 col-md-8 col-sm-8 col-xs-12 pull-right">
        <div class="tg-dashboardfavoritlisting">
            <asp:GridView ID="GridView1" Width="100%" runat="server" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="SqlDataSource1" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" AllowPaging="True">
                <Columns>
                    <asp:CommandField ShowEditButton="True" ShowDeleteButton="True"></asp:CommandField>
                    <asp:BoundField DataField="ID" HeaderText="ID" ReadOnly="True" InsertVisible="False" SortExpression="ID"></asp:BoundField>
                    <asp:BoundField DataField="SerialID" HeaderText="SerialID" SortExpression="SerialID"></asp:BoundField>
                    <asp:TemplateField HeaderText="Information" SortExpression="SchedulID">
                        <EditItemTemplate>
                            <asp:TextBox runat="server" Text='<%# Bind("PatientName") %>' ID="TextBox1"></asp:TextBox>
                            <asp:TextBox runat="server" Text='<%# Bind("Email") %>' ID="TextBox2"></asp:TextBox>
                            <asp:TextBox runat="server" Text='<%# Bind("MobileNo") %>' ID="TextBox3"></asp:TextBox>
                            <asp:TextBox runat="server" Text='<%# Bind("District") %>' ID="TextBox4"></asp:TextBox>
                            <asp:TextBox runat="server" Text='<%# Bind("Upazila") %>' ID="TextBox5"></asp:TextBox>
                            <asp:TextBox runat="server" Text='<%# Bind("OriginalPrice") %>' ID="TextBox6"></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            Name: <asp:Label runat="server" Text='<%# Bind("PatientName") %>' ID="Label1"></asp:Label><br />
                            Email: <asp:Label runat="server" Text='<%# Bind("Email") %>' ID="Label2"></asp:Label><br />
                            Mobile: <asp:Label runat="server" Text='<%# Bind("MobileNo") %>' ID="Label3"></asp:Label><br />
                            District: <asp:Label runat="server" Text='<%# Bind("District") %>' ID="Label4"></asp:Label><br />
                            Upazila: <asp:Label runat="server" Text='<%# Bind("Upazila") %>' ID="Label5"></asp:Label><br />
                            Price: <asp:Label runat="server" Text='<%# Bind("OriginalPrice") %>' ID="Label6"></asp:Label><br />
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="SerialPrice" HeaderText="SerialPrice" SortExpression="SerialPrice"></asp:BoundField>
                    <asp:BoundField DataField="SerialDate" HeaderText="SerialDate" SortExpression="SerialDate"></asp:BoundField>
                    <asp:BoundField DataField="SubmitDate" HeaderText="SubmitDate" SortExpression="SubmitDate"></asp:BoundField>
  
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
            <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:DoctorDBCS %>' DeleteCommand="DELETE FROM [Serial] WHERE [ID] = @ID" InsertCommand="INSERT INTO [Serial] ([SerialID], [SchedulID], [DoctorID], [UserOrNot], [PatientName], [Email], [MobileNo], [Division], [District], [Upazila], [Payment_T_F], [OriginalPrice], [SerialPrice], [AdditionalPrice], [DiscountPercentage], [DicountTaka], [VatPercentage], [VatTaka], [Total], [SerialDate], [SubmitDate], [SerialActive], [PaymentClear]) VALUES (@SerialID, @SchedulID, @DoctorID, @UserOrNot, @PatientName, @Email, @MobileNo, @Division, @District, @Upazila, @Payment_T_F, @OriginalPrice, @SerialPrice, @AdditionalPrice, @DiscountPercentage, @DicountTaka, @VatPercentage, @VatTaka, @Total, @SerialDate, @SubmitDate, @SerialActive, @PaymentClear)" SelectCommand="SELECT * FROM [Serial]" UpdateCommand="UPDATE [Serial] SET [SerialID] = @SerialID, [SchedulID] = @SchedulID, [DoctorID] = @DoctorID, [UserOrNot] = @UserOrNot, [PatientName] = @PatientName, [Email] = @Email, [MobileNo] = @MobileNo, [Division] = @Division, [District] = @District, [Upazila] = @Upazila, [Payment_T_F] = @Payment_T_F, [OriginalPrice] = @OriginalPrice, [SerialPrice] = @SerialPrice, [AdditionalPrice] = @AdditionalPrice, [DiscountPercentage] = @DiscountPercentage, [DicountTaka] = @DicountTaka, [VatPercentage] = @VatPercentage, [VatTaka] = @VatTaka, [Total] = @Total, [SerialDate] = @SerialDate, [SubmitDate] = @SubmitDate, [SerialActive] = @SerialActive, [PaymentClear] = @PaymentClear WHERE [ID] = @ID">
                <DeleteParameters>
                    <asp:Parameter Name="ID" Type="Int32"></asp:Parameter>
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="SerialID" Type="String"></asp:Parameter>
                    <asp:Parameter Name="SchedulID" Type="String"></asp:Parameter>
                    <asp:Parameter Name="DoctorID" Type="String"></asp:Parameter>
                    <asp:Parameter Name="UserOrNot" Type="String"></asp:Parameter>
                    <asp:Parameter Name="PatientName" Type="String"></asp:Parameter>
                    <asp:Parameter Name="Email" Type="String"></asp:Parameter>
                    <asp:Parameter Name="MobileNo" Type="String"></asp:Parameter>
                    <asp:Parameter Name="Division" Type="String"></asp:Parameter>
                    <asp:Parameter Name="District" Type="String"></asp:Parameter>
                    <asp:Parameter Name="Upazila" Type="String"></asp:Parameter>
                    <asp:Parameter Name="Payment_T_F" Type="String"></asp:Parameter>
                    <asp:Parameter Name="OriginalPrice" Type="Int32"></asp:Parameter>
                    <asp:Parameter Name="SerialPrice" Type="Int32"></asp:Parameter>
                    <asp:Parameter Name="AdditionalPrice" Type="Int32"></asp:Parameter>
                    <asp:Parameter Name="DiscountPercentage" Type="Int32"></asp:Parameter>
                    <asp:Parameter Name="DicountTaka" Type="Int32"></asp:Parameter>
                    <asp:Parameter Name="VatPercentage" Type="Int32"></asp:Parameter>
                    <asp:Parameter Name="VatTaka" Type="Int32"></asp:Parameter>
                    <asp:Parameter Name="Total" Type="Int32"></asp:Parameter>
                    <asp:Parameter Name="SerialDate" Type="String"></asp:Parameter>
                    <asp:Parameter Name="SubmitDate" Type="String"></asp:Parameter>
                    <asp:Parameter Name="SerialActive" Type="String"></asp:Parameter>
                    <asp:Parameter Name="PaymentClear" Type="String"></asp:Parameter>
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="SerialID" Type="String"></asp:Parameter>
                    <asp:Parameter Name="SchedulID" Type="String"></asp:Parameter>
                    <asp:Parameter Name="DoctorID" Type="String"></asp:Parameter>
                    <asp:Parameter Name="UserOrNot" Type="String"></asp:Parameter>
                    <asp:Parameter Name="PatientName" Type="String"></asp:Parameter>
                    <asp:Parameter Name="Email" Type="String"></asp:Parameter>
                    <asp:Parameter Name="MobileNo" Type="String"></asp:Parameter>
                    <asp:Parameter Name="Division" Type="String"></asp:Parameter>
                    <asp:Parameter Name="District" Type="String"></asp:Parameter>
                    <asp:Parameter Name="Upazila" Type="String"></asp:Parameter>
                    <asp:Parameter Name="Payment_T_F" Type="String"></asp:Parameter>
                    <asp:Parameter Name="OriginalPrice" Type="Int32"></asp:Parameter>
                    <asp:Parameter Name="SerialPrice" Type="Int32"></asp:Parameter>
                    <asp:Parameter Name="AdditionalPrice" Type="Int32"></asp:Parameter>
                    <asp:Parameter Name="DiscountPercentage" Type="Int32"></asp:Parameter>
                    <asp:Parameter Name="DicountTaka" Type="Int32"></asp:Parameter>
                    <asp:Parameter Name="VatPercentage" Type="Int32"></asp:Parameter>
                    <asp:Parameter Name="VatTaka" Type="Int32"></asp:Parameter>
                    <asp:Parameter Name="Total" Type="Int32"></asp:Parameter>
                    <asp:Parameter Name="SerialDate" Type="String"></asp:Parameter>
                    <asp:Parameter Name="SubmitDate" Type="String"></asp:Parameter>
                    <asp:Parameter Name="SerialActive" Type="String"></asp:Parameter>
                    <asp:Parameter Name="PaymentClear" Type="String"></asp:Parameter>
                    <asp:Parameter Name="ID" Type="Int32"></asp:Parameter>
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
            </div>

</asp:Content>
