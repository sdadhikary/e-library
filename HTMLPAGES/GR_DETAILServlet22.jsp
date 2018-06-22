<%@ page language="java" import="java.sql.*" %>
<%@ page language="java" import="java.io.*" %>

<%	
	Connection connection=null;
//	PreparedStatement gr_detail=null;
	PreparedStatement login_detail=null;
	PreparedStatement gr_name=null;
	PreparedStatement gr_staf=null;
	PreparedStatement gr_padd=null;
	PreparedStatement gr_cntc=null;
	try
	{
		Class.forName("oracle.jdbc.driver.OracleDriver");
		String url="jdbc:oracle:thin:@127.0.0.1:1521:XE";
		connection=DriverManager.getConnection(url,"E_LIBRARY","gopal");
	//	gr_detail=connection.prepareStatement("insert into gr_detail values(?,?)");
		login_detail=connection.prepareStatement("insert into login_detail values(?,?,?)");
		gr_name=connection.prepareStatement("insert into gr_name values(?,?,?,?)");
		gr_staf=connection.prepareStatement("insert into gr_staf values(?,?,?)");
		gr_padd=connection.prepareStatement("insert into gr_padd values(?,?,?,?,?,?,?,?,?,?,?)");
		gr_cntc=connection.prepareStatement("insert into gr_cntc values(?,?,?,?,?)");
	
		String GR_NO=request.getParameter("ID");
		//String GR_CAT=request.getParameter("GR_CAT");
		
		String F_NAME=request.getParameter("txtfname");
		String M_NAME=request.getParameter("txtmname");
		String L_NAME=request.getParameter("txtlname");
		
		String DEPT=request.getParameter("DEPT");
		String DOJ=request.getParameter("DOJ");
	
		String H_NO=request.getParameter("H_NO");
		String H_NAME=request.getParameter("H_NAME");
		String COLN_NAME=request.getParameter("COLN_NAME");
		String AREA=request.getParameter("AREA");
		String L_MARK=request.getParameter("L_MARK");
		String POST_OFI=request.getParameter("POST_OFI");
		String TQ=request.getParameter("TQ");
		String DIST=request.getParameter("DIST");
		String STATE=request.getParameter("STATE");
		String PIN_CODE=request.getParameter("PIN_CODE");
		
		String M_NO1=request.getParameter("M_NO1");
		String M_NO2=request.getParameter("M_NO2");
		String PHN_NO=request.getParameter("PHN_NO");
		String EMIL=request.getParameter("EMIL");
		String R_DATE=( new java.text.SimpleDateFormat("dd-MMM-yy").format(new java.util.Date()));
		String PWD=""+(int) (Math.random() * 9999);
		PWD=PWD + ((int)(Math.random() * 256));
		
		
		
		GR_NO=GR_NO.trim();
		//GR_CAT=GR_CAT.trim();
		
		R_DATE=R_DATE.toUpperCase();
		PWD=PWD.trim();
		
		F_NAME=F_NAME.trim();
		M_NAME=M_NAME.trim();
		L_NAME=L_NAME.trim();
		
		DEPT=DIST.trim();
		DOJ=DOJ.trim();
		
		H_NO=H_NO.trim();
		H_NAME=H_NAME.trim();
		COLN_NAME=COLN_NAME.trim();
		AREA=AREA.trim();
		L_MARK=L_MARK.trim();
		POST_OFI=POST_OFI.trim();
		TQ=TQ.trim();
		DIST=DIST.trim();
		STATE=STATE.trim();
		PIN_CODE=PIN_CODE.trim();
		
		M_NO1=M_NO1.trim();
		M_NO2=M_NO2.trim();
		PHN_NO=PHN_NO.trim();
		EMIL=EMIL.trim();
		
			
		//gr_detail.setString(1,GR_NO);
		//gr_detail.setString(2,GR_CAT);
		//gr_detail.executeUpdate();
		
		login_detail.setString(1,GR_NO);
		login_detail.setString(2,PWD);
		login_detail.setString(3,R_DATE);
		login_detail.executeUpdate();
	 
		gr_name.setString(1,GR_NO);
	 	gr_name.setString(2,F_NAME);
	 	gr_name.setString(3,M_NAME);
	 	gr_name.setString(4,L_NAME);
		gr_name.executeUpdate();
	 	

	 	gr_staf.setString(1,GR_NO);	
		gr_staf.setString(2,DEPT);
		gr_staf.setString(3,DOJ);
		gr_staf.executeUpdate();

		
		gr_padd.setString(1,GR_NO);
		gr_padd.setString(2,H_NO);
		gr_padd.setString(3,H_NAME);
		gr_padd.setString(4,COLN_NAME);
		gr_padd.setString(5,AREA);
		gr_padd.setString(6,L_MARK);
		gr_padd.setString(7,POST_OFI);
		gr_padd.setString(8,TQ);
		gr_padd.setString(9,DIST);
		gr_padd.setString(10,STATE);
		gr_padd.setString(11,PIN_CODE);
		gr_padd.executeUpdate();
		
		gr_cntc.setString(1,GR_NO);
		gr_cntc.setString(2,M_NO1);
		gr_cntc.setString(3,M_NO2);
		gr_cntc.setString(4,PHN_NO);
		gr_cntc.setString(5,EMIL);	
		gr_cntc.executeUpdate();
		
		
		//out.println("YOUR PASSWORD IS : "+ PWD);%><script>alert("Your Password Is:- <%= PWD %>");</script><a href="index_1.jsp">LOGIN</a><%
	}
	catch(ClassNotFoundException ce)
	{%>
		//out.println("Error "+ce);<a href="index_1.jsp">LOGIN</a>
	<%}
	catch(SQLException se)
	{  //out.println("Error" +se);
		%><a href="index_1.jsp">LOGIN</a>
		<script>alert("Your allready Registred");	</script>
        
	<% }
	finally
	{
		try
		{
			//if(ps!=null)
			//{
			//	gr_detail.close();
				login_detail.close();
				gr_name.close();
				gr_staf.close();
				gr_padd.close();
				gr_cntc.close();
				
			//}
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
