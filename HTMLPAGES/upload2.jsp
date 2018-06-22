<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*,java.util.*,jspcr.forward.*,java.net.*" errorPage="" session="true"  %>
<div class="empty">
<h1>BOOKS LIST</h1>
<table class="text" width="100%" style="color:white">
<tr>
  <th style="background-color:rgba(0,0,0,0.8) ; text-align:center;border-style:solid;border-color:#229dff;">GR_NO</th>
  <th style="background-color:rgba(0,0,0,0.8) ; text-align:center;border-style:solid;border-color:#229dff;">DATE</th>		
  <th style="background-color:rgba(0,0,0,0.8) ; text-align:center;border-style:solid;border-color:#229dff;">TIME</th>
  <th style="background-color:rgba(0,0,0,0.8) ; text-align:center;border-style:solid;border-color:#229dff;">SUB</th>
  <th style="background-color:rgba(0,0,0,0.8) ; text-align:center;border-style:solid;border-color:#229dff;">GEUST</th>
  <th style="background-color:rgba(0,0,0,0.8) ; text-align:center;border-style:solid;border-color:#229dff;">CORDINATOR</th>
  <th style="background-color:rgba(0,0,0,0.8) ; text-align:center;border-style:solid;border-color:#229dff;">PLACE</th>
</tr>
<%
				Connection connection=null;
				PreparedStatement ps=null;
				try {
						Class.forName("oracle.jdbc.driver.OracleDriver");
						String url="jdbc:oracle:thin:@127.0.0.1:1521:XE";
						connection=DriverManager.getConnection(url,"E_LIBRARY","gopal");
						ps=connection.prepareStatement("Select * from N_UPLOAD");
						ResultSet rs=ps.executeQuery();
						while(rs.next())
						{
							%>
                            
                            	<tr><td style="text-align:left"><%=rs.getString("GR_NO") %></a></td>
                                <td style="text-align:left"><%=rs.getString("N_DATE") %></td>
                                <td style="text-align:left"><%=rs.getString("N_TIME") %></td>
                                <td style="text-align:left"><%=rs.getString("N_SUB") %></td>
                                <td style="text-align:left"><%=rs.getString("GEUST") %></td>
                                <td style="text-align:left"><%=rs.getString("CORDINATOR") %></td>
                                <td style="text-align:left"><%=rs.getString("PLACE") %></td></tr>
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