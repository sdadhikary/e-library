<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*,java.util.*,jspcr.forward.*,java.net.*" errorPage="" session="true"  %>
<div class="empty">
<h1>BOOKS LIST</h1>
<table class="text" width="100%" style="color:white;">
<tr>
  <th style="background-color: ; text-align:center;border-style:solid;border-color:#229dff;">Book Name</th>
  <th style="background-color:rgba(0,0,0,0.8) ; text-align:center;border-style:solid;border-color:#229dff;">Author</th>		
  <th style="background-color:rgba(0,0,0,0.8) ; text-align:center;border-style:solid;border-color:#229dff;">Subject</th>
  <th style="background-color:rgba(0,0,0,0.8) ; text-align:center;border-style:solid;border-color:#229dff;">Edition</th>
  <th style="background-color:rgba(0,0,0,0.8) ; text-align:center;border-style:solid;border-color:#229dff;">Publisher</th>
  <th style="background-color:rgba(0,0,0,0.8) ; text-align:center;border-style:solid;border-color:#229dff;">Category</th>
</tr>
<%
				Connection connection=null;
				PreparedStatement ps=null;
				PreparedStatement ps1=null;
				PreparedStatement ps2=null;
				 //AJAX and PHP.pdf";
				
				try {
						Class.forName("oracle.jdbc.driver.OracleDriver");
						String url="jdbc:oracle:thin:@127.0.0.1:1521:XE";
						connection=DriverManager.getConnection(url,"E_LIBRARY","gopal");
						ps=connection.prepareStatement("Select * from BUK_DETAIL");
						ps1=connection.prepareStatement("Select * from B_PROP");
						ResultSet rs=ps.executeQuery();
						ResultSet rs1=ps1.executeQuery();
						//status=rs.next();
						while(rs.next() && rs1.next())
						{
							String f="../books/" + rs.getString("B_NAME");
							%>
                            
                            	<%--<tr><td><a href="<%= rs.getString("B_NAME")%>" target="_self">GOPAL</a></td></tr>--%>
								<tr><td style="text-align:left"><a href="<%= f %>"><%=rs.getString("B_NAME") %></a></td>
                                <td style="text-align:left"><%=rs.getString("B_ATHR") %></td>
                                <td style="text-align:left"><%=rs.getString("B_SUB") %></td>
                                <td style="text-align:left"><%=rs1.getString("B_EDSN") %></td>
                                <td style="text-align:left"><%=rs.getString("B_PBLSHR") %></td>
                                <td style="text-align:left"><%=rs.getString("B_CAT") %></td></tr>
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
							ps1.close();
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
	

%>
</table>
<div class="read"></div>

</div>