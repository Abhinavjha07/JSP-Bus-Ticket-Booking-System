<html>
<head><title>Tickets Booked</title>
</head>

<body>
	<br><br><br><br>
	
	<br><br>
<center><h2>
<%@ page import ="java.util.*,java.sql.*,java.io.*"%>
<%!String JDBC_DRIVER = "com.mysql.jdbc.Driver";%>
   <%!String DB_URL = "jdbc:mysql://localhost/project";%>
   <%!String USER = "root";%>
   <%!String PASS = "";%>
   <%!Connection con = null;%>
   <%
   Statement stmt=null;
   ResultSet rs=null;
		
         String s1=request.getParameter("from");
		 String s2=request.getParameter("to");
		 String s3=request.getParameter("date");
		 String s4=request.getParameter("ntickets");
		 int n=Integer.parseInt(s4);
		 
		 
		 int m=n;
		 try
		 {
			Class.forName(JDBC_DRIVER);
		    con=DriverManager.getConnection(DB_URL,USER,PASS);
		    stmt=con.createStatement();
			
			String sql1="Update buses set seats_rem = seats_rem-"+n+" where source = '"+s1+"' And destination='"+s2+"'";
			
			stmt.executeUpdate(sql1);
			sql1="select seats_rem from buses where source='"+s1+"' And destination='"+s2+"'";
			rs=stmt.executeQuery(sql1);
			int x=0;
			while(rs.next())
				x=rs.getInt("seats_rem");
			
			if(x<0)
			{
				out.println("<br><pre>Sorry!! number of seats remaining are lesser.");
				sql1="Update buses set seats_rem = seats_rem+"+n+" where source = '"+s1+"' And destination='"+s2+"'";
				stmt.executeUpdate(sql1);
			}
			else
			{
			sql1="Select bus_id,fare from buses where source='"+s1+"' And destination='"+s2+"'";
			
			rs=stmt.executeQuery(sql1);
			int s=0;
			int flag=0;
			while(rs.next())
			{
				s=rs.getInt("bus_id");
				m=n*rs.getInt("fare");
				flag=1;
			}
			if(flag==1)
			{
				out.println("<br>Tickets Booked");
			out.println("<br><br><br><br>From : "+s1);
		 out.println("<br><br>To : "+s2);
		 out.println("<br><br>Date : "+s3);
		 out.println("<br><br>Number of Tickets : "+s4);
		 out.println("<br><br>Total Cost: "+m);
		 sql1="Insert Into details (U_id,date,bus_id,tickets) Values ('"+session.getAttribute("userId")+"','"+s3+"','"+s+"','"+n+"')";
		 stmt.executeUpdate(sql1);
			}
			else out.println("<br><pre>Sorry! No buses are there.</pre>");
			
			
			
			}
			
		 }catch(Exception e){}
		 finally
		 {
			 try{
			 stmt.close();
			 rs.close();
			 con.close();
			 }catch(Exception e){}
		 }
   %>
   
   </h2></center>
   <br><br><br>
 <h2><p align ="center"><a href="User.jsp">Continue </a></p></h2>
</body>
</html>