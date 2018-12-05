<html>
<head>
<title>Project</title>
</head>
<body>
<br><br>
<h1><p align="Center">Book Your Tickets</p></h1>
<br><br>
<center><h2><p>Enter your login credentials <p></h2>
<form action="check.jsp" method="POST">
	<h3><p>Id </p></h3>
      <input type="text" name="id" value=""><br>
	 <h3> <p>Password </p></h3>
	  <input type="password" name="pwd" value=""><br>
	  <h3><p>Role </p><h3>
	  <input type="radio" name="role" value="ruser" checked>Regular User<br>
	  <input type="radio" name="role" value="admin">Admin<br>
	  
	  <br><br><br>
      <input type="submit" value="Login" />
	  </center>
    </form>
</body>

</html>