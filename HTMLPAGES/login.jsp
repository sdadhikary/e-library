<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*,java.util.*,jspcr.forward.*,java.net.*" errorPage="" session="true"  %>
<%
String gr=request.getParameter("userName");
String pwd=request.getParameter("password");
gr=gr.trim();
pwd=pwd.trim();
if (gr == null || pwd == null) 
	{
		response.sendRedirect("index_1.jsp");
	}
else
	{
	boolean status=false;
				Connection connection=null;
				PreparedStatement ps=null;
				PreparedStatement ps1=null;
				PreparedStatement ps2=null;
				
				try {
						Class.forName("oracle.jdbc.driver.OracleDriver");
						String url="jdbc:oracle:thin:@127.0.0.1:1521:XE";
						connection=DriverManager.getConnection(url,"E_LIBRARY","gopal");
						ps=connection.prepareStatement("Select * from LOGIN_DETAIL where GR_NO = ? and PWD = ?");
						ps.setString(1,gr);
						ps.setString(2,pwd);
						ResultSet rs=ps.executeQuery();
						status=rs.next();
						if(status==true)
						{
							try
							{	
								String det = ( new java.text.SimpleDateFormat("dd-MMM-yy").format(new java.util.Date()));
								String now = ( new java.text.SimpleDateFormat("hh:mm:ss aa").format(new java.util.Date()));
								String ip=request.getRemoteHost();
								String mac1;
								InetAddress ip1= InetAddress.getLocalHost();
								/*InetAddress address = InetAddress.getLocalHost();
									InetAddress address = InetAddress.getByName(ip1);
								/*
								* Get NetworkInterface for the current host and then read the
								* hardware address.	 */
								NetworkInterface ni = NetworkInterface.getByInetAddress(ip1);//address);
								if (ni != null) 
								{
									byte[] mac = ni.getHardwareAddress();
									if (mac != null) 
									{
										/*
										 * Extract each array of mac address and convert it to hexa with the
										 * following format 08-00-27-DC-4A-9E.
										 */
										StringBuilder sb = new StringBuilder();
										for (int i = 0; i < mac.length; i++) {
											sb.append(String.format("%02X%s", mac[i], (i < mac.length - 1) ? "-" : ""));		
										}
										mac1=(sb.toString());
									}
									else
									{	mac1="NULL";
										/*Address doesn't exist or is not accessible.*/
									}
								} 
								else
								{	
									mac1="NULL";
								}

								ps1=connection.prepareStatement("insert into LOGIN_HISTORY values(?,?,?,?,?,?)");
								ps1.setString(1,gr);
								ps1.setString(2,det);
								ps1.setString(3,now );
								ps1.setString(4,ip);
								ps1.setString(5,mac1);
								ps2=connection.prepareStatement("select gr_cat from gr_detail where gr_no=?");
								ps2.setString(1,gr);
								ResultSet rs2=ps2.executeQuery();
								rs2.next();
								String gr_cat=rs2.getString("gr_cat");
								gr_cat=gr_cat.trim();
								
								ps1.setString(6,gr_cat);
								ps1.executeUpdate();
								
								if((gr_cat)=="STUDENT")
								{}
								else if((gr_cat)=="STAFF")
								{}
								out.println("OK");
								out.println("Welcome    " + gr);
								session.setAttribute("GR_NO",gr);
								session.setAttribute("GR_CAT",gr_cat);
								session.setAttribute("msg","Log in Successful");
								response.sendRedirect("main.jsp");
							}
							catch(SQLException se)
							{
								out.println("Error "+se);
							}
							
						}
						else
						{
							out.println("Please check your username and Password");
							/*request.setAttribute("Please check your username and Password");*/
							response.sendRedirect("index_1.jsp");
							request.setAttribute("err","Please check your username and Password");
							/*<jsp:forward page="check.html"></jsp:forward>*/
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
							ps2.close();
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
	}
%>