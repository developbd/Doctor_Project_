<%@ Page Title="" Language="C#" MasterPageFile="~/Hospital/Hospital.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="doctor.Hospital.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="HospitalBody" runat="server">
        <style type="text/css">
        .btnRed{
            padding:5px;
            border-radius:5px;
            background-color:#dd3131;
            color:white;
            font-size:10px;
        }
            .btnRed:hover {
            background-color:#00b1f5;
            color:white;            
            }
        .btnBlack
        {
            padding:5px;
            border-radius:5px;
            background-color:black;
            color:white;
            font-size:10px;
        }
        .btnBlack:hover
        {
            background-color:#00b1f5;
            color:white;
        }
        .redc{
            color:#dd3131;
        }
        .greenc{
            color:#8ce25e;
        }
    </style>
        <div class="col-lg-9 col-md-8 col-sm-8 col-xs-12 pull-right">
        <div class="tg-dashboardfavoritlisting">
            <div class="tg-dashboardbox">
                <div class="tg-dashboardboxtitle">
                    <h2>Doctor list</h2>
                </div>
                    <div class="tg-tablescroll">
                    <div class="tg-favoritlistingbox">
                        <div class="tg-favoritlisttitle">
                            <span>Docotrs Details</span>
                            <span class="tg-titleaction">Action</span>
                        </div>
                        <ul class="tg-favoritlist">
                            <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
                            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                                <ContentTemplate>
                                    <asp:GridView ID="GridView1" runat="server" ShowHeader="false" GridLines="None" AutoGenerateColumns="False" DataKeyNames="ID" PageSize="100" DataSourceID="SqlDataSource12">
                                        <Columns>
                                            <asp:TemplateField SortExpression="Command">
                                                <ItemTemplate>
                                                    <li>
                                                        <div class="tg-favotirelistcontent">
                                                            <figure>
                                                                <a href="#">
                                                                    <img src='<%# Eval("DoctorPhoto","../Doctor/Image/Profile/{0}") %>' alt="image description">
                                                                </a>
                                                            </figure>
                                                            <div class="tg-listdata">
                                                                <h4><a><%# Eval("FullName") %></a> <a>&nbsp;&nbsp;Reg: <%# Eval("RegistationNumber") %></a></h4>
                                                                <h4><a>&nbsp;&nbsp;&nbsp;Address: <%# Eval("Upazila") %>,<%# Eval("District") %>,<%# Eval("Division") %></a></h4>
                                                                <h4 style="font-size: 8px;"><a>Authorise: <%# Eval("Authorise").ToString()=="TRUE"? "<a class='greenc'><i class='fa fa-check-square'></i></a>":"<a class='redc'><i class='fa fa-times'></i></a>" %></a>&nbsp;&nbsp;&nbsp;Verify: <%# Eval("Verify").ToString()=="TRUE"? "<a class='greenc'><i class='fa fa-check-square'></i></a>":"<a class='redc'><i class='fa fa-times'></i></a>" %><a>&nbsp;&nbsp;&nbsp;Login Permit: <%# Eval("LoginParmit").ToString()=="TRUE"? "<a class='greenc'><i class='fa fa-check-square'></i></a>":"<a class='redc'><i class='fa fa-times'></i></a>" %></a>&nbsp;&nbsp;&nbsp;<a>Date: <%# Eval("IssuDate") %></a></h4>
                                                            </div>
                                                        </div>
                                                        <div class="tg-btnaction">
                                                            <asp:LinkButton ID="btnDelete" OnCommand="btnDelete_Command" OnClientClick="return confirm('Are you sure you want to delete this hospital?');" CssClass="btnRed" CommandArgument='<%# Eval ("ID") %>' runat="server">Delete</asp:LinkButton>
                                                            <asp:LinkButton ID="btndoctorSchedul" OnCommand="btndoctorSchedul_Command" CssClass="btnBlack" runat="server" CommandArgument='<%# Eval ("ID") %>'>Doctor Schedul</asp:LinkButton>
                                                            <a class="btnBlack" href='<%# Eval("DoctorID","AddDoctor.aspx?Edit={0}") %>'>Edit</a>
                                                        </div>
                                                    </li>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                        </Columns>
                                    </asp:GridView>
                                    <asp:SqlDataSource runat="server" ID="SqlDataSource12" ConnectionString='<%$ ConnectionStrings:DoctorDBCS %>' SelectCommand="SELECT * FROM [DoctorRegistation] WHERE ([Owner] = @Owner)">
                                        <SelectParameters>
                                            <asp:SessionParameter SessionField="HospitalID" Name="Owner" Type="String"></asp:SessionParameter>
                                        </SelectParameters>
                                    </asp:SqlDataSource>
                                </ContentTemplate>
                            </asp:UpdatePanel>

                            <!--         <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:DoctorDBCS %>' SelectCommand="SELECT * FROM [DoctorRegistation]"></asp:SqlDataSource> -->


                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>

</asp:Content>
