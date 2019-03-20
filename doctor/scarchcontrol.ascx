<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="scarchcontrol.ascx.cs" Inherits="doctor.scarchcontrol" %>
		<div id="tg-innerbanner" class="tg-innerbanner tg-haslayout">
			<div class="container">
				<div class="row">
					<div class="col-sm-12 col-xs-12">

                            <div class="tg-formtheme tg-formsearch">
                               
                                <fieldset>
                                    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
                                    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                                        <ContentTemplate>
                                            <div class="tg-select">
                                                <asp:DropDownList ID="ddlIteams" CssClass="" AutoPostBack="true" OnTextChanged="ddlIteams_TextChanged" runat="server">
                                                    <asp:ListItem Value="0">Select Iteam</asp:ListItem>
                                                    <asp:ListItem Value="Doctor">Doctors</asp:ListItem>
                                                    <asp:ListItem Value="Hospitals">Hospitals/Clinic</asp:ListItem>
                                                    <asp:ListItem Value="Blood">Blood Banks</asp:ListItem>
                                                </asp:DropDownList>
                                            </div>
                                            <div class="tg-select">
                                                <asp:DropDownList CssClass="" ID="ddllist" runat="server"></asp:DropDownList>
                                            </div>
                                            <div class="tg-select">
                                                <asp:DropDownList ID="ddlDivision" AutoPostBack="true" OnTextChanged="ddlDivision_TextChanged" runat="server"></asp:DropDownList>
                                            </div>
                                            <div class="tg-select">
                                                <asp:DropDownList ID="ddlDistrict" runat="server"></asp:DropDownList>
                                            </div>
                                        </ContentTemplate>
                                    </asp:UpdatePanel>
                                    <asp:TextBox ID="txtScarch" CssClass="form-control" placeholder="Doctors, Hospitals, Names..." runat="server"></asp:TextBox>
                                    <asp:LinkButton ID="btnScarch" OnClick="btnScarch_Click" CssClass="tg-btnformsearch ss" runat="server"><i class="fa fa-search"></i></asp:LinkButton>
                                </fieldset>
						</div>
					</div>
				</div>
			</div>
		</div>
<style type="text/css">
    
</style>