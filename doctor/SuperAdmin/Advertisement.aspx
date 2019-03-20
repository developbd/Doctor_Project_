<%@ Page Title="" Language="C#" MasterPageFile="~/SuperAdmin/SPAdmin.Master" AutoEventWireup="true" CodeBehind="Advertisement.aspx.cs" Inherits="doctor.SuperAdmin.Advertisement" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="serviceproviderbody" runat="server">
    <div class="col-lg-9 col-md-8 col-sm-8 col-xs-12 pull-right">
        <div class="tg-dashboardfavoritlisting">

            <div class="tg-dashboardbox">
                <div class="tg-dashboardboxtitle">
                    <h2>Advertisement Image(263 x 270) <asp:Label ID="lblAdvertisementResult" Font-Bold="true" runat="server" ></asp:Label></h2>
                </div>
                <div class="tg-box tg-experience tg-uiicons">
                    <div class="row tg-rowmargin">
                        <div class="col-sm-4 col-xs-12 tg-columnpadding">
                            <div class="form-group tg-formgroup">
                                <asp:TextBox ID="txtTitle" CssClass="form-control" placeholder="advertisement name/ title (Optional)" runat="server"></asp:TextBox>
                            </div>
                        </div>
                        <div class="col-sm-4 col-xs-12 tg-columnpadding">
                            <div class="form-group tg-formgroup">
                                <asp:TextBox ID="txtAdvertisementLink" CssClass="form-control" placeholder="advertisement link type..." runat="server"></asp:TextBox>
                            </div>
                        </div>
                        <div class="col-sm-4 col-xs-12 tg-columnpadding">
                            <div class="form-group tg-formgroup">
                                <asp:FileUpload ID="FileUploadAdvertisement" CssClass=" form-control" runat="server" />
                            </div>
                        </div>
                        <div class="col-sm-2 col-xs-12 tg-columnpadding">
                            <div class="form-group tg-formgroup">
                                <asp:Button ID="btnAdvertisement" OnClick="btnAdvertisement_Click" CssClass="tg-btn tg-btn-lg" runat="server" Text="Add Now" />                                
                            </div>
                        </div>
                        
                        <div class="col-sm-6 col-xs-12  tg-columnpadding">
                            <div class="form-group tg-formgroup">
                               <label class="form-control" style="text-align:right">Only Update Panel: </label>
                            </div>
                        </div>
                        <div class="col-sm-4 col-xs-12  tg-columnpadding">
                            <div class="form-group tg-formgroup">
                               <asp:FileUpload ID="FileUploadUpdate" CssClass="form-control" runat="server" />
                            </div>
                        </div>
                       
                    </div>
                    <ul class="tg-themelist tg-liststyledot tg-listdatastyle">
                        
                        <asp:GridView ID="GridView1" Width="100%" runat="server" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="SqlDataSource1" AllowPaging="True" AllowSorting="True" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3">
                            <Columns>
                                <asp:CommandField ShowEditButton="True" ShowDeleteButton="True"></asp:CommandField>
                                <asp:BoundField DataField="ID" HeaderText="ID" ReadOnly="True" InsertVisible="False" SortExpression="ID"></asp:BoundField>
                                <asp:BoundField DataField="title" HeaderText="title" SortExpression="title"></asp:BoundField>
                                <asp:BoundField DataField="link" HeaderText="link" SortExpression="link"></asp:BoundField>
                                <asp:TemplateField HeaderText="Image" SortExpression="Image">
                                    <EditItemTemplate>                                        
                                        <asp:LinkButton ID="btnUpdate" OnCommand="btnUpdate_Command" CommandArgument='<%# Eval("ID") %>' CssClass="btn btn-info" runat="server">Update</asp:LinkButton>
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:Image ID="Image1" Width="100" Height="100" ImageUrl='<%# Bind("Image","../images/Advertisement/{0}") %>' runat="server" />
                                    </ItemTemplate>
                                </asp:TemplateField>

                                <asp:BoundField DataField="Click" HeaderText="Click" SortExpression="Click"></asp:BoundField>
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
                        <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:DoctorDBCS %>' DeleteCommand="DELETE FROM [Advertisement] WHERE [ID] = @ID" InsertCommand="INSERT INTO [Advertisement] ([title], [link], [Image], [Click]) VALUES (@title, @link, @Image, @Click)" SelectCommand="SELECT * FROM [Advertisement]" UpdateCommand="UPDATE [Advertisement] SET [title] = @title, [link] = @link, [Image] = @Image, [Click] = @Click WHERE [ID] = @ID">
                            <DeleteParameters>
                                <asp:Parameter Name="ID" Type="Int32"></asp:Parameter>
                            </DeleteParameters>
                            <InsertParameters>
                                <asp:Parameter Name="title" Type="String"></asp:Parameter>
                                <asp:Parameter Name="link" Type="String"></asp:Parameter>
                                <asp:Parameter Name="Image" Type="String"></asp:Parameter>
                                <asp:Parameter Name="Click" Type="Int32"></asp:Parameter>
                            </InsertParameters>
                            <UpdateParameters>
                                <asp:Parameter Name="title" Type="String"></asp:Parameter>
                                <asp:Parameter Name="link" Type="String"></asp:Parameter>
                                <asp:Parameter Name="Image" Type="String"></asp:Parameter>
                                <asp:Parameter Name="Click" Type="Int32"></asp:Parameter>
                                <asp:Parameter Name="ID" Type="Int32"></asp:Parameter>
                            </UpdateParameters>
                        </asp:SqlDataSource>
                    </ul>
                </div>
            </div>
            



        </div>
    </div>
</asp:Content>
