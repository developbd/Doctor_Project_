<%@ Page Title="" Language="C#" MasterPageFile="~/SuperAdmin/SPAdmin.Master" EnableEventValidation="false" AutoEventWireup="true" CodeBehind="contactus.aspx.cs" Inherits="doctor.SuperAdmin.contactus" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="serviceproviderbody" runat="server">
      <div class="col-lg-9 col-md-8 col-sm-8 col-xs-12 pull-right">
        <div class="tg-dashboardfavoritlisting">

            <div class="row">
                <h3>Mail Send</h3>
                <div class="col-md-6">
                    <asp:TextBox ID="txtEmail" CssClass="form-control" TextMode="Email" placeholder="Email" runat="server"></asp:TextBox>
                </div>
                <div class="col-md-6">
                   <asp:TextBox ID="txtSubject" CssClass="form-control" placeholder="Subject" runat="server"></asp:TextBox>
                </div>
                <br /><br />
                <hr />
                <div class="col-md-12">
                   <asp:TextBox ID="txtMessege" CssClass="form-control" TextMode="MultiLine" placeholder="Messege" runat="server"></asp:TextBox>
                </div>
                 <div class="col-md-12">
                <asp:Button ID="btnsend" OnClick="btnsend_Click" CssClass="btn btn-default" runat="server" Text="Send" /><asp:Label ID="lblResult" runat="server"></asp:Label>
                     </div>
            </div>
            <hr />

            <asp:GridView ID="GridView1" Width="100%" runat="server" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="SqlDataSource1" AllowPaging="True" AllowSorting="True" CellPadding="4" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White"></AlternatingRowStyle>
                <Columns>
                    <asp:CommandField ShowEditButton="True" ShowDeleteButton="True"></asp:CommandField>
                    <asp:BoundField DataField="ID" HeaderText="ID" ReadOnly="True" InsertVisible="False" SortExpression="ID"></asp:BoundField>
                    <asp:TemplateField>
                        <ItemTemplate>
                            <asp:LinkButton ID="LinkButton1" PostBackUrl='<%# Eval("Email","contactus?={0}") %>' runat="server">Replay</asp:LinkButton>
                        </ItemTemplate>                 
                    </asp:TemplateField>
                    <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name"></asp:BoundField>
                    <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email"></asp:BoundField>
                    <asp:BoundField DataField="Details" HeaderText="Details" SortExpression="Details"></asp:BoundField>
                    <asp:BoundField DataField="time" HeaderText="time" SortExpression="time"></asp:BoundField>
                </Columns>
                <EditRowStyle BackColor="#7C6F57"></EditRowStyle>

                <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White"></FooterStyle>

                <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White"></HeaderStyle>

                <PagerStyle HorizontalAlign="Center" BackColor="#666666" ForeColor="White"></PagerStyle>

                <RowStyle BackColor="#E3EAEB"></RowStyle>

                <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333"></SelectedRowStyle>

                <SortedAscendingCellStyle BackColor="#F8FAFA"></SortedAscendingCellStyle>

                <SortedAscendingHeaderStyle BackColor="#246B61"></SortedAscendingHeaderStyle>

                <SortedDescendingCellStyle BackColor="#D4DFE1"></SortedDescendingCellStyle>

                <SortedDescendingHeaderStyle BackColor="#15524A"></SortedDescendingHeaderStyle>
            </asp:GridView>
            <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:DoctorDBCS %>' DeleteCommand="DELETE FROM [contactus] WHERE [ID] = @ID" InsertCommand="INSERT INTO [contactus] ([Name], [Email], [Details], [time]) VALUES (@Name, @Email, @Details, @time)" SelectCommand="SELECT * FROM [contactus] order by ID DESC" UpdateCommand="UPDATE [contactus] SET [Name] = @Name, [Email] = @Email, [Details] = @Details, [time] = @time WHERE [ID] = @ID">
                <DeleteParameters>
                    <asp:Parameter Name="ID" Type="Int32"></asp:Parameter>
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="Name" Type="String"></asp:Parameter>
                    <asp:Parameter Name="Email" Type="String"></asp:Parameter>
                    <asp:Parameter Name="Details" Type="String"></asp:Parameter>
                    <asp:Parameter Name="time" Type="String"></asp:Parameter>
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Name" Type="String"></asp:Parameter>
                    <asp:Parameter Name="Email" Type="String"></asp:Parameter>
                    <asp:Parameter Name="Details" Type="String"></asp:Parameter>
                    <asp:Parameter Name="time" Type="String"></asp:Parameter>
                    <asp:Parameter Name="ID" Type="Int32"></asp:Parameter>
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
          </div>
</asp:Content>
