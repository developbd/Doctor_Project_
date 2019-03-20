<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="contact.aspx.cs" Inherits="doctor.contact" %>

<%@ Register Src="~/Advertisement.ascx" TagPrefix="uc1" TagName="Advertisement" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


<main id="tg-main" class="tg-main tg-haslayout">
			<div class="container">
				<div class="row">
					<div id="tg-twocolumns" class="tg-twocolumns">
						<div class="col-sm-8 col-xs-12 pull-right">
							<div id="tg-content" class="tg-content">
								
								<article class="tg-post tg-postdetail">
									<figure class="tg-postimg"><a href="#"><img src="images/post/blogpostdetail.jpg" alt="image description"></a></figure>
									<div class="tg-postcontent">
										<time class="tg-postdate" datetime="2011-10-10">June <span>27</span></time>
										<div class="tg-posttitle">
											<h3>Always Take Right Decision</h3>
										</div>
										<ul class="tg-metadata">
											<li>
												<em>Posted By: </em>
												<a href="#">Pricilla Nader</a>
											</li>
										</ul>
										<div class="tg-description">
											<p>Consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliquaim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo conuat duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur excepteur sint occaecat cupidatat non proident.</p>
											<p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque lantium totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore.</p>
										</div>
									</div>
									<div class="tg-posttagsandshare">										
										<div class="tg-postshare">
											<strong>share:</strong>
											<ul class="tg-socialsharewithtext">
												<li class="tg-facebook">
													<a class="tg-roundicontext" href="#">
														<em class="tg-usericonholder">
															<i class="fa fa-facebook-f"></i>
															<span>share on facebook</span>
														</em>
													</a>
												</li>
												<li class="tg-twitter">
													<a class="tg-roundicontext" href="#">
														<em class="tg-usericonholder">
															<i class="fa fa-twitter"></i>
															<span>share on twitter</span>
														</em>
													</a>
												</li>
												<li class="tg-linkedin">
													<a class="tg-roundicontext" href="#">
														<em class="tg-usericonholder">
															<i class="fa fa-linkedin"></i>
															<span>share on linkdin</span>
														</em>
													</a>
												</li>
												<li class="tg-googleplus">
													<a class="tg-roundicontext" href="#">
														<em class="tg-usericonholder">
															<i class="fa fa-google-plus"></i>
															<span>share on googl+</span>
														</em>
													</a>
												</li>
												<li class="tg-rss">
													<a class="tg-roundicontext" href="#">
														<em class="tg-usericonholder">
															<i class="fa fa-rss"></i>
															<span>share on RSS</span>
														</em>
													</a>
												</li>
												<li class="tg-youtube">
													<a class="tg-roundicontext" href="#">
														<em class="tg-usericonholder">
															<i class="fa fa-youtube-play"></i>
															<span>share on YouTube</span>
														</em>
													</a>
												</li>
											</ul>
										</div>
									</div>
								</article>
								
								
								<div id="tg-leavecomments" class="tg-leavecomments">
									<h3>Contact Us</h3>
									<form class="tg-formtheme tg-formleavecomment">
										<fieldset>
											<div class="row">
												<div class="col-sm-6 col-xs-12">
													<div class="form-group">
                                                        <asp:TextBox ID="txtName" CssClass="form-control" placeholder="Name" runat="server"></asp:TextBox>
													</div>
												</div>
												<div class="col-sm-6 col-xs-12">
													<div class="form-group">
														  <asp:TextBox ID="txtEmail" TextMode="Email" CssClass="form-control" placeholder="Email" runat="server"></asp:TextBox>
													</div>
												</div>												
												<div class="col-sm-12 col-xs-12">
													<div class="form-group">
                                                          <asp:TextBox ID="txtDetails" TextMode="MultiLine" CssClass="form-control" placeholder="Type Message Here" runat="server"></asp:TextBox>
													</div>
												</div>
												<div class="col-sm-12 col-xs-12">
                                                    <asp:Button ID="btnsend" OnClick="btnsend_Click" CssClass="tg-btn" runat="server" Text="Submit"></asp:Button>
												</div>
                                                <div class="col-sm-12 col-xs-12">
                                                <a> <asp:Label ID="lblResult" runat="server"></asp:Label> </a>
                                                </div>
											</div>
										</fieldset>
									</form>
								</div>
							</div>
						</div>
						<uc1:Advertisement runat="server" id="Advertisement" />
					</div>
				</div>
			</div>
		</main>
</asp:Content>
