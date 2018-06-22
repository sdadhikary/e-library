
<div id="header">
	<div id="head">
	<!-- navigation -->
                <div class="nav-links">
                    <div class="container">
                        <nav class="navbar navbar-inverse">
                            <div class="navbar-header">
                                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
                                    <span class="icon-bar"></span>
                                    <span class="icon-bar"></span>
                                    <span class="icon-bar"></span>
                                </button>
                                <a class="navbar-brand" href="index_1.jsp">
                                    <h1>
										<span>E</span>-
                                        <span>Lib</span>rary
                                    </h1>
                                </a>						
                            </div>
							
							<div class="collapse navbar-collapse" id="myNavbar">
                                <ul class="nav navbar-nav link-effect">
									<li class="pull-right" style="margin-top:-65px;">
									<div id="log1">
										<a herf="#" onclick="myFunction()" class="dropbtn btn btn-block" style="padding:15px 0px;" ><span class="fa fa-user" aria-hidden="true" style="border:3px solid white; border-radius:50%;  padding: 15px"></span></a>
									</div>
										<div class="dropdown pull-right row">	
												<div id="myDropdown" class="dropdown-content" style="background-color:#229dff;font-family:Monospace">
														<p style="color:white;margin-top:10px;margin-left:40px;">Logged in as:&nbsp;&nbsp;<%= (String)(session.getAttribute("GR_NO"))%> &nbsp;&nbsp;</p>
														<a href="index_1.jsp"><button type="submit" class="btn btn-block text-primary logbut" style="margin-top:10px;vertical-align:middle"><i class="fa fa-paper-plane"></i><span>Logout</span></button></a>
														<!--input type="submit" value="Login"-->
												</div>
										</div>
									</li>
                                </ul>
                        </nav>
					</div>
				</div>
				<div class="nav-links" style="height:12%;margin-top:10px;">
                    <div class="container">
						<div class="collapse navbar-collapse" id="myNavbar">
							<ul class="navbar-nav link-effect" style="list-style-type:none;margin-top:20px;">
								<!--li class="pull-right"-->
								<!--menu Button begins-->
								<% String gr_cat1=(String)(session.getAttribute("GR_CAT")); %>
								<% if((gr_cat1).equals("STUDENT")){ %><jsp:include page="mbutton.jsp" /><%}
								else if((gr_cat1).equals("STAFF")){ %><jsp:include page="mbutton1.jsp" /><%} 
								else if((gr_cat1).equals("LIBR")){ %><jsp:include page="mbutton2.jsp" /><%}
								else if((gr_cat1).equals("ADMIN")){ %><jsp:include page="mbutton3.jsp" /><% }%>
								<!--menu buttons end -->
								<!--/li-->
							</ul>
						</div>
                    </div>
                </div>
                <!-- /navigation -->
				
				
	</div>
	<div id="logo">
		<br />
		<div style="font-size:14px; margin-left:65%; margin-top:0%">
			<table>
				<tr><td><FORM action="search.jsp" method="post" id="SRF" >
						<input type="text" class="btn" name="search" style="padding:5px;margin-top:-25px;" placeholder="Search" /></td>
					<td><button type="submit" style="padding:2px;margin-top:-25px;margin-right:20px;border-radius:20px;"><i class="fa fa-search btn" style="font-size:15px;color:blue;"></i></button></td>
					<td>&nbsp;</FORM></td><td><p style="color:white;margin-top:-25px;">WelCome :&nbsp;&nbsp;<%= (String)(session.getAttribute("GR_NO"))%> &nbsp;&nbsp;</p></td>
				</tr>
			</table>
		</div>
	</div>
</div>
		<!--div class="alert alert-success alert-dismissable">
		  <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
		  <strong><%= (String)(session.getAttribute("msg"))%></strong>
		</div-->
