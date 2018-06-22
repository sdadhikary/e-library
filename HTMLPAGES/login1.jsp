<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*,java.util.*,jspcr.forward.*,java.net.*" errorPage="" session="true"  %>
<div class="empty">
<h1>BOOKS LIST</h1>
<table class="text" width="100%">
<tr>
  <th style="background-color:#F0F0F0 ; text-align:center;">GR_NO</th>
  <th style="background-color:#F0F0F0 ; text-align:center;">PWD</th>		
  <th style="background-color:#F0F0F0 ; text-align:center;">R_DATE</th>
</tr>
<%
				Connection connection=null;
				PreparedStatement ps=null;
				 //AJAX and PHP.pdf";
				
				try {
						Class.forName("oracle.jdbc.driver.OracleDriver");
						String url="jdbc:oracle:thin:@127.0.0.1:1521:XE";
						connection=DriverManager.getConnection(url,"E_LIBRARY","gopal");
						ps=connection.prepareStatement("Select * from login_detail");
						ResultSet rs=ps.executeQuery();
						while(rs.next())
						{
							%>
                         
								<tr><td style="text-align:left"><%=rs.getString("GR_NO") %></td>
                                <td style="text-align:left"><%=rs.getString("PWD") %></td>
                                <td style="text-align:left"><%=rs.getString("R_DATE") %></td></tr>
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
	

%>
</table>
<div class="read"><a href="javascript:loadContent(1)">HOME</a></div>

</div>