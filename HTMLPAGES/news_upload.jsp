<%@ page language="java" import="java.sql.*" %>
<%@ page language="java" import="java.io.*" %>
<%	
	Connection connection=null;
	PreparedStatement n_upload=null;
    try
	{
        Class.forName("oracle.jdbc.driver.OracleDriver");
        String url="jdbc:oracle:thin:@127.0.0.1:1521:XE";
        connection=DriverManager.getConnection(url,"E_LIBRARY","gopal");
        n_upload=connection.prepareStatement("insert into n_upload values(?,?,?,?,?,?,?)");
        
        String GR_NO=(String)(session.getAttribute("GR_NO"));
        String N_DATE=request.getParameter("date");
        String N_TIME=request.getParameter("time");
        String N_SUB=request.getParameter("title");
        String GEUST=request.getParameter("guest");
        String CORDINATOR=request.getParameter("cordinator");
		String PLACE=request.getParameter("place");
        if(GR_NO==""||N_DATE==""||N_TIME==""||N_SUB==""||PLACE=="")
        {
        	out.println("Please Enter all Fields");
        }
        else
        {
        GR_NO=GR_NO.trim();
        N_DATE=N_DATE.trim();
        N_TIME=N_TIME.trim();
        N_SUB=N_SUB.trim();
        GEUST=GEUST.trim();
        CORDINATOR=CORDINATOR.trim();
        PLACE=PLACE.trim();
        
        
		n_upload.setString(1,GR_NO);
		n_upload.setString(2,N_DATE);
        n_upload.setString(3,N_TIME);
        n_upload.setString(4,N_SUB);
        n_upload.setString(5,GEUST);
        n_upload.setString(6,CORDINATOR);
        n_upload.setString(7,PLACE);
		n_upload.executeUpdate();
        
//        out.println("UPLOAD SUCCESSFUL");
	response.sendRedirect("main.jsp");
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
				n_upload.close();
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