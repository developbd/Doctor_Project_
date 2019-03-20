<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="doctor.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="css/extra.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    		<!--************************************
				Home Banner Start				
		*************************************-->
		<div id="tg-homebanner" class="tg-homebanner tg-haslayout">
			<figure class="tg-bannerbg">
				<img src="images/banner/img-01.jpg" alt="image description">
			</figure>
			<div class="tg-bannercontent">
				<div class="container">
					<div class="row">
						<div class="col-sm-12 col-xs-12">
                                <div  class="tg-formtheme tg-formsearch">
								<div class="tg-sectionhead">
									<div class="tg-sectiontitle">
										<h1>Find a Medical Help!</h1>
										<img class="tg-svginject" src="images/sectionline.svg" alt="image description">
									</div>
								</div>
								<fieldset>
                                    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
                                    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                                        <ContentTemplate>
                                            <div class="tg-select">
                                                <asp:DropDownList ID="ddlDivision" AutoPostBack="true" OnTextChanged="ddlDivision_TextChanged" runat="server"></asp:DropDownList>
                                            </div>
                                            <div class="tg-select">
                                                <asp:DropDownList ID="ddlDistrict" AutoPostBack="true" OnTextChanged="ddlDistrict_TextChanged" runat="server"></asp:DropDownList>
                                            </div>
                                            <div class="tg-select">
                                                <asp:DropDownList ID="ddlUpazila" runat="server"></asp:DropDownList>
                                            </div>
                                            <div class="tg-select">
                                                <asp:DropDownList ID="ddlDoctor" runat="server">
                                                    <asp:ListItem Selected="True" Value="0">Select Iteam</asp:ListItem>
                                                    <asp:ListItem Value="Doctor">Doctor</asp:ListItem>
                                                    <asp:ListItem Value="Hospitals">Hospitals/Clinic</asp:ListItem>
                                                    <asp:ListItem Value="Blood">Blood Bank</asp:ListItem>
                                                </asp:DropDownList>
                                            </div>
                                            <div class="sclecttg">
                                            </div>
                                        </ContentTemplate>
                                    </asp:UpdatePanel>
                                    <asp:LinkButton ID="btnScarch" OnClick="btnScarch_Click" CssClass="tg-btnformsearch" runat="server"><i class="fa fa-search"></i></asp:LinkButton>
								</fieldset>
								<div class="tg-searchbulder">
									<div id="tg-categoryslider" class="tg-categoryslider tg-category">
										
										<span data-id="bloodbankcategory" class="item tg-radio">
											<p class="text_hide">sdsdsdsdsdsdsds</p>
										</span>
										
										<span data-id="doctorscategory" class="item tg-radio">
											<input type="radio" id="doctors" name="maincategory" value="Doctors" checked="">
											<label for="doctors">
												<span><img src="images/icons/icon-08.png" alt="image description"></span>
												<span>Doctors</span>
											</label>
										</span>
										<span data-id="hospitalscategory" class="item tg-radio">
											<input type="radio" id="hospitals" name="maincategory" value="Hospitals">
											<label for="hospitals">
												<span><img src="images/icons/icon-09.png" alt="image description"></span>
												<span>Hospitals/ Clinic</span>
											</label>
										</span>
										

										
										
										<span data-id="bloodbankcategory" class="item tg-radio">
											<input type="radio" id="bloodband" name="maincategory" value="Blood Bank">
											<label for="bloodband">
												<span><img src="images/icons/icon-14.png"  alt="image description"></span>
												<span>Blood Bank</span>
											</label>
										</span>
                                        <span data-id="fitnesscategory" class="item tg-radio" onclick="location.href='https://google.com'">
											<input type="radio" id="fitness" name="maincategory" value="Fitness">
											<label for="fitness">
												<span><img src="images/icons/icon-26.png" alt="image description"></span>
												<span>E-Shekhon</span>
											</label>
										</span>
										
										<span data-id="bloodbankcategory" class="item tg-radio">
											<p class="text_hide">sdsdsdsdsdsdsds</p>
										</span>
										
										
									</div>
									<div id="tg-subcategories" class="tg-subcategories">                                        
										<div id="doctorscategory" class="tg-tabcontent tg-active" >
                                            
											<span class="tg-checkbox tg-subcategorycheckbox" onclick="location.href='search?category=Dentist'">
												<input type="checkbox" id="dentist" name="subcategory" value="Dentist">
												<label for="">
													<span><img src="images/icons/d2.png" width="60" height="60" alt="image description"></span>
													<span>Dentist</span>
												</label>
											</span>    
                                            
											<span class="tg-checkbox tg-subcategorycheckbox" onclick="location.href='search?category=Ear-Nose-Throat (ENT)'">
												<input type="checkbox" id="ent" name="subcategory" value="Ear-Nose-Throat (ENT)">
												<label for="">
													<span><img src="images/icons/ent2.png" width="60" height="60" alt="image description"></span>
													<span>Ear-Nose-Throat (ENT)</span>
												</label>
											</span>
											<span class="tg-checkbox tg-subcategorycheckbox" onclick="location.href='search?category=Gastroenterologist'">
												<input type="checkbox" id="gastroenterologist" name="subcategory" value="Gastroenterologist">
												<label for="">
													<span><img src="images/icons/gas.png" width="60" height="60" alt="image description"></span>
													<span>Gastroenterologist</span>
												</label>
											</span>
											<span class="tg-checkbox tg-subcategorycheckbox" onclick="location.href='search?category=Psychiatrist'">
												<input type="checkbox" id="psychiatrist" name="subcategory" value="Psychiatrist">
												<label for="">
													<span><img src="images/icons/brain.png" width="60" height="60"  alt="image description"></span>
													<span>Psychiatrist</span>
												</label>
											</span>
											<span class="tg-checkbox tg-subcategorycheckbox" onclick="location.href='search?category=Urologist'">
												<input type="checkbox" id="urologist" name="subcategory" value="Urologist">
												<label for="urologist">
													<span><img src="images/icons/uro.png" width="60" height="60"  alt="image description"></span>
													<span>Urologist</span>
												</label>
											</span>
											<span class="tg-checkbox tg-subcategorycheckbox" onclick="location.href='search?category=Nephrology'">
												<input type="checkbox" id="homeopath" name="subcategory" value="Homeopath">
												<label for="">
													<span><img src="images/icons/kid.png" width="60" height="60"  alt="image description"></span>
													<span>Nephrology</span>
												</label>
											</span>
											<span class="tg-checkbox tg-subcategorycheckbox" onclick="location.href='search?category=Ophthalmologist(Eye)'">
												<input type="checkbox" id="ophthalmologist" name="subcategory" value="Ophthalmologist">
												<label for="">
													<span><img src="images/icons/eye.png" width="60" height="60"  alt="image description"></span>
													<span>Ophthalmologist(Eye)</span>
												</label>
											</span>
											<span class="tg-checkbox tg-subcategorycheckbox" onclick="location.href='search?category=Cardiology'">
												<input type="checkbox" id="ayurveda" name="subcategory" value="Ayurveda">
												<label for="">
													<span><img src="images/icons/hard.png" width="60" height="60"  alt="image description"></span>
													<span>Cardiology</span>
												</label>
											</span>
											<span class="tg-checkbox tg-subcategorycheckbox" onclick="location.href='search?category=Dermatology & Venereology'">
												<input type="checkbox" id="dermatologist" name="subcategory" value="Dermatologist">
												<label for="">
													<span><img src="../images/icons/dnv.png" width="60" height="60" alt="image description"></span>
													<span>Dermatology & Venereology</span>
												</label>
											</span>
											<span class="tg-checkbox tg-subcategorycheckbox" onclick="location.href='search?category=Neurology'">
												<input type="checkbox" id="neurologist" name="subcategory" value="Neurologist">
												<label for="">
													<span><img src="images/icons/nuro.png" width="60" height="60"  alt="image description"></span>
													<span>Neurology</span>
												</label>
											</span>
										</div>
                                       
										<div id="hospitalscategory" class="tg-tabcontent">
											<span class="tg-checkbox tg-subcategorycheckbox" onclick="location.href='search?Hcategory=Cancer Hospital'">
												<input type="checkbox" id="homeopath2" name="subcategory" value="Homeopath">
												<label for="">
													<span><img src="images/icons/hp.png" width="60"  height="60" alt="image description"></span>
													<span>Cancer Hospital</span>
												</label>
											</span>
											<span class="tg-checkbox tg-subcategorycheckbox" onclick="location.href='search?Hcategory=TB Hospital'">
												<input type="checkbox" id="ophthalmologist2" name="subcategory" value="Ophthalmologist">
												<label for="">
													<span><img src="images/icons/hp.png" width="60"  height="60" alt="bdbayonline hospital"></span>
													<span>TB Hospital</span>
												</label>
											</span>
											<span class="tg-checkbox tg-subcategorycheckbox" onclick="location.href='search?Hcategory=EYE Hospital'">
												<input type="checkbox" id="ayurveda2" name="subcategory" value="Ayurveda">
												<label for="">
													<span><img src="images/icons/hp.png" width="60"  height="60" alt="bdbayonline hospital"></span>
													<span>EYE Hospital</span>
												</label>
											</span>
											<span class="tg-checkbox tg-subcategorycheckbox" onclick="location.href='search?Hcategory=National Heart Foundation Hospital'">
												<input type="checkbox" id="dermatologist2" name="subcategory" value="Dermatologist">
												<label for="">
													<span><img src="images/icons/hp.png" width="60"  height="60" alt="bdbayonline hospital"></span>
													<span>National Heart Foundation</span>
												</label>
											</span>
											<span class="tg-checkbox tg-subcategorycheckbox" onclick="location.href='search?Hcategory=Kidney Hospital'">
												<input type="checkbox" id="neurologist2" name="subcategory" value="Neurologist">
												<label for="">
													<span><img src="images/icons/hp.png" width="60"  height="60" alt="bdbayonline hospital"></span>
													<span>Kidney Hospital</span>
												</label>
											</span>
											<span class="tg-checkbox tg-subcategorycheckbox" onclick="location.href='search?Hcategory=Gastroenterology and Hepatology Hospital '">
												<input type="checkbox" id="dentist2" name="subcategory" value="Dentist">
												<label for="">
													<span><img src="images/icons/hp.png" width="60"  height="60" alt="bdbayonline hospital"></span>
													<span>Gastroenterology</span>
												</label>
											</span>
											<span class="tg-checkbox tg-subcategorycheckbox" onclick="location.href='search?Hcategory=Orthopaedic and Pongu Hospital'">
												<input type="checkbox" id="ent2" name="subcategory" value="Ear-Nose-Throat (ENT)">
												<label for="">
													<span><img src="images/icons/hp.png" width="60"  height="60" alt="bdbayonline hospital"></span>
													<span>Orthopaedic & Pongu</span>
												</label>
											</span>
											<span class="tg-checkbox tg-subcategorycheckbox" onclick="location.href='search?Hcategory=Medical Hospital'">
												<input type="checkbox" id="gastroenterologist2" name="subcategory" value="Gastroenterologist">
												<label for="">
													<span><img src="images/icons/hp.png" width="60"  height="60" alt="bdbayonline hospital"></span>
													<span>Medical Hospital</span>
												</label>
											</span>
											<span class="tg-checkbox tg-subcategorycheckbox" onclick="location.href='search?Hcategory=Psychiatrist'">
												<input type="checkbox" id="psychiatrist2" name="subcategory" value="Psychiatrist">
												<label for="">
													<span><img src="images/icons/hp.png" width="60"  height="60" alt="bdbayonline hospital"></span>
													<span>Psychiatrist</span>
												</label>
											</span>
											<span class="tg-checkbox tg-subcategorycheckbox" onclick="location.href='search?Hcategory=Homeopathy Hospital'">
												<input type="checkbox" id="urologist2" name="subcategory" value="Urologist">
												<label for="">
													<span><img src="images/icons/hp.png" width="60"  height="60" alt="bdbayonline hospital"></span>
													<span>Homeopathy hospital</span>
												</label>
											</span>
                                            <span class="tg-checkbox tg-subcategorycheckbox" onclick="location.href='search?Hcategory=Clinic'">
												<input type="checkbox" id="urologist3" name="subcategory" value="Urologist">
												<label for="">
													<span><img src="images/icons/hp.png" width="60"  height="60" alt="bdbayonline hospital"></span>
													<span>clinic</span>
												</label>
											</span>
                                            <span class="tg-checkbox tg-subcategorycheckbox" onclick="location.href='search?Hcategory=Physiotherapy Center'">
												<input type="checkbox" id="urologist4" name="subcategory" value="Urologist">
												<label for="">
													<span><img src="images/icons/hp.png" width="60"  height="60" alt="bdbayonline hospital"></span>
													<span>Physiotherapy Center</span>
												</label>
											</span>
                                            <span class="tg-checkbox tg-subcategorycheckbox" onclick="location.href='search?Hcategory=Diagnosis Center'">
												<input type="checkbox" id="urologist5" name="subcategory" value="Urologist">
												<label for="">
													<span><img src="images/icons/hp.png" width="60"  height="60" alt="bdbayonline hospital"></span>
													<span>Diagnosis Center</span>
												</label>
											</span>                                           
										</div>
                                         <!--
										<div id="spascategory" class="tg-tabcontent">
											<span class="tg-checkbox tg-subcategorycheckbox">
												<input type="checkbox" id="dentist3" name="subcategory" value="Dentist">
												<label for="dentist3">
													<span><img src="images/icons/icon-16.png" alt="image description"></span>
													<span>Dentist</span>
												</label>
											</span>
											<span class="tg-checkbox tg-subcategorycheckbox">
												<input type="checkbox" id="ent3" name="subcategory" value="Ear-Nose-Throat (ENT)">
												<label for="ent3">
													<span><img src="images/icons/icon-17.png" alt="image description"></span>
													<span>Ear-Nose-Throat (ENT)</span>
												</label>
											</span>
											<span class="tg-checkbox tg-subcategorycheckbox">
												<input type="checkbox" id="gastroenterologist3" name="subcategory" value="Gastroenterologist">
												<label for="gastroenterologist3">
													<span><img src="images/icons/icon-18.png" alt="image description"></span>
													<span>Gastroenterologist</span>
												</label>
											</span>
											<span class="tg-checkbox tg-subcategorycheckbox">
												<input type="checkbox" id="psychiatrist3" name="subcategory" value="Psychiatrist">
												<label for="psychiatrist3">
													<span><img src="images/icons/icon-19.png" alt="image description"></span>
													<span>Psychiatrist</span>
												</label>
											</span>
											<span class="tg-checkbox tg-subcategorycheckbox">
												<input type="checkbox" id="urologist3" name="subcategory" value="Urologist">
												<label for="urologist3">
													<span><img src="images/icons/icon-20.png" alt="image description"></span>
													<span>Urologist</span>
												</label>
											</span>
											<span class="tg-checkbox tg-subcategorycheckbox">
												<input type="checkbox" id="homeopath3" name="subcategory" value="Homeopath">
												<label for="homeopath3">
													<span><img src="images/icons/icon-21.png" alt="image description"></span>
													<span>Homeopath</span>
												</label>
											</span>
											<span class="tg-checkbox tg-subcategorycheckbox">
												<input type="checkbox" id="ophthalmologist3" name="subcategory" value="Ophthalmologist">
												<label for="ophthalmologist3">
													<span><img src="images/icons/icon-22.png" alt="image description"></span>
													<span>Ophthalmologist</span>
												</label>
											</span>
											<span class="tg-checkbox tg-subcategorycheckbox">
												<input type="checkbox" id="ayurveda3" name="subcategory" value="Ayurveda">
												<label for="ayurveda3">
													<span><img src="images/icons/icon-23.png" alt="image description"></span>
													<span>Ayurveda</span>
												</label>
											</span>
											<span class="tg-checkbox tg-subcategorycheckbox">
												<input type="checkbox" id="dermatologist3" name="subcategory" value="Dermatologist">
												<label for="dermatologist3">
													<span><img src="images/icons/icon-24.png" alt="image description"></span>
													<span>Dermatologist</span>
												</label>
											</span>
											<span class="tg-checkbox tg-subcategorycheckbox">
												<input type="checkbox" id="neurologist3" name="subcategory" value="Neurologist">
												<label for="neurologist3">
													<span><img src="images/icons/icon-25.png" alt="image description"></span>
													<span>Neurologist</span>
												</label>
											</span>
										</div>
										<div id="pharmaciescategory" class="tg-tabcontent">
											<span class="tg-checkbox tg-subcategorycheckbox">
												<input type="checkbox" id="homeopath4" name="subcategory" value="Homeopath">
												<label for="homeopath4">
													<span><img src="images/icons/icon-21.png" alt="image description"></span>
													<span>Homeopath</span>
												</label>
											</span>
											<span class="tg-checkbox tg-subcategorycheckbox">
												<input type="checkbox" id="ophthalmologist4" name="subcategory" value="Ophthalmologist">
												<label for="ophthalmologist4">
													<span><img src="images/icons/icon-22.png" alt="image description"></span>
													<span>Ophthalmologist</span>
												</label>
											</span>
											<span class="tg-checkbox tg-subcategorycheckbox">
												<input type="checkbox" id="ayurveda4" name="subcategory" value="Ayurveda">
												<label for="ayurveda4">
													<span><img src="images/icons/icon-23.png" alt="image description"></span>
													<span>Ayurveda</span>
												</label>
											</span>
											<span class="tg-checkbox tg-subcategorycheckbox">
												<input type="checkbox" id="dermatologist4" name="subcategory" value="Dermatologist">
												<label for="dermatologist4">
													<span><img src="images/icons/icon-24.png" alt="image description"></span>
													<span>Dermatologist</span>
												</label>
											</span>
											<span class="tg-checkbox tg-subcategorycheckbox">
												<input type="checkbox" id="neurologist4" name="subcategory" value="Neurologist">
												<label for="neurologist4">
													<span><img src="images/icons/icon-25.png" alt="image description"></span>
													<span>Neurologist</span>
												</label>
											</span>
											<span class="tg-checkbox tg-subcategorycheckbox">
												<input type="checkbox" id="dentist4" name="subcategory" value="Dentist">
												<label for="dentist4">
													<span><img src="images/icons/icon-16.png" alt="image description"></span>
													<span>Dentist</span>
												</label>
											</span>
											<span class="tg-checkbox tg-subcategorycheckbox">
												<input type="checkbox" id="ent4" name="subcategory" value="Ear-Nose-Throat (ENT)">
												<label for="ent4">
													<span><img src="images/icons/icon-17.png" alt="image description"></span>
													<span>Ear-Nose-Throat (ENT)</span>
												</label>
											</span>
											<span class="tg-checkbox tg-subcategorycheckbox">
												<input type="checkbox" id="gastroenterologist4" name="subcategory" value="Gastroenterologist">
												<label for="gastroenterologist4">
													<span><img src="images/icons/icon-18.png" alt="image description"></span>
													<span>Gastroenterologist</span>
												</label>
											</span>
											<span class="tg-checkbox tg-subcategorycheckbox">
												<input type="checkbox" id="psychiatrist4" name="subcategory" value="Psychiatrist">
												<label for="psychiatrist4">
													<span><img src="images/icons/icon-19.png" alt="image description"></span>
													<span>Psychiatrist</span>
												</label>
											</span>
											<span class="tg-checkbox tg-subcategorycheckbox">
												<input type="checkbox" id="urologist4" name="subcategory" value="Urologist">
												<label for="urologist4">
													<span><img src="images/icons/icon-20.png" alt="image description"></span>
													<span>Urologist</span>
												</label>
											</span>
										</div>
										<div id="labscategory" class="tg-tabcontent">
											<span class="tg-checkbox tg-subcategorycheckbox">
												<input type="checkbox" id="dentist5" name="subcategory" value="Dentist">
												<label for="dentist5">
													<span><img src="images/icons/icon-16.png" alt="image description"></span>
													<span>Dentist</span>
												</label>
											</span>
											<span class="tg-checkbox tg-subcategorycheckbox">
												<input type="checkbox" id="ent5" name="subcategory" value="Ear-Nose-Throat (ENT)">
												<label for="ent5">
													<span><img src="images/icons/icon-17.png" alt="image description"></span>
													<span>Ear-Nose-Throat (ENT)</span>
												</label>
											</span>
											<span class="tg-checkbox tg-subcategorycheckbox">
												<input type="checkbox" id="gastroenterologist5" name="subcategory" value="Gastroenterologist">
												<label for="gastroenterologist5">
													<span><img src="images/icons/icon-18.png" alt="image description"></span>
													<span>Gastroenterologist</span>
												</label>
											</span>
											<span class="tg-checkbox tg-subcategorycheckbox">
												<input type="checkbox" id="psychiatrist5" name="subcategory" value="Psychiatrist">
												<label for="psychiatrist5">
													<span><img src="images/icons/icon-19.png" alt="image description"></span>
													<span>Psychiatrist</span>
												</label>
											</span>
											<span class="tg-checkbox tg-subcategorycheckbox">
												<input type="checkbox" id="urologist5" name="subcategory" value="Urologist">
												<label for="urologist5">
													<span><img src="images/icons/icon-20.png" alt="image description"></span>
													<span>Urologist</span>
												</label>
											</span>
											<span class="tg-checkbox tg-subcategorycheckbox">
												<input type="checkbox" id="homeopath5" name="subcategory" value="Homeopath">
												<label for="homeopath5">
													<span><img src="images/icons/icon-21.png" alt="image description"></span>
													<span>Homeopath</span>
												</label>
											</span>
											<span class="tg-checkbox tg-subcategorycheckbox">
												<input type="checkbox" id="ophthalmologist5" name="subcategory" value="Ophthalmologist">
												<label for="ophthalmologist5">
													<span><img src="images/icons/icon-22.png" alt="image description"></span>
													<span>Ophthalmologist</span>
												</label>
											</span>
											<span class="tg-checkbox tg-subcategorycheckbox">
												<input type="checkbox" id="ayurveda5" name="subcategory" value="Ayurveda">
												<label for="ayurveda5">
													<span><img src="images/icons/icon-23.png" alt="image description"></span>
													<span>Ayurveda</span>
												</label>
											</span>
											<span class="tg-checkbox tg-subcategorycheckbox">
												<input type="checkbox" id="dermatologist5" name="subcategory" value="Dermatologist">
												<label for="dermatologist5">
													<span><img src="images/icons/icon-24.png" alt="image description"></span>
													<span>Dermatologist</span>
												</label>
											</span>
											<span class="tg-checkbox tg-subcategorycheckbox">
												<input type="checkbox" id="neurologist5" name="subcategory" value="Neurologist">
												<label for="neurologist5">
													<span><img src="images/icons/icon-25.png" alt="image description"></span>
													<span>Neurologist</span>
												</label>
											</span>
										</div>
										<div id="fitnesscategory" class="tg-tabcontent">
											<span class="tg-checkbox tg-subcategorycheckbox">
												<input type="checkbox" id="homeopath6" name="subcategory" value="Homeopath">
												<label for="homeopath6">
													<span><img src="images/icons/icon-21.png" alt="image description"></span>
													<span>Homeopath</span>
												</label>
											</span>
											<span class="tg-checkbox tg-subcategorycheckbox">
												<input type="checkbox" id="ophthalmologist6" name="subcategory" value="Ophthalmologist">
												<label for="ophthalmologist6">
													<span><img src="images/icons/icon-22.png" alt="image description"></span>
													<span>Ophthalmologist</span>
												</label>
											</span>
											<span class="tg-checkbox tg-subcategorycheckbox">
												<input type="checkbox" id="ayurveda6" name="subcategory" value="Ayurveda">
												<label for="ayurveda6">
													<span><img src="images/icons/icon-23.png" alt="image description"></span>
													<span>Ayurveda</span>
												</label>
											</span>
											<span class="tg-checkbox tg-subcategorycheckbox">
												<input type="checkbox" id="dermatologist6" name="subcategory" value="Dermatologist">
												<label for="dermatologist6">
													<span><img src="images/icons/icon-24.png" alt="image description"></span>
													<span>Dermatologist</span>
												</label>
											</span>
											<span class="tg-checkbox tg-subcategorycheckbox">
												<input type="checkbox" id="neurologist6" name="subcategory" value="Neurologist">
												<label for="neurologist6">
													<span><img src="images/icons/icon-25.png" alt="image description"></span>
													<span>Neurologist</span>
												</label>
											</span>
											<span class="tg-checkbox tg-subcategorycheckbox">
												<input type="checkbox" id="dentist6" name="subcategory" value="Dentist">
												<label for="dentist6">
													<span><img src="images/icons/icon-16.png" alt="image description"></span>
													<span>Dentist</span>
												</label>
											</span>
											<span class="tg-checkbox tg-subcategorycheckbox">
												<input type="checkbox" id="ent6" name="subcategory" value="Ear-Nose-Throat (ENT)">
												<label for="ent6">
													<span><img src="images/icons/icon-17.png" alt="image description"></span>
													<span>Ear-Nose-Throat (ENT)</span>
												</label>
											</span>
											<span class="tg-checkbox tg-subcategorycheckbox">
												<input type="checkbox" id="gastroenterologist6" name="subcategory" value="Gastroenterologist">
												<label for="gastroenterologist6">
													<span><img src="images/icons/icon-18.png" alt="image description"></span>
													<span>Gastroenterologist</span>
												</label>
											</span>
											<span class="tg-checkbox tg-subcategorycheckbox">
												<input type="checkbox" id="psychiatrist6" name="subcategory" value="Psychiatrist">
												<label for="psychiatrist6">
													<span><img src="images/icons/icon-19.png" alt="image description"></span>
													<span>Psychiatrist</span>
												</label>
											</span>
											<span class="tg-checkbox tg-subcategorycheckbox">
												<input type="checkbox" id="urologist6" name="subcategory" value="Urologist">
												<label for="urologist6">
													<span><img src="images/icons/icon-20.png" alt="image description"></span>
													<span>Urologist</span>
												</label>
											</span>
										</div>-->
										<div id="bloodbankcategory" class="tg-tabcontent">
											<span class="tg-checkbox tg-subcategorycheckbox" onclick="location.href='search?Bcategory=AP'">												
												<label for="">
													<span><img src="images/icons/blood.png" alt="image description"></span>
													<span>Blood groop A+</span>
												</label>
											</span>
											<span class="tg-checkbox tg-subcategorycheckbox" onclick="location.href='search?Bcategory=AN'">												
												<label for="">
													<span><img src="images/icons/blood.png" alt="image description"></span>
													<span>Blood groop A-</span>
												</label>
											</span>
											<span class="tg-checkbox tg-subcategorycheckbox" onclick="location.href='search?Bcategory=BP'">												
												<label for="gastroenterologist7">
													<span><img src="images/icons/blood.png" alt="image description"></span>
													<span>Blood groop B+</span>
												</label>
											</span>
											<span class="tg-checkbox tg-subcategorycheckbox" onclick="location.href='search?Bcategory=BN'">												
												<label for="psychiatrist7">
													<span><img src="images/icons/blood.png" alt="image description"></span>
													<span>Blood groop B-</span>
												</label>
											</span> 
											<span class="tg-checkbox tg-subcategorycheckbox" onclick="location.href='search?Bcategory=ABP'">												
												<label for="urologist7">
													<span><img src="images/icons/blood.png" alt="image description"></span>
													<span>Blood groop AB+</span>
												</label>
											</span>
											<span class="tg-checkbox tg-subcategorycheckbox" onclick="location.href='search?Bcategory=ABN'">												
												<label for="homeopath7">
													<span><img src="images/icons/blood.png" alt="image description"></span>
													<span>Blood groop AB-</span>
												</label>
											</span>
											<span class="tg-checkbox tg-subcategorycheckbox" onclick="location.href='search?Bcategory=OP'">												
												<label for="ophthalmologist7">
													<span><img src="images/icons/blood.png" alt="image description"></span>
													<span>Blood groop O+</span>
												</label>
											</span>
											<span class="tg-checkbox tg-subcategorycheckbox" onclick="location.href='search?Bcategory=ON'">												
												<label for="ayurveda7">
													<span><img src="images/icons/blood.png" alt="image description"></span>
													<span>Blood groop O-</span>
												</label>
											</span>
										</div>
					
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!--************************************
				Home Banner End					
		*************************************-->
		<!--************************************
				Main Start						
		*************************************-->
		<main id="tg-main" class="tg-main tg-haslayout">
			<!--************************************
					Features Start
			*************************************-->
			<section class="tg-main-section tg-haslayout">
				<div class="container">
					<div class="row">
						<div class="col-sm-12 col-xs-12">
							<div class="tg-sectionhead">
								<div class="tg-sectiontitle">
									<h2>Medical Help 24/7</h2>
									<img class="tg-svginject" src="images/sectionline.svg" alt="image description">
								</div>
							</div>
						</div>
						<div class="tg-features">
							<div class="col-sm-4 col-xs-12">
								<div class="tg-feature">
									<figure class="tg-featureicon"><img src="images/icons/icon-02.png" alt="image description"></figure>
									<h3><a href="#">Find Medical Help</a></h3>
									<div class="tg-description">
										<p>Consectetur adipisicing elit eiusmod tempor incididunt ut labore dolore magna aliqua minim veniam quis nostrud exercitation ullamco laboris.</p>
									</div>
								</div>
							</div>
							<div class="col-sm-4 col-xs-12">
								<div class="tg-feature">
									<figure class="tg-featureicon"><img src="images/icons/icon-03.png" alt="image description"></figure>
									<h3><a href="#">Make Appointment</a></h3>
									<div class="tg-description">
										<p>Consectetur adipisicing elit eiusmod tempor incididunt ut labore dolore magna aliqua minim veniam quis nostrud exercitation ullamco laboris.</p>
									</div>
								</div>
							</div>
							<div class="col-sm-4 col-xs-12">
								<div class="tg-feature">
									<figure class="tg-featureicon"><img src="images/icons/icon-04.png" alt="image description"></figure>
									<h3><a href="#">Get Facilitate</a></h3>
									<div class="tg-description">
										<p>Consectetur adipisicing elit eiusmod tempor incididunt ut labore dolore magna aliqua minim veniam quis nostrud exercitation ullamco laboris.</p>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</section>
			<!--************************************
					Features End					
			*************************************-->
			<!--************************************
					Statistics Start				
			*************************************-->
			<section class="tg-main-section tg-haslayout tg-parallaximg tg-imgoverlap" data-bleed="-17" data-appear-top-offset="600" data-parallax="scroll" data-image-src="images/parallax/bgparallax-02.jpg">
				<div class="container">
					<div class="row">
						<div class="col-sm-6 col-xs-12">
							<div class="tg-statisticscounters">
								<div class="row">
                                    <asp:PlaceHolder ID="pnlShowDetails" runat="server"></asp:PlaceHolder>
								</div>
							</div>
						</div>
						<div class="col-sm-6 hidden-xs">
							<figure class="tg-sectionimg"><img src="images/img-04.png" alt="image description"></figure>
						</div>
					</div>
				</div>
			</section>
	

            <section class="tg-main-section tg-haslayout">
                <div class="container">
                    <div class="row">
                        <div class="col-sm-12 col-xs-12">
                            <div class="tg-sectionhead">
                                <div class="tg-sectiontitle">
                                    <h2>Featured Listings</h2>
                                    <img class="tg-svginject" src="images/sectionline.svg" alt="image description">
                                </div>
                            </div>
                            <ul id="tg-filterbalenav" class="tg-filterbalenav option-set">
                                <li><a class="tg-active" data-filter="*" href="javascript:void(0);">all</a></li>
                                <li><a data-filter=".doctors" href="javascript:void(0);">Doctors</a></li>
                                <li><a data-filter=".hospitals" href="javascript:void(0);">Hospitals</a></li>
                                <li><a data-filter=".spas" href="javascript:void(0);">Blood Donor</a></li>
<%--                             <li><a data-filter=".pharmacies" href="javascript:void(0);">Pharmacies</a></li>
                                <li><a data-filter=".lab" href="javascript:void(0);">Lab</a></li>
                                <li><a data-filter=".fitnesscenters" href="javascript:void(0);">Fitness Centers</a></li>--%>
                            </ul>
                            <div id="filter-masonry" class="tg-featureddirectposts tg-searchresult tg-filtermasonry">
                                <asp:PlaceHolder ID="pnlShowDocHosDon" runat="server"></asp:PlaceHolder>

<%--                                <div class="tg-directpost pharmacies">
                                    <figure class="tg-directpostimg">
                                        <a href="#">
                                            <img src="images/directpost/img-04.jpg" alt="image description"></a>
                                        <figcaption>
                                            <a class="tg-usericon tg-iconfeatured" href="#">
                                                <em class="tg-usericonholder">
                                                    <i class="fa fa-bolt"></i>
                                                    <span>featured</span>
                                                </em>
                                            </a>
                                            <a class="tg-usericon tg-iconvarified" href="#">
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
                                                <h3><a href="#">Dr. Steve Northrop</a></h3>
                                                <div class="tg-subjects">MDS - Paedodontics &amp; Preventive Dentistry</div>
                                            </div>
                                            <ul class="tg-contactinfo">
                                                <li><a href="#"><i class="fa fa-location-arrow"></i>
                                                    <address>154 Bayswater Rd, W2 4HP, UK</address>
                                                </a></li>
                                                <li><a href="#"><i class="fa fa-phone"></i><span>+4 235 856843</span></a></li>
                                            </ul>
                                        </div>
                                        <div class="tg-rightarea">
                                            <div class="tg-bookappoinment">
                                                <a href="#"><i class="fa fa-thumbs-o-up"></i>99%<span>(1009 votes)</span></a>
                                                <button type="button" class="tg-btn" data-toggle="modal" data-target="#tg-appointmentlightbox">Book Appointment</button>
                                                <ul class="tg-metadata">
                                                    <li><span class="tg-stars"><span></span></span></li>
                                                    <li><a href="#"><i class="fa fa-heart tg-like"></i></a></li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="tg-directpost lab">
                                    <figure class="tg-directpostimg">
                                        <a href="#">
                                            <img src="images/directpost/img-05.jpg" alt="image description"></a>
                                        <figcaption>
                                            <a class="tg-usericon tg-iconfeatured" href="#">
                                                <em class="tg-usericonholder">
                                                    <i class="fa fa-bolt"></i>
                                                    <span>featured</span>
                                                </em>
                                            </a>
                                            <a class="tg-usericon tg-iconvarified" href="#">
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
                                                <h3><a href="#">Dr. Steve Northrop</a></h3>
                                                <div class="tg-subjects">MDS - Paedodontics &amp; Preventive Dentistry</div>
                                            </div>
                                            <ul class="tg-contactinfo">
                                                <li><a href="#"><i class="fa fa-location-arrow"></i>
                                                    <address>154 Bayswater Rd, W2 4HP, UK</address>
                                                </a></li>
                                                <li><a href="#"><i class="fa fa-phone"></i><span>+4 235 856843</span></a></li>
                                            </ul>
                                        </div>
                                        <div class="tg-rightarea">
                                            <div class="tg-bookappoinment">
                                                <a href="#"><i class="fa fa-thumbs-o-up"></i>99%<span>(1009 votes)</span></a>
                                                <button type="button" class="tg-btn">Available on Call</button>
                                                <ul class="tg-metadata">
                                                    <li><span class="tg-stars"><span></span></span></li>
                                                    <li><a href="#"><i class="fa fa-heart tg-like"></i></a></li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="tg-directpost fitnesscenters">
                                    <figure class="tg-directpostimg">
                                        <a href="#">
                                            <img src="images/directpost/img-01.jpg" alt="image description"></a>
                                        <figcaption>
                                            <a class="tg-usericon tg-iconfeatured" href="#">
                                                <em class="tg-usericonholder">
                                                    <i class="fa fa-bolt"></i>
                                                    <span>featured</span>
                                                </em>
                                            </a>
                                            <a class="tg-usericon tg-iconvarified" href="#">
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
                                                <h3><a href="#">Dr. Steve Northrop</a></h3>
                                                <div class="tg-subjects">MDS - Paedodontics &amp; Preventive Dentistry</div>
                                            </div>
                                            <ul class="tg-contactinfo">
                                                <li><a href="#"><i class="fa fa-location-arrow"></i>
                                                    <address>154 Bayswater Rd, W2 4HP, UK</address>
                                                </a></li>
                                                <li><a href="#"><i class="fa fa-phone"></i><span>+4 235 856843</span></a></li>
                                            </ul>
                                        </div>
                                        <div class="tg-rightarea">
                                            <div class="tg-bookappoinment">
                                                <a href="#"><i class="fa fa-thumbs-o-up"></i>99%<span>(1009 votes)</span></a>
                                                <button type="button" class="tg-btn" data-toggle="modal" data-target="#tg-appointmentlightbox">Book Appointment</button>
                                                <ul class="tg-metadata">
                                                    <li><span class="tg-stars"><span></span></span></li>
                                                    <li><a href="#"><i class="fa fa-heart tg-like"></i></a></li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>--%>

                            </div>
                        </div>
                    </div>
                </div>
            </section>
		


			<%--<section class="tg-main-section tg-haslayout tg-parallaximg" data-position-x="center" data-position-y="center" data-appear-top-offset="600" data-parallax="scroll" data-bleed="0" data-image-src="images/parallax/bgparallax-03.jpg">
				<div class="container">
					<div class="row">
						<div class="col-md-10 col-md-offset-1 col-sm-12 col-xs-12">
							<div class="tg-sectionhead">
								<div class="tg-sectiontitle">
									<h2>Valuable Feedback</h2>
									<img class="tg-svginject" src="images/sectionline.svg" alt="image description">
								</div>
							</div>
							<div id="tg-feedbackslider" class="tg-feedbackslider tg-feedback">
								<div class="item">
									<div class="tg-feedbackcontent">
										<blockquote>
											<q>Consectetur adipisicing elit sed do eiusmod tempor incididunt lab doloregna aliqua ut enim ad minim veniam nostrud exercitation liatota ullamco.</q>
										</blockquote>
										<h3>Dr. Steve Northrop</h3>
										<ul class="tg-metadata">
											<li><span>MDS - Paedodontics &amp; Preventive Dentistry </span></li>
											<li><span class="tg-tooltip tg-stars" data-toggle="tooltip" data-placement="top right" title="4.85 average based on 423 ratings"><span></span></span></li>
										</ul>
									</div>
								</div>
								<div class="item">
									<div class="tg-feedbackcontent">
										<blockquote>
											<q>Consectetur adipisicing elit sed do eiusmod tempor incididunt lab doloregna aliqua ut enim ad minim veniam nostrud exercitation liatota ullamco.</q>
										</blockquote>
										<h3>Lawrence Troutman</h3>
										<ul class="tg-metadata">
											<li><span>MDS - Paedodontics &amp; Preventive Dentistry </span></li>
											<li><span class="tg-tooltip tg-stars" data-toggle="tooltip" data-placement="top right" title="4.85 average based on 423 ratings"><span></span></span></li>
										</ul>
									</div>
								</div>
								<div class="item">
									<div class="tg-feedbackcontent">
										<blockquote>
											<q>Consectetur adipisicing elit sed do eiusmod tempor incididunt lab doloregna aliqua ut enim ad minim veniam nostrud exercitation liatota ullamco.</q>
										</blockquote>
										<h3>Ahmad Carstensen</h3>
										<ul class="tg-metadata">
											<li><span>MDS - Paedodontics &amp; Preventive Dentistry </span></li>
											<li><span class="tg-tooltip tg-stars" data-toggle="tooltip" data-placement="top right" title="4.85 average based on 423 ratings"><span></span></span></li>
										</ul>
									</div>
								</div>
								<div class="item">
									<div class="tg-feedbackcontent">
										<blockquote>
											<q>Consectetur adipisicing elit sed do eiusmod tempor incididunt lab doloregna aliqua ut enim ad minim veniam nostrud exercitation liatota ullamco.</q>
										</blockquote>
										<h3>Jenna Strope</h3>
										<ul class="tg-metadata">
											<li><span>MDS - Paedodontics &amp; Preventive Dentistry </span></li>
											<li><span class="tg-tooltip tg-stars" data-toggle="tooltip" data-placement="top right" title="4.85 average based on 423 ratings"><span></span></span></li>
										</ul>
									</div>
								</div>
								<div class="item">
									<div class="tg-feedbackcontent">
										<blockquote>
											<q>Consectetur adipisicing elit sed do eiusmod tempor incididunt lab doloregna aliqua ut enim ad minim veniam nostrud exercitation liatota ullamco.</q>
										</blockquote>
										<h3>Dolores Mcreynolds</h3>
										<ul class="tg-metadata">
											<li><span>MDS - Paedodontics &amp; Preventive Dentistry </span></li>
											<li><span class="tg-tooltip tg-stars" data-toggle="tooltip" data-placement="top right" title="4.85 average based on 423 ratings"><span></span></span></li>
										</ul>
									</div>
								</div>
								<div class="item">
									<div class="tg-feedbackcontent">
										<blockquote>
											<q>Consectetur adipisicing elit sed do eiusmod tempor incididunt lab doloregna aliqua ut enim ad minim veniam nostrud exercitation liatota ullamco.</q>
										</blockquote>
										<h3>Dustin Mckillop</h3>
										<ul class="tg-metadata">
											<li><span>MDS - Paedodontics &amp; Preventive Dentistry </span></li>
											<li><span class="tg-tooltip tg-stars" data-toggle="tooltip" data-placement="top right" title="4.85 average based on 423 ratings"><span></span></span></li>
										</ul>
									</div>
								</div>
							</div>
							<div id="tg-reviewerdpslider" class="tg-reviewerdpslider tg-reviewerdp">
								<div class="item">
									<figure><img src="images/thumbnails/img-01.jpg" alt="image description"></figure>
								</div>
								<div class="item">
									<figure><img src="images/thumbnails/img-02.jpg" alt="image description"></figure>
								</div>
								<div class="item">
									<figure><img src="images/thumbnails/img-03.jpg" alt="image description"></figure>
								</div>
								<div class="item">
									<figure><img src="images/thumbnails/img-04.jpg" alt="image description"></figure>
								</div>
								<div class="item">
									<figure><img src="images/thumbnails/img-05.jpg" alt="image description"></figure>
								</div>
								<div class="item">
									<figure><img src="images/thumbnails/img-06.jpg" alt="image description"></figure>
								</div>
							</div>
						</div>
					</div>
				</div>
			</section>--%>



			<section class="tg-main-section tg-haslayout">
				<div class="container">
					<div class="row">
						<div class="col-md-12 col-sm-12 col-xs-12">
							<div class="tg-trustedbymany">
								<div class="tg-sectionhead">
									<div class="tg-sectiontitle">
										<h2>Trusted By Many</h2>
										<img class="tg-svginject" src="images/sectionline.svg" alt="image description">
									</div>
								</div>
								<div id="tg-brandsslider" class="tg-brandsslider tg-brands">
                                    <asp:PlaceHolder ID="pnlSponsor" runat="server"></asp:PlaceHolder>
									
									
								</div>
							</div>
						</div>
					</div>
				</div>
			</section>



			<section class="tg-main-section tg-haslayout tg-parallaximg" data-position-x="center" data-position-y="center" data-appear-top-offset="600" data-parallax="scroll" data-bleed="0" data-image-src="images/parallax/bgparallax-04.jpg">
				<div class="container">
					<div class="row">
						<div class="tg-freeregistration">
							<div class="tg-regleftarea">
								<h2>Register For Free!</h2>
								<div class="tg-description"><p>Registation Now free and using dinamic way serial and schedul.</p></div>
							</div>
							<div class="tg-regrightarea">
								<a class="tg-btn" href="Login">Register Now</a>
							</div>
						</div>
					</div>
				</div>
			</section>

		</main>
		<!--************************************
				Main End
		*************************************-->


</asp:Content>
