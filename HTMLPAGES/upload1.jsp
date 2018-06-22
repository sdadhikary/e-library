<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*,java.util.*,jspcr.forward.*,java.net.*" errorPage="" session="true"  %>
<div class="empty">
<h1>BOOKS LIST</h1>
<%
				Connection connection=null;
				PreparedStatement ps=null;
				try {
						Class.forName("oracle.jdbc.driver.OracleDriver");
						String url="jdbc:oracle:thin:@127.0.0.1:1521:XE";
						connection=DriverManager.getConnection(url,"E_LIBRARY","gopal");
						ps=connection.prepareStatement("Select * from UPLOAD_DETAIL");
						ResultSet rs=ps.executeQuery();%>
						<table class="text" width="100%" style="color:white">
						<tr>
						  <th style="background-color:rgba(0,0,0,0.8) ; text-align:center;border-style:solid;border-color:#229dff;">GR_NO</th>
						  <th style="background-color:rgba(0,0,0,0.8) ; text-align:center;border-style:solid;border-color:#229dff;">F_NAME</th>		
						  <th style="background-color:rgba(0,0,0,0.8) ; text-align:center; width:2%;border-style:solid;border-color:#229dff;">F_TITLE</th>
						  <th style="background-color:rgba(0,0,0,0.8) ; text-align:center;border-style:solid;border-color:#229dff;">F_TYPE</th>
						  <th style="background-color:rgba(0,0,0,0.8) ; text-align:center;border-style:solid;border-color:#229dff;">F_SUB</th>
						  <th style="background-color:rgba(0,0,0,0.8) ; text-align:center;border-style:solid;border-color:#229dff;">F_DATE</th>
						  <th style="background-color:rgba(0,0,0,0.8) ; text-align:center;border-style:solid;border-color:#229dff;">F_TIME</th>
						</tr>
						<% while(rs.next())
						{
							
                            String gr=rs.getString("GR_NO");%>
							<TR><td style="text-align:left"><%=rs.getString("GR_NO") %></a></td>
                                <td style="text-align:left; width:2%"><%=rs.getString("F_NAME") %></td>
                                <td style="text-align:left"><%=rs.getString("F_TITLE") %></td>
                                <td style="text-align:left"><%=rs.getString("F_TYPE") %></td>
                                <td style="text-align:left"><%=rs.getString("F_SUB") %></td>
                                <td style="text-align:left"><%=rs.getString("U_DATE") %></td>
                                <td style="text-align:left"><%=rs.getString("U_TIME") %></td></tr>
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