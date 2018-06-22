<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" session="true" %>
<!--	<div id="content">-->
	<!--Left panal begins-->
			<div class="left_bg">
				<h2>News and Announcements</h2>
				<div class="left_grad">
					<div class="company">
						
                        
						<div class="newsright">
                        <%  
							Connection connection=null;
							PreparedStatement n_upload=null;
							PreparedStatement upload_detail=null;
							PreparedStatement upload_detail1=null;
							try
							{
								Class.forName("oracle.jdbc.driver.OracleDriver");
								String url="jdbc:oracle:thin:@127.0.0.1:1521:XE";
								connection=DriverManager.getConnection(url,"E_LIBRARY","gopal");
								n_upload=connection.prepareStatement("select * from n_upload");
								ResultSet rs=n_upload.executeQuery();
								int i=0;
								while(rs.next())
								{	if(i<5)
									{i++;}
									else
									{%>
								
									<marquee>No Announcements</marquee>
										<%break;}
									%>
							  <blink><a href="javascript:loadContent(8)" style="color:Black"><%= rs.getString(4) %></a></blink></br>
								<% } %></div>
								<marquee style="color:white;font;font-size:20px;color:red;margin-top:20px;" scrollamount:"0.2">No Announcements</marquee>
						<div style="clear: both"></div>
					</div>
					</div>
                <div class="left_bot"></div>
                			
				<h2>News Paper Corner</h2>
				<div class="left_grad">
					<div class="categories">
						<ul>
							<li><a href="https://www.Timesofindia.com" target="_blank">Times Of India</a></li>
							<li><a href="https://www.Thehindhu.com"target="_blank">The Hindu</a></li>
							<li><a href="https://www.Hindusthantimes.com" target="_blank">Hindusthan Times</a></li>
							<li><a href="https://www.Lokmat.com" target="_blank">Lokmat</a></li>
							<li><a href="https://www.Loksatta.com" target="_blank">Loksatta</a></li>
							<li><a href="https://www.Divyamarathi.com" target="_blank">Divya Marathi</a></li>
							<li><a href="https://www.esakal.com" target="_blank">Sakal</a></li>
						</ul>
					</div>
				</div>
				<div class="left_bot"></div>
			</div>
	<!--left panal end -->
    
    <!--right panal begins -->
			<div class="right_bg">
				<h2>Journals</h2>
					<div class="right_grad">
						<div class="categories">
							<ul>
                            	<% String fs1="";
                          		upload_detail1=connection.prepareStatement("select * from upload_detail where f_type='JOURNALS'");
								ResultSet rs3=upload_detail1.executeQuery();
								int j=0;
								while(rs3.next())
								{	if(j<10)
									{j++;}
									else
									{break;}
									fs1="../books/" + rs3.getString("F_NAME");
								%>
                                <li>&nbsp;&nbsp;<a href="<%= fs1 %>"> <%= rs3.getString(3) %></a></li>
                                <% } %>
								</ul>
						</div>
					</div>
					<div class="right_bot"></div>
				<h2>Recent Posts</h2>
					<div class="right_grad">
					  <div class="recent">
						  <ul>
						  		<% String fs="";
                          		upload_detail=connection.prepareStatement("select * from upload_detail where NOT f_type='JOURNALS'");

								ResultSet rs2=upload_detail.executeQuery();
								int i1=0;
								while(rs2.next())
								{	if(i1<10)
									{i1++;}
									else
									{break;}
									fs="../books/" + rs2.getString("F_NAME");
									%>
								<li><a href="<%= fs %>"> <%= rs2.getString(3) %></a></li>
							<%	} 
							}
							catch(ClassNotFoundException ce)
								{
									out.println("Error "+ce);
								}
							catch(SQLException se)
								{
									out.println("Error "+se);
								}
							finally
								{
									try
									{
										n_upload.close();
										upload_detail.close();
										if(connection!=null)
										{
										  connection.close();
										}
									}
									catch(Exception e)
									{
										out.println("Error "+e);
									}
								}
							%>



                            </ul>
						</div>
					</div><div class="right_bot"></div>
			</div>
		<!--right panal end-->
	<div id="center1" style="resize:none">
        <div id="center" >
    <h1>Digital Library</h1>
	<div class="text">
		<!--img src="../images/book2.jpg" alt="img" width="30%" height="30" style="float: left; padding: 10px;" title="img"/-->
		<p style="color:white;font-family:arial;font-size:15px;">e-Library or Digital Library or Online Library or Virtual Library is the  one that provides access to a collection of information resources in digital  form.<br />
	The e-resources collection could be  subscription based or developed using local information resources or a  combination of  both. The e-library  allows  an user to search in real time.<br />
	A distinction is often made between content that was created  in a digital format, known as&nbsp;<a href="http://en.wikipedia.org/wiki/Born-digital" title="Born-digital" style="font-size:15px;">born-digital</a>, and information that has been converted from a physical medium, e.g. paper,  by&nbsp;<a href="http://en.wikipedia.org/wiki/Digitization" title="Digitization" style="font-size:15px;">digitizing</a>. The term&nbsp;<a href="http://en.wikipedia.org/wiki/Hybrid_library" title="Hybrid library" style="font-size:15px;">hybrid library</a>&nbsp;is sometimes used for libraries that have both  physical collections and digital collections. </p>
		<p><br /><br /><br />The Digital Library Design : 2014 </p>
	</div>
    <div class="read"></div>
</div>
       </div>                      
    <!--</div>-->
	<div style="clear: both"></div>