<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<!-- Compiled and minified CSS -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">

    <!-- Compiled and minified JavaScript -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>
         
</head>
<body>
<button onclick="usersignup()"> user signup</button>
<button onclick="userlogin()"> user login</button>
<button onclick="doctorsignup()"> Doctor signup</button>
<button onclick="doctorlogin()">Doctor login</button>


<% response.setHeader("Cache-Control","no-cache"); //HTTP 1.1 
 response.setHeader("Pragma","no-cache"); //HTTP 1.0 
 response.setDateHeader ("Expires", 0); //prevents caching at the proxy server  
%>
		
	
	<div  id="usersignup" style="height:500px; width:600px; margin :100px;display:none;">
	
	<div class="card" >
	 <h4 style="color:red;text-align: center;"><% 
    	if(request.getParameter("registerationStatus1")==null)
    	{}
    	else if(request.getParameter("registerationStatus1").equals("Susccessfully registered......"))
    	{out.println("<h4 style='color:green;'>("+request.getParameter("registerationStatus1")+")</h4>");}
    	else{
    		out.println("("+request.getParameter("registerationStatus1")+")");
    	}
    
    %></h4>
	<form style="margin:30px" action="Main" method="get">
			<h5 style="text-align: center;">Signup</h5>
			<input type="hidden" name="action" value="usersignup" ><br>
  			<label style="font-size:20px;" for="fname">First name:</label><br>
  			<input type="text" id="fname" name="fname" required><br>
  			<label style="font-size:20px;" for="lname">Last name:</label><br>
 			<input type="text" id="lname" name="lname" required>
 			<label style="font-size:20px;" for="birthday">Birthday:</label>
  			<input type="date" id="birthday" name="dob" required>
 			<label style="font-size:20px;" for="email">Email:</label><br>
  			<input type="email" id="email" name="email" required><br>
  			<label style="font-size:20px;" for="reemail">Re-enter email:</label><br>
 			<input type="email" id="re-email" name="reemail" required>
 			<label style="font-size:20px;" for="password">password:</label><br>
  			<input type="password" id="password" name="password" required><br>
  			<label style="font-size:20px;" for="repassword">Re-enter password:</label><br>
 			<input type="password" id="re-password" name="repassword" required>
 			<input required style="margin-left:150px;margin-top:20px;margin-bottom:20px;font-size:20px;background-color: #80ced6;border: none;color: white;padding: 15px 32px;text-align: center;text-decoration: none;display: inline-block;font-size: 16px;" type="reset">
			<input  required style="margin-left:30px;margin-top:20px;margin-bottom:20px;font-size:20px;background-color: #80ced6;border: none;color: white;padding: 15px 32px;text-align: center;text-decoration: none;display: inline-block;font-size: 16px;" type="submit">
	</form>
	</div>
	</div>
	
	
	
	<div  id="userlogin" style="height:500px; width:600px; margin :100px;display:block;">
	
	<div class="card" >
	 <h4 style="color:red;text-align: center;"><% 
    	if(request.getParameter("registerationStatus2")==null)
    	{}
    	else{
    		out.println("("+request.getParameter("registerationStatus2")+")");
    	}
    
    %></h4>
	<form style="margin:30px" action="Main" method="get">
			<h5 style="text-align: center;">User login</h5>
			<input type="hidden" name="action" value="userlogin" ><br>
 			<label style="font-size:20px;" for="email">Email:</label><br>
  			<input type="email" id="email" name="email" required><br>
 			<label style="font-size:20px;" for="password">password:</label><br>
  			<input type="password" id="password" name="password" required><br>
 			<input required style="margin-left:150px;margin-top:20px;margin-bottom:20px;font-size:20px;background-color: #80ced6;border: none;color: white;padding: 15px 32px;text-align: center;text-decoration: none;display: inline-block;font-size: 16px;" type="reset">
			<input  required style="margin-left:30px;margin-top:20px;margin-bottom:20px;font-size:20px;background-color: #80ced6;border: none;color: white;padding: 15px 32px;text-align: center;text-decoration: none;display: inline-block;font-size: 16px;" type="submit">
	</form>
	</div>
	</div>
	
	
	<div  id="doctorsignup" style="height:500px; width:600px; margin :100px;display:none;">
	
	<div class="card" >
	 <h4 style="color:red;text-align: center;"><% 
    	if(request.getParameter("registerationStatus3")==null)
    	{}
    	else if(request.getParameter("registerationStatus3").equals("Susccessfully registered......"))
    	{out.println("<h4 style='color:green;'>("+request.getParameter("registerationStatus3")+")</h4>");}
    	else{
    		out.println("("+request.getParameter("registerationStatus3")+")");
    	}
    
    %></h4>
	<form style="margin:30px" action="Main" method="get">
			<h5 style="text-align: center;">Doctor Signup</h5>
			<input type="hidden" name="action" value="doctorsignup" ><br>
  			<label style="font-size:20px;" for="fname">First name:</label><br>
  			<input type="text" id="fname" name="fname" required><br>
  			<label style="font-size:20px;" for="lname">Last name:</label><br>
 			<input type="text" id="lname" name="lname" required>
 			<label style="font-size:20px;" for="birthday">Birthday:</label>
  			<input type="date" id="birthday" name="dob" required>
 			<label style="font-size:20px;" for="email">Email:</label><br>
  			<input type="email" id="email" name="email" required><br>
  			<label style="font-size:20px;" for="reemail">Re-enter email:</label><br>
 			<input type="email" id="re-email" name="reemail" required>
 			<label style="font-size:20px;" for="password">password:</label><br>
  			<input type="password" id="password" name="password" required><br>
  			<label style="font-size:20px;" for="repassword">Re-enter password:</label><br>
 			<input type="password" id="re-password" name="repassword" required>
 			<input required style="margin-left:150px;margin-top:20px;margin-bottom:20px;font-size:20px;background-color: #80ced6;border: none;color: white;padding: 15px 32px;text-align: center;text-decoration: none;display: inline-block;font-size: 16px;" type="reset">
			<input  required style="margin-left:30px;margin-top:20px;margin-bottom:20px;font-size:20px;background-color: #80ced6;border: none;color: white;padding: 15px 32px;text-align: center;text-decoration: none;display: inline-block;font-size: 16px;" type="submit">
	</form>
	</div>
	</div>
	
	
	
	<div  id="doctorlogin" style="height:500px; width:600px; margin :100px;display:none;">
	
	<div class="card" >
	 <h4 style="color:red;text-align: center;"><% 
    	if(request.getParameter("registerationStatus4")==null)
    	{}
    	else{
    		out.println("("+request.getParameter("registerationStatus4")+")");
    	}
    
    %></h4>
	<form style="margin:30px" action="Main" method="get">
			<h5 style="text-align: center;">Doctor login</h5>
			<input type="hidden" name="action" value="doctorlogin" ><br>
 			<label style="font-size:20px;" for="email">Email:</label><br>
  			<input type="email" id="email" name="email" required><br>
 			<label style="font-size:20px;" for="password">password:</label><br>
  			<input type="password" id="password" name="password" required><br>
 			<input required style="margin-left:150px;margin-top:20px;margin-bottom:20px;font-size:20px;background-color: #80ced6;border: none;color: white;padding: 15px 32px;text-align: center;text-decoration: none;display: inline-block;font-size: 16px;" type="reset">
			<input  required style="margin-left:30px;margin-top:20px;margin-bottom:20px;font-size:20px;background-color: #80ced6;border: none;color: white;padding: 15px 32px;text-align: center;text-decoration: none;display: inline-block;font-size: 16px;" type="submit">
	</form>
	</div>
	</div>
	
	
	
	<script>
			function usersignup()
			{	document.getElementById("userlogin").style.display = 'none';
				document.getElementById("usersignup").style.display = 'block';
				document.getElementById("doctorlogin").style.display = 'none';
				document.getElementById("doctorlogin").style.display = 'none';
				}

			function userlogin()
			{	document.getElementById("userlogin").style.display = 'block';
				document.getElementById("usersignup").style.display = 'none';
				document.getElementById("doctorsignup").style.display = 'none';
				document.getElementById("doctorlogin").style.display = 'none';
				}
			function doctorsignup()
			{	document.getElementById("userlogin").style.display = 'none';
				document.getElementById("usersignup").style.display = 'none';
				document.getElementById("doctorsignup").style.display = 'block';
				document.getElementById("doctorlogin").style.display = 'none';
				}
			function doctorlogin()
			{	document.getElementById("userlogin").style.display = 'none';
				document.getElementById("usersignup").style.display = 'none';
				document.getElementById("doctorsignup").style.display = 'none';
				document.getElementById("doctorlogin").style.display = 'block';
				}

	</script>
</body>
</html>