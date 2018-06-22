<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*,java.util.*,jspcr.forward.*,java.net.*" errorPage="" session="true"  %>
<div class="empty">
<h1>BOOKS LIST</h1>
<%
				Connection connection=null;
				PreparedStatement ps=null;
				 //AJAX and PHP.pdf";
				
				try {
						Class.forName("oracle.jdbc.driver.OracleDriver");
						String url="jdbc:oracle:thin:@127.0.0.1:1521:XE";
						connection=DriverManager.getConnection(url,"E_LIBRARY","gopal");
						ps=connection.prepareStatement("Select * from login_history");
						ResultSet rs=ps.executeQuery(); %>
                    	<table class="text" width="100%">
						<tr>
						  <th style="background-color:#F0F0F0 ; text-align:center;">GR_NO</th>
						  <th style="background-color:#F0F0F0 ; text-align:center;">L_DATE</th>		
						  <th style="background-color:#F0F0F0 ; text-align:center;">L_TIME</th>
							<th style="background-color:#F0F0F0 ; text-align:center;">IP</th>
							  <th style="background-color:#F0F0F0 ; text-align:center;">MAC</th>
								<th style="background-color:#F0F0F0 ; text-align:center;">CAT</th>
						</tr>

					<%	while(rs.next())
						{
							%>
                         
								<tr><td style="text-align:left"><%=rs.getString("GR_NO") %></td>
                                <td style="text-align:left"><%=rs.getString("L_DATE") %></td>
                                <td style="text-align:left"><%=rs.getString("L_TIME") %></td>
                                <td style="text-align:left"><%=rs.getString("IP") %></td>
                                <td style="text-align:left"><%=rs.getString("MAC") %></td>
                                <td style="text-align:left"><%=rs.getString("GR_CAT") %></td></tr>
							<%	
						}	
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
							ps.close();
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
	

%><tr>
<td><form action="clear_hist.jsp" method="post"><input type="submit" value="Clear all" /></form></td></tr></table>
<div class="read"><a href="javascript:loadContent(1)">HOME</a></div>

</div>