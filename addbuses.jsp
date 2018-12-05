<html>
<body>
<br><br><br><br><br><br>
<h1><p align="center">New bus added</p></h1>
<h1>
<%@ page import ="java.util.*,java.sql.*,java.io.*"%>
<%!String JDBC_DRIVER = "com.mysql.jdbc.Driver";%>
   <%!String DB_URL = "jdbc:mysql://localhost/project";%>
   <%!String USER = "root";%>
   <%!String PASS = "";%>
   <%!Connection con = null;%>
<%

	
	Statement st=null;
	String s1=request.getParameter("bus_id");
	String s2=request.getParameter("from");
	String s3=request.getParameter("to");
	String s4=request.getParameter("fare");
	String s5=request.getParameter("tseats");
	String s6=request.getParameter("seatsr");
	int a,b,c,d;
	a=Integer.parseInt(s1);
	b=Integer.parseInt(s4);
	c=Integer.parseInt(s5);
	d=Integer.parseInt(s6);
	try
	{
		 Class.forName(JDBC_DRIVER);
		   con=DriverManager.getConnection(DB_URL,USER,PASS);
		   st=con.createStatement();
		   
		   String sql="Insert into buses(bus_id,source,destination,fare,total_seats,seats_rem) Values('"+a+"','"+s2+"','"+s3+"','"+b+"','"+c+"','"+d+"')";
		  st.execute(sql);
	}catch(Exception e)
	{
		out.println(e);
	}
	finally
	{
		try
		{
		
		st.close();
		con.close();
		}catch(Exception e){}
		
	}
%>
<br><br><br>
 <h2><p align ="center"><a href="AdminFront.jsp">Continue </a></p></h2>
</body>
</html>