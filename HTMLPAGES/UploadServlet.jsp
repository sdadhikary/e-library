<%@ page language="java" import="java.sql.*" %>
<%@ page language="java" import="java.io.*" %>
<%      
		String saveFile = "";     
 		String contentType = request.getContentType();  

     	if ((contentType != null) && (contentType.indexOf("multipart/form-data") >= 0))
      {            
      				DataInputStream in = new DataInputStream(request.getInputStream());  
					int formDataLength = request.getContentLength(); 
					byte dataBytes[] = new byte[formDataLength];     
					int byteRead = 0;       
					int totalBytesRead = 0;    
					while (totalBytesRead < formDataLength) 
					{      
						byteRead = in.read(dataBytes, totalBytesRead, formDataLength);   
						totalBytesRead += byteRead;
					}         
					String file = new String(dataBytes);  
					//gopal
					int i,j,index1;
					String F_TITLE="";
					String F_SUB="";					
					String F_TYPE="";

					
					for(i=0;i<file.length();i++)
					{
						if(file.indexOf("F_TITLE")!=(-1))
						{
							index1 =(file.indexOf("F_TITLE")+8);
							for(j=index1;file.charAt(j)!='-';j++)
							{F_TITLE=F_TITLE+file.charAt(j);}
							break;
						}
					}
					for(i=0;i<file.length();i++)
					{
						if(file.indexOf("F_SUB")!=(-1))
						{	
							index1=(file.indexOf("F_SUB")+6);
							for(j=index1;file.charAt(j)!='-';j++)
							{F_SUB=F_SUB+file.charAt(j);}
							break;
						}
					}
					for(i=0;i<file.length();i++)
					{
						if(file.indexOf("F_TYPE")!=(-1))
						{
							index1=(file.indexOf("F_TYPE")+7);
							for(j=index1;file.charAt(j)!='-';j++)
							{F_TYPE=F_TYPE+file.charAt(j);}
							break;
						}
					}
					///gopal    
					saveFile = file.substring(file.indexOf("filename=\"") + 10);   
					saveFile = saveFile.substring(0, saveFile.indexOf("\n"));  
					saveFile = saveFile.substring(saveFile.lastIndexOf("\\") + 1, saveFile.indexOf("\""));            
					int lastIndex = contentType.lastIndexOf("=");            
					String boundary = contentType.substring(lastIndex + 1, contentType.length());            
					int pos;            
					pos = file.indexOf("filename=\"");            
					pos = file.indexOf("\n", pos) + 1;           
					pos = file.indexOf("\n", pos) + 1;            
					pos = file.indexOf("\n", pos) + 1;            
					int boundaryLocation = file.indexOf(boundary, pos) - 4;            
					int startPos = ((file.substring(0, pos)).getBytes()).length;            
					int endPos = ((file.substring(0, boundaryLocation)).getBytes()).length; 
					String F_NAME=saveFile;           
					saveFile = "C:/Program Files (x86)/Apache Software Foundation/Tomcat 8.0/webapps/e-library/books/" + saveFile;            
					File ff = new File(saveFile);            
					FileOutputStream fileOut = new FileOutputStream(ff);            
					fileOut.write(dataBytes, startPos, (endPos - startPos));            
					fileOut.flush();            
					fileOut.close();
					
					Connection connection=null;
					PreparedStatement ps=null;
					try
					{
						Class.forName("oracle.jdbc.driver.OracleDriver");
						String url="jdbc:oracle:thin:@127.0.0.1:1521:XE";
						connection=DriverManager.getConnection(url,"E_LIBRARY","gopal");
						ps=connection.prepareStatement("insert into upload_detail values(?,?,?,?,?,?,?)");
						
						String GR_NO=(String)(session.getAttribute("GR_NO"));
						String U_DATE=( new java.text.SimpleDateFormat("dd-MMM-yy").format(new java.util.Date()));
						String U_TIME=( new java.text.SimpleDateFormat("hh:mm:ss aa").format(new java.util.Date()));
						
						if(GR_NO==""||F_TITLE==""||F_TYPE==""||F_SUB=="")
						{
							out.println("Please Enter all Fields");
						}
						else
						{
							
						GR_NO=GR_NO.trim();
						F_NAME=F_NAME.trim();
						F_TITLE=F_TITLE.trim();
						F_TYPE=F_TYPE.trim();
						F_SUB=F_SUB.trim();
						//F_NAME=F_NAME.trim();
						
						ps.setString(1,GR_NO);
						ps.setString(2,F_NAME);
						ps.setString(3,F_TITLE);
						ps.setString(4,F_TYPE);
						ps.setString(5,F_SUB);
						ps.setString(6,U_DATE);
						ps.setString(7,U_TIME);
						ps.executeUpdate();
						
						
						
		//				out.println("UPLOAD SUCCESSFUL");
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
	  
					response.sendRedirect("main.jsp");
%>
<!--<Br><table border="2"><tr><td><b>You have successfully upload the file by the name of:</b><% out.println(saveFile);} %></td></tr></table>-->