<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="search.aspx.cs" Inherits="doctor.search" %>

<%@ Register Src="~/scarchcontrol.ascx" TagPrefix="uc1" TagName="scarchcontrol" %>
<%@ Register Src="~/Advertisement.ascx" TagPrefix="uc1" TagName="Advertisement" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .noborder{
           border-collapse: inherit;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <uc1:scarchcontrol runat="server" id="scarchcontrol" />
		<!--************************************
					Inner Banner End			
		*************************************-->
		<!--************************************
						Main Start				
		*************************************-->
		<main id="tg-main" class="tg-main tg-haslayout">
			<div class="container">
				<div class="row">
					<div id="tg-twocolumns" class="tg-twocolumns">
                      
<uc1:Advertisement runat="server" id="Advertisement" />
						<%--<div class="col-sm-12 col-xs-12">
							<div class="tg-pagehead">
								<p>25486 matches found for:  <span>Dentist in Manchester</span></p>
							</div>
						</div>--%>
						<%--<div class="col-sm-4">
							<aside id="tg-sidebar" class="tg-sidebar">
                                    <div class="tg-themeform tg-formrefinesearch">
									<h3>Narrow Your Search</h3>
									<h4>Appointment Type</h4>
                                        <asp:RadioButton ID="RadioButton2" runat="server" Text=" Instant Appointment" CssClass="labelarea"></asp:RadioButton>
										<asp:RadioButton ID="RadioButton1" runat="server" Text=" On Call Appointment"></asp:RadioButton>
									<fieldset>
										<h4>Availability</h4>
										<span class="tg-checkbox">
                                            <asp:CheckBox ID="CheckBox1" runat="server" />
											<label for="any">Any</label>
										</span>
										<span class="tg-checkbox">
											<input type="checkbox" id="monday" name="availability" value="Monday">
											<label for="monday">Monday</label>
										</span>
										<span class="tg-checkbox">
											<input type="checkbox" id="tuesday" name="availability" value="Tuesday">
											<label for="tuesday">Tuesday</label>
										</span>
										<span class="tg-checkbox">
											<input type="checkbox" id="wednesday" name="availability" value="Wednesday">
											<label for="wednesday">Wednesday</label>
										</span>
										<span class="tg-checkbox">
											<input type="checkbox" id="thursday" name="availability" value="Thursday">
											<label for="thursday">Thursday</label>
										</span>
										<span class="tg-checkbox">
											<input type="checkbox" id="friday" name="availability" value="Friday">
											<label for="friday">Friday</label>
										</span>
										<span class="tg-checkbox">
											<input type="checkbox" id="saturday" name="availability" value="Saturday">
											<label for="saturday">Saturday</label>
										</span>
										<span class="tg-checkbox">
											<input type="checkbox" id="sunday" name="availability" value="Sunday">
											<label for="sunday">Sunday</label>
										</span>
										<div class="tg-uislider">
											<div id="tg-timerangeslider" class="tg-timerangeslider tg-themerangeslider">
												<div class="sliders_step1">
													<div id="slider-range"></div>
												</div>
											</div>
                                            <!--
											<div class="tg-amountbox">
												<span>Time Range: </span>
												<span class="tg-timeslider">9:00 AM</span> - <span class="tg-timeslider2">5:00 PM</span>
											</div>
                                            -->
										</div>
									</fieldset>
									<fieldset>
										<h4>Gender</h4>
										<span class="tg-checkbox">
											<input type="checkbox" id="allgender" name="gender" value="all gender">
											<label for="allgender">All</label>
										</span>
										<span class="tg-checkbox">
											<input type="checkbox" id="male" name="gender" value="male">
											<label for="male">Male</label>
										</span>
										<span class="tg-checkbox">
											<input type="checkbox" id="female" name="gender" value="female">
											<label for="female">Female</label>
										</span>
									</fieldset>
                                       
                                        <!--
									<fieldset>
										<h4>Consultation Fee</h4>
										<div id="tg-consultationfeerangeslider" class="tg-consultationfeerangeslider tg-themerangeslider"></div>
										<div class="tg-amountbox">
											<span>Fee Range: </span>
											<input type="text" id="tg-consultationfeeamount" readonly>
										</div>
									</fieldset>
                                        -->
                                        <!--
									<fieldset>
										<h4>Rating</h4>
										<div class="tg-ratingcheckbox">
											<span class="tg-checkbox">
												<input type="checkbox" id="allrating" name="ratingfilter" value="allrating" checked>
												<label for="allrating">all</label>
											</span>
											<span class="tg-checkbox">
												<input type="checkbox" id="onestar" name="ratingfilter" value="onestar">
												<label for="onestar"><span class="tg-stars"><span></span></span></label>
											</span>
											<span class="tg-checkbox">
												<input type="checkbox" id="twostar" name="ratingfilter" value="twostar">
												<label for="twostar"><span class="tg-stars"><span></span></span></label>
											</span>
											<span class="tg-checkbox">
												<input type="checkbox" id="threestar" name="ratingfilter" value="threestar">
												<label for="threestar"><span class="tg-stars"><span></span></span></label>
											</span>
											<span class="tg-checkbox">
												<input type="checkbox" id="fourstar" name="ratingfilter" value="fourstar">
												<label for="fourstar"><span class="tg-stars"><span></span></span></label>
											</span>
											<span class="tg-checkbox">
												<input type="checkbox" id="fivestar" name="ratingfilter" value="fivestar">
												<label for="fivestar"><span class="tg-stars"><span></span></span></label>
											</span>
										</div>
									</fieldset>
									<fieldset>
										<h4>Radius</h4>
										<div id="tg-radiusrangeslider" class="tg-radiusrangeslider tg-themerangeslider"></div>
										<div class="tg-amountbox">
											<span>Distance in (Miles): </span>
											<input type="text" id="tg-radiusamount" readonly>
										</div>
									</fieldset>
									<fieldset>
										<h4>Language</h4>
										<span class="tg-checkbox">
											<input type="checkbox" id="alllanguages" name="languages" value="all languages" checked>
											<label for="alllanguages">all</label>
										</span>
										<span class="tg-checkbox">
											<input type="checkbox" id="chinese" name="languages" value="Chinese">
											<label for="chinese">Chinese</label>
										</span>
										<span class="tg-checkbox">
											<input type="checkbox" id="czech" name="languages" value="Czech">
											<label for="czech">Czech</label>
										</span>
										<span class="tg-checkbox">
											<input type="checkbox" id="arabic" name="languages" value="Arabic">
											<label for="arabic">Arabic</label>
										</span>
										<span class="tg-checkbox">
											<input type="checkbox" id="english" name="languages" value="English">
											<label for="english">English</label>
										</span>
										<span class="tg-checkbox">
											<input type="checkbox" id="french" name="languages" value="French">
											<label for="french">French</label>
										</span>
										<span class="tg-checkbox">
											<input type="checkbox" id="spanish" name="languages" value="Spanish">
											<label for="spanish">Spanish</label>
										</span>
										<span class="tg-checkbox">
											<input type="checkbox" id="russian" name="languages" value="Russian">
											<label for="russian">Russian</label>
										</span>
									</fieldset>
									<fieldset>
										<button class="tg-btn" type="reset">reset all</button>
										<button class="tg-btn" type="submit">apply filter</button>
									</fieldset>
                                        -->

                                  </div>
							</aside>
						</div>--%>
                        
						<div class="col-sm-9">
							<div id="tg-content" class="tg-content">
								<div class="tg-searchresult">
									<div class="tg-directposts"> 
                                        <asp:GridView ID="GridView2" runat="server" GridLines="None" style="border:5px solid #fff; border-collapse: collapse"  ShowHeader="false" PageSize="100"  AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="SqlDataSource3">
                                            <Columns>
                                                <asp:TemplateField  SortExpression="DoctorDetails">
                                                    <ItemTemplate>
                                                        <div class="tg-directpost" style="margin-top:10px; margin-bottom:10px;">
                                                            <figure class="tg-directpostimg">
                                                                <a href="#">
                                                                    <img src='<%# Eval("DoctorPhoto","../Doctor/Image/PageView/{0}") %>'>
                                                                </a>
                                                                <figcaption>
                                                                    <a class="tg-usericon tg-iconfeatured">
                                                                        <em class="tg-usericonholder">
                                                                            <i class="fa fa-bolt"></i>
                                                                            <span>featured</span>
                                                                        </em>
                                                                    </a>
                                                                    <a class="tg-usericon tg-iconvarified">
                                                                        <em class="tg-usericonholder">
                                                                            <i class="fa fa-shield"></i>
                                                                            <span>varified</span>
                                                                        </em>
                                                                    </a>
                                                                </figcaption>
                                                            </figure>
                                                            <div class="tg-directinfo">
                                                                <div class="tg-leftarea">
                                                                    <div class="tg-directposthead">
                                                                        <h3><a href="#"><%# Eval("FullName") %></a></h3>
                                                                        <div class="tg-subjects"><%# Eval("Qualification") %></div>
                                                                    </div>
                                                                    <ul class="tg-contactinfo">
                                                                        <li><a href="#"><i class="fa fa-location-arrow"></i>
                                                                            <address><%# Eval("Address") %></address>
                                                                        </a></li>
                                                                        <li><a href="#"><i class="fa fa-phone"></i><span><%# Eval("Mobile") %></span></a></li>
                                                                    </ul>
                                                                </div>
                                                                <div class="tg-rightarea">
                                                                    <div class="tg-bookappoinment">
                                                                        <a href="#"><i class="fa fa-info"></i><%# Eval("Categories") %><span>(<%# Eval("District") %>)</span></a>
                                                                        <button type="button" class="tg-btn" onclick="location.href='Appointment?=<%# Eval("DoctorID") %>'" data-toggle="modal" data-target="#tg-appointmentlightbox">Appointment</button>                                                                        
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>            
                                                    </ItemTemplate>
                                                </asp:TemplateField>

                                            </Columns>
                                        </asp:GridView>
                                        <asp:SqlDataSource runat="server" ID="SqlDataSource3" ConnectionString='<%$ ConnectionStrings:DoctorDBCS %>' SelectCommand="SELECT * FROM [DoctorRegistation] WHERE (([Division] = @Division) AND ([District] = @District) AND ([Upazila] = @Upazila))">
                                            <SelectParameters>
                                                <asp:QueryStringParameter QueryStringField="Div" Name="Division" Type="String"></asp:QueryStringParameter>
                                                <asp:QueryStringParameter QueryStringField="Dis" Name="District" Type="String"></asp:QueryStringParameter>
                                                <asp:QueryStringParameter QueryStringField="Upa" Name="Upazila" Type="String"></asp:QueryStringParameter>
                                            </SelectParameters>
                                        </asp:SqlDataSource>
                                        <asp:GridView ID="GridView1" runat="server" GridLines="None" style="border:5px solid #fff; border-collapse: collapse" ShowHeader="false" PageSize="100" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="SqlDataSource2">
                                            <Columns>
                                                <asp:TemplateField SortExpression="DoctorDetails">                                                   
                                                    <ItemTemplate>
                                                        <div class="tg-directpost" style="margin-top:10px; margin-bottom:10px;">
                                                            <figure class="tg-directpostimg">
                                                                <a href="#">
                                                                    <img src='<%# Eval("DoctorPhoto","../Doctor/Image/PageView/{0}") %>'>
                                                                </a>
                                                                <figcaption>
                                                                    <a class="tg-usericon tg-iconfeatured">
                                                                        <em class="tg-usericonholder">
                                                                            <i class="fa fa-bolt"></i>
                                                                            <span>featured</span>
                                                                        </em>
                                                                    </a>
                                                                    <a class="tg-usericon tg-iconvarified">
                                                                        <em class="tg-usericonholder">
                                                                            <i class="fa fa-shield"></i>
                                                                            <span>varified</span>
                                                                        </em>
                                                                    </a>
                                                                </figcaption>
                                                            </figure>
                                                            <div class="tg-directinfo">
                                                                <div class="tg-leftarea">
                                                                    <div class="tg-directposthead">
                                                                        <h3><a href="#"><%# Eval("FullName") %></a></h3>
                                                                        <div class="tg-subjects"><%# Eval("Qualification") %></div>
                                                                    </div>
                                                                    <ul class="tg-contactinfo">
                                                                        <li><a href="#"><i class="fa fa-location-arrow"></i>
                                                                            <address><%# Eval("Address") %></address>
                                                                        </a></li>
                                                                        <li><a href="#"><i class="fa fa-phone"></i><span><%# Eval("Mobile") %></span></a></li>
                                                                    </ul>
                                                                </div>
                                                                <div class="tg-rightarea">
                                                                    <div class="tg-bookappoinment">
                                                                        <a href="#"><i class="fa fa-info"></i><%# Eval("Categories") %><span>(<%# Eval("District") %>)</span></a>
                                                                        <button type="button" class="tg-btn" onclick="location.href='Appointment?=<%# Eval("DoctorID") %>'" data-toggle="modal" data-target="#tg-appointmentlightbox">Appointment</button>                                                                        
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>            

                                                    </ItemTemplate>
                                                </asp:TemplateField>

                                            </Columns>
                                        </asp:GridView>
                                        <asp:SqlDataSource runat="server" ID="SqlDataSource2" ConnectionString='<%$ ConnectionStrings:DoctorDBCS %>' SelectCommand="SELECT * FROM [DoctorRegistation] WHERE (([Categories] = @Categories) AND ([District] = @District) AND Authorise='TRUE' AND Verify='TRUE') AND ([FullName] LIKE '%' + @FullName + '%' )">
                                            <SelectParameters>
                                                <asp:QueryStringParameter QueryStringField="Cat" Name="Categories" Type="String"></asp:QueryStringParameter>
                                                <asp:QueryStringParameter QueryStringField="Dis" Name="District" Type="String"></asp:QueryStringParameter>
                                                <asp:QueryStringParameter QueryStringField="txt" Name="FullName" Type="String"></asp:QueryStringParameter>
                                            </SelectParameters>
                                        </asp:SqlDataSource>
                                        <asp:GridView ID="GridViewHomePageScarch" GridLines="None" ShowHeader="False" style="border:5px solid #fff; border-collapse: collapse" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" AllowPaging="True" PageSize="100" >
                                            <Columns>
                                                <asp:TemplateField>
                                                    <ItemTemplate>
                                                        <div class="tg-directpost" style="margin-top:10px; margin-bottom:10px;">
                                                            <figure class="tg-directpostimg">
                                                                <a href="#">
                                                                    <img src='<%# Eval("DoctorPhoto","../Doctor/Image/PageView/{0}") %>'>
                                                                </a>
                                                                <figcaption>
                                                                    <a class="tg-usericon tg-iconfeatured">
                                                                        <em class="tg-usericonholder">
                                                                            <i class="fa fa-bolt"></i>
                                                                            <span>featured</span>
                                                                        </em>
                                                                    </a>
                                                                    <a class="tg-usericon tg-iconvarified">
                                                                        <em class="tg-usericonholder">
                                                                            <i class="fa fa-shield"></i>
                                                                            <span>varified</span>
                                                                        </em>
                                                                    </a>
                                                                </figcaption>
                                                            </figure>
                                                            <div class="tg-directinfo">
                                                                <div class="tg-leftarea">
                                                                    <div class="tg-directposthead">
                                                                        <h3><a href="#"><%# Eval("FullName") %></a></h3>
                                                                        <div class="tg-subjects"><%# Eval("Qualification") %></div>
                                                                    </div>
                                                                    <ul class="tg-contactinfo">
                                                                        <li><a href="#"><i class="fa fa-location-arrow"></i>
                                                                            <address><%# Eval("Address") %></address>
                                                                        </a></li>
                                                                        <li><a href="#"><i class="fa fa-phone"></i><span><%# Eval("Mobile") %></span></a></li>
                                                                    </ul>
                                                                </div>
                                                                <div class="tg-rightarea">
                                                                    <div class="tg-bookappoinment">
                                                                        <a href="#"><i class="fa fa-info"></i><%# Eval("Categories") %><span>(<%# Eval("District") %>)</span></a>
                                                                        <button type="button" class="tg-btn" onclick="location.href='Appointment?=<%# Eval("DoctorID") %>'" data-toggle="modal" data-target="#tg-appointmentlightbox">Appointment</button>                                                                        
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>                                               
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                            </Columns>
                                        </asp:GridView>
                                        <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:DoctorDBCS %>' SelectCommand="SELECT * FROM [DoctorRegistation] WHERE ([Categories] = @Categories) and Authorise='TRUE' and Verify='TRUE'">
                                            <SelectParameters>
                                                <asp:QueryStringParameter QueryStringField="category" Name="Categories" Type="String"></asp:QueryStringParameter>
                                            </SelectParameters>
                                        </asp:SqlDataSource>
                                        <asp:GridView ID="gridHospital" GridLines="None" ShowHeader="False" Style="border: 5px solid #fff; border-collapse: collapse" runat="server" AutoGenerateColumns="False" AllowPaging="True" PageSize="100" DataSourceID="SqlDataSourceforHospital">
                                            <Columns>
                                                <asp:TemplateField>
                                                    <ItemTemplate>
                                                        <div class="tg-directpost" style="margin-top: 10px; margin-bottom: 10px;">
                                                            <figure class="tg-directpostimg">
                                                                <a href="#">
                                                                    <img src='<%# Eval("HospitalPhoto","../Hospital/Image/Hospital/PageView/{0}") %>'>
                                                                </a>
                                                                <figcaption>
                                                                    <a class="tg-usericon tg-iconfeatured">
                                                                        <em class="tg-usericonholder">
                                                                            <i class="fa fa-bolt"></i>
                                                                            <span>featured</span>
                                                                        </em>
                                                                    </a>
                                                                    <a class="tg-usericon tg-iconvarified">
                                                                        <em class="tg-usericonholder">
                                                                            <i class="fa fa-shield"></i>
                                                                            <span>varified</span>
                                                                        </em>
                                                                    </a>
                                                                </figcaption>
                                                            </figure>
                                                            <div class="tg-directinfo">
                                                                <div class="tg-leftarea">
                                                                    <div class="tg-directposthead">
                                                                        <h3><a href="#"><%# Eval("HospitalName") %></a></h3>
                                                                        <div class="tg-subjects"><%# Eval("HospitalCategory") %></div>
                                                                    </div>
                                                                    <ul class="tg-contactinfo">
                                                                        <li><a href="#"><i class="fa fa-location-arrow"></i>
                                                                            <address><%# Eval("HospitalAddress") %></address>
                                                                        </a></li>
                                                                        <li><a href="#"><i class="fa fa-phone"></i><span><%# Eval("HospitalMoblile") %></span></a></li>
                                                                    </ul>
                                                                </div>
                                                                <div class="tg-rightarea">
                                                                    <div class="tg-bookappoinment">
                                                                        <a href="#"><i class="fa fa-info"></i><%# Eval("HospitalType") %><span>(<%# Eval("Upazilla") %>)</span></a>
                                                                        <button type="button" class="tg-btn" onclick="location.href='information?=<%# Eval("HospitalID") %>'" data-toggle="modal" data-target="#tg-appointmentlightbox">Hospital info</button>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                            </Columns>
                                        </asp:GridView>
                                        <asp:SqlDataSource runat="server" ID="SqlDataSourceforHospital" ConnectionString='<%$ ConnectionStrings:DoctorDBCS %>' SelectCommand="SELECT * FROM [HospitalRegistation] WHERE (([HospitalCategory] = @HospitalCategory) AND ([District] = @District) AND ([HospitalAddress] LIKE '%' + @HospitalAddress + '%')) and Verify='TRUE'">
                                            <SelectParameters>
                                                <asp:QueryStringParameter QueryStringField="HCat" Name="HospitalCategory" Type="String"></asp:QueryStringParameter>
                                                <asp:QueryStringParameter QueryStringField="HDis" Name="District" Type="String"></asp:QueryStringParameter>
                                                <asp:QueryStringParameter QueryStringField="txt" Name="HospitalAddress" Type="String"></asp:QueryStringParameter>
                                            </SelectParameters>
                                        </asp:SqlDataSource>
                                        <asp:GridView ID="GridView3" GridLines="None" ShowHeader="False" Style="border: 5px solid #fff; border-collapse: collapse" runat="server" AutoGenerateColumns="False" AllowPaging="True" PageSize="100" DataSourceID="SqlDataSource4">
                                            <Columns>
                                                <asp:TemplateField>
                                                    <ItemTemplate>
                                                        <div class="tg-directpost" style="margin-top: 10px; margin-bottom: 10px;">
                                                            <figure class="tg-directpostimg">
                                                                <a href="#">
                                                                    <img src='<%# Eval("HospitalPhoto","../Hospital/Image/Hospital/PageView/{0}") %>'>
                                                                </a>
                                                                <figcaption>
                                                                    <a class="tg-usericon tg-iconfeatured">
                                                                        <em class="tg-usericonholder">
                                                                            <i class="fa fa-bolt"></i>
                                                                            <span>featured</span>
                                                                        </em>
                                                                    </a>
                                                                    <a class="tg-usericon tg-iconvarified">
                                                                        <em class="tg-usericonholder">
                                                                            <i class="fa fa-shield"></i>
                                                                            <span>varified</span>
                                                                        </em>
                                                                    </a>
                                                                </figcaption>
                                                            </figure>
                                                            <div class="tg-directinfo">
                                                                <div class="tg-leftarea">
                                                                    <div class="tg-directposthead">
                                                                        <h3><a href="#"><%# Eval("HospitalName") %></a></h3>
                                                                        <div class="tg-subjects"><%# Eval("HospitalCategory") %></div>
                                                                    </div>
                                                                    <ul class="tg-contactinfo">
                                                                        <li><a href="#"><i class="fa fa-location-arrow"></i>
                                                                            <address><%# Eval("HospitalAddress") %></address>
                                                                        </a></li>
                                                                        <li><a href="#"><i class="fa fa-phone"></i><span><%# Eval("HospitalMoblile") %></span></a></li>
                                                                    </ul>
                                                                </div>
                                                                <div class="tg-rightarea">
                                                                    <div class="tg-bookappoinment">
                                                                        <a href="#"><i class="fa fa-info"></i><%# Eval("HospitalType") %><span>(<%# Eval("Upazilla") %>)</span></a>
                                                                        <button type="button" class="tg-btn" onclick="location.href='information?=<%# Eval("HospitalID") %>'" data-toggle="modal" data-target="#tg-appointmentlightbox">Hospital info</button>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                            </Columns>
                                        </asp:GridView>
                                        <asp:SqlDataSource runat="server" ID="SqlDataSource4" ConnectionString='<%$ ConnectionStrings:DoctorDBCS %>' SelectCommand="SELECT * FROM [HospitalRegistation] WHERE (([Division] = @Division) AND ([District] = @District) AND ([Upazilla] = @Upazilla))">
                                            <SelectParameters>
                                                <asp:QueryStringParameter QueryStringField="HDiv" Name="Division" Type="String"></asp:QueryStringParameter>
                                                <asp:QueryStringParameter QueryStringField="HDis" Name="District" Type="String"></asp:QueryStringParameter>
                                                <asp:QueryStringParameter QueryStringField="HUpa" Name="Upazilla" Type="String"></asp:QueryStringParameter>
                                            </SelectParameters>
                                        </asp:SqlDataSource>
                                        <asp:GridView ID="GridView4" GridLines="None" ShowHeader="False" Style="border: 5px solid #fff; border-collapse: collapse" runat="server" AutoGenerateColumns="False" AllowPaging="True" PageSize="100" DataSourceID="SqlDataSource5">
                                            <Columns>
                                                <asp:TemplateField>
                                                    <ItemTemplate>
                                                        <div class="tg-directpost" style="margin-top: 10px; margin-bottom: 10px;">
                                                            <figure class="tg-directpostimg">
                                                                <a href="#">
                                                                    <img src='<%# Eval("HospitalPhoto","../Hospital/Image/Hospital/PageView/{0}") %>'>
                                                                </a>
                                                                <figcaption>
                                                                    <a class="tg-usericon tg-iconfeatured">
                                                                        <em class="tg-usericonholder">
                                                                            <i class="fa fa-bolt"></i>
                                                                            <span>featured</span>
                                                                        </em>
                                                                    </a>
                                                                    <a class="tg-usericon tg-iconvarified">
                                                                        <em class="tg-usericonholder">
                                                                            <i class="fa fa-shield"></i>
                                                                            <span>varified</span>
                                                                        </em>
                                                                    </a>
                                                                </figcaption>
                                                            </figure>
                                                            <div class="tg-directinfo">
                                                                <div class="tg-leftarea">
                                                                    <div class="tg-directposthead">
                                                                        <h3><a href="#"><%# Eval("HospitalName") %></a></h3>
                                                                        <div class="tg-subjects"><%# Eval("HospitalCategory") %></div>
                                                                    </div>
                                                                    <ul class="tg-contactinfo">
                                                                        <li><a href="#"><i class="fa fa-location-arrow"></i>
                                                                            <address><%# Eval("HospitalAddress") %></address>
                                                                        </a></li>
                                                                        <li><a href="#"><i class="fa fa-phone"></i><span><%# Eval("HospitalMoblile") %></span></a></li>
                                                                    </ul>
                                                                </div>
                                                                <div class="tg-rightarea">
                                                                    <div class="tg-bookappoinment">
                                                                        <a href="#"><i class="fa fa-info"></i><%# Eval("HospitalType") %><span>(<%# Eval("Upazilla") %>)</span></a>
                                                                        <button type="button" class="tg-btn" onclick="location.href='information?=<%# Eval("HospitalID") %>'" data-toggle="modal" data-target="#tg-appointmentlightbox">Hospital info</button>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                            </Columns>
                                        </asp:GridView>
                                        <asp:SqlDataSource runat="server" ID="SqlDataSource5" ConnectionString='<%$ ConnectionStrings:DoctorDBCS %>' SelectCommand="SELECT * FROM [HospitalRegistation] WHERE ([HospitalCategory] = @HospitalCategory)">
                                            <SelectParameters>
                                                <asp:QueryStringParameter QueryStringField="Hcategory" Name="HospitalCategory" Type="String"></asp:QueryStringParameter>
                                            </SelectParameters>
                                        </asp:SqlDataSource>

                                        <asp:GridView ID="GridView5" GridLines="None" ShowHeader="False" Style="border: 5px solid #fff; border-collapse: collapse" runat="server" AutoGenerateColumns="False" AllowPaging="True" PageSize="100" DataSourceID="SqlDataSource6">
                                            <Columns>
                                                <asp:TemplateField>
                                                    <ItemTemplate>
                                                        <div class="tg-directpost" style="margin-top: 10px; margin-bottom: 10px;">
                                                            <figure class="tg-directpostimg">
                                                                <a>
                                                                    <img src='<%# Eval("Photo","../Donor/PageView/{0}") %>'>
                                                                </a>
                                                                <figcaption>
                                                                    <a class="tg-usericon tg-iconfeatured">
                                                                        <em class="tg-usericonholder">
                                                                            <i class="fa fa-bolt"></i>
                                                                            <span>featured</span>
                                                                        </em>
                                                                    </a>
                                                                    <a class="tg-usericon tg-iconvarified">
                                                                        <em class="tg-usericonholder">
                                                                            <i class="fa fa-shield"></i>
                                                                            <span>varified</span>
                                                                        </em>
                                                                    </a>
                                                                </figcaption>
                                                            </figure>
                                                            <div class="tg-directinfo">
                                                                <div class="tg-leftarea">
                                                                    <div class="tg-directposthead">
                                                                        <h3><a><%# Eval("Fullname") %></a></h3>
                                                                        <div class="tg-subjects">Gender : <%# Eval("Gender") %></div>
                                                                    </div>
                                                                    <ul class="tg-contactinfo">
                                                                        <li><a><i class="fa fa-location-arrow"></i>
                                                                            <address><%# Eval("Address") %></address>
                                                                        </a></li>
                                                                        <li><a><i class="fa fa-phone"></i><span><%# Eval("Mobile") %></span></a></li>
                                                                    </ul>
                                                                </div>
                                                                <div class="tg-rightarea">
                                                                    <div class="tg-bookappoinment">
                                                                        <a style="color:red; font-size:25px;" ><i class="fa fa-tint"></i><%# Eval("BloodGroup") %></a>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                            </Columns>
                                        </asp:GridView>
                                        <asp:SqlDataSource runat="server" ID="SqlDataSource6" ConnectionString='<%$ ConnectionStrings:DoctorDBCS %>' SelectCommand="SELECT * FROM [DonerRegistation] WHERE (([Division] = @Division) AND ([Division] = @Division2) AND ([Upazila] = @Upazila))">
                                            <SelectParameters>
                                                <asp:QueryStringParameter QueryStringField="BDis" Name="Division" Type="String"></asp:QueryStringParameter>
                                                <asp:QueryStringParameter QueryStringField="BDiv" Name="Division2" Type="String"></asp:QueryStringParameter>
                                                <asp:QueryStringParameter QueryStringField="BUpa" Name="Upazila" Type="String"></asp:QueryStringParameter>
                                            </SelectParameters>
                                        </asp:SqlDataSource>
                                        <asp:GridView ID="GridView6" GridLines="None" ShowHeader="False" Style="border: 5px solid #fff; border-collapse: collapse" runat="server" AutoGenerateColumns="False" AllowPaging="True" PageSize="100" DataSourceID="SqlDataSource7">
                                            <Columns>
                                                <asp:TemplateField>
                                                    <ItemTemplate>
                                                        <div class="tg-directpost" style="margin-top: 10px; margin-bottom: 10px;">
                                                            <figure class="tg-directpostimg">
                                                                <a>
                                                                    <img src='<%# Eval("Photo","../Donor/PageView/{0}") %>'>
                                                                </a>
                                                                <figcaption>
                                                                    <a class="tg-usericon tg-iconfeatured">
                                                                        <em class="tg-usericonholder">
                                                                            <i class="fa fa-bolt"></i>
                                                                            <span>featured</span>
                                                                        </em>
                                                                    </a>
                                                                    <a class="tg-usericon tg-iconvarified">
                                                                        <em class="tg-usericonholder">
                                                                            <i class="fa fa-shield"></i>
                                                                            <span>varified</span>
                                                                        </em>
                                                                    </a>
                                                                </figcaption>
                                                            </figure>
                                                            <div class="tg-directinfo">
                                                                <div class="tg-leftarea">
                                                                    <div class="tg-directposthead">
                                                                        <h3><a><%# Eval("Fullname") %></a></h3>
                                                                        <div class="tg-subjects">Gender : <%# Eval("Gender") %></div>
                                                                    </div>
                                                                    <ul class="tg-contactinfo">
                                                                        <li><a><i class="fa fa-location-arrow"></i>
                                                                            <address><%# Eval("Address") %></address>
                                                                        </a></li>
                                                                        <li><a><i class="fa fa-phone"></i><span><%# Eval("Mobile") %></span></a></li>
                                                                    </ul>
                                                                </div>
                                                                <div class="tg-rightarea">
                                                                    <div class="tg-bookappoinment">
                                                                        <a style="color: red; font-size: 25px;"><i class="fa fa-tint"></i><%# Eval("BloodGroup") %></a>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                            </Columns>
                                        </asp:GridView>
                                        <asp:SqlDataSource runat="server" ID="SqlDataSource7" ConnectionString='<%$ ConnectionStrings:DoctorDBCS %>' SelectCommand="SELECT * FROM [DonerRegistation] WHERE (([Category] = @Category) AND ([District] = @District) AND ([Fullname] LIKE '%' + @Fullname + '%'))">
                                            <SelectParameters>
                                                <asp:QueryStringParameter QueryStringField="BCat" Name="Category" Type="String"></asp:QueryStringParameter>
                                                <asp:QueryStringParameter QueryStringField="BDis" Name="District" Type="String"></asp:QueryStringParameter>
                                                <asp:QueryStringParameter QueryStringField="txt" Name="Fullname" Type="String"></asp:QueryStringParameter>
                                            </SelectParameters>
                                        </asp:SqlDataSource>
                                        <asp:GridView ID="GridView7" GridLines="None" ShowHeader="False" Style="border: 5px solid #fff; border-collapse: collapse" runat="server" AutoGenerateColumns="False" AllowPaging="True" PageSize="100" DataSourceID="SqlDataSource8">
                                            <Columns>
                                                <asp:TemplateField>
                                                    <ItemTemplate>
                                                        <div class="tg-directpost" style="margin-top: 10px; margin-bottom: 10px;">
                                                            <figure class="tg-directpostimg">
                                                                <a>
                                                                    <img src='<%# Eval("Photo","../Donor/PageView/{0}") %>'>
                                                                </a>
                                                                <figcaption>
                                                                    <a class="tg-usericon tg-iconfeatured">
                                                                        <em class="tg-usericonholder">
                                                                            <i class="fa fa-bolt"></i>
                                                                            <span>featured</span>
                                                                        </em>
                                                                    </a>
                                                                    <a class="tg-usericon tg-iconvarified">
                                                                        <em class="tg-usericonholder">
                                                                            <i class="fa fa-shield"></i>
                                                                            <span>varified</span>
                                                                        </em>
                                                                    </a>
                                                                </figcaption>
                                                            </figure>
                                                            <div class="tg-directinfo">
                                                                <div class="tg-leftarea">
                                                                    <div class="tg-directposthead">
                                                                        <h3><a><%# Eval("Fullname") %></a></h3>
                                                                        <div class="tg-subjects">Gender : <%# Eval("Gender") %></div>
                                                                    </div>
                                                                    <ul class="tg-contactinfo">
                                                                        <li><a><i class="fa fa-location-arrow"></i>
                                                                            <address><%# Eval("Address") %></address>
                                                                        </a></li>
                                                                        <li><a><i class="fa fa-phone"></i><span><%# Eval("Mobile") %></span></a></li>
                                                                    </ul>
                                                                </div>
                                                                <div class="tg-rightarea">
                                                                    <div class="tg-bookappoinment">
                                                                        <a style="color: red; font-size: 25px;"><i class="fa fa-tint"></i><%# Eval("BloodGroup") %></a>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                            </Columns>
                                        </asp:GridView>
                                        <asp:SqlDataSource runat="server" ID="SqlDataSource8" ConnectionString='<%$ ConnectionStrings:DoctorDBCS %>' SelectCommand="SELECT * FROM [DonerRegistation] WHERE ([Category] = @Category)">
                                            <SelectParameters>
                                                <asp:QueryStringParameter QueryStringField="Bcategory" Name="Category" Type="String"></asp:QueryStringParameter>
                                            </SelectParameters>
                                        </asp:SqlDataSource>
                                    </div>
								</div>
							</div>
						</div>
                                
					</div>
				</div>
			</div>
		</main>

</asp:Content>


