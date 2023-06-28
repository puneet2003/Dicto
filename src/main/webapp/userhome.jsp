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
         
<style type="text/css">
.button {
  background-color: green; /* Green */
  border: none;
  color: white;
  padding: 15px 32px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 4px 2px;
  cursor: pointer;
  -webkit-transition-duration: 0.4s; /* Safari */
  transition-duration: 0.4s;
}

.button1 {
  box-shadow: 0 8px 16px 0 rgba(0,0,0,0.2), 0 6px 20px 0 rgba(0,0,0,0.19);
}

.button2:hover {
  box-shadow: 0 12px 16px 0 rgba(0,0,0,0.24),0 17px 50px 0 rgba(0,0,0,0.19);
}
</style>


</head>
<body>
<h1>welcome in home page</h1>

<button class="button button1" onclick="take()">      take appointment      </button>
<button class="button button1" onclick="upcoming()">  upcoming appointment  </button>
<button class="button button1" onclick="previous()">  prev appointment      </button>
<button class="button button1" onclick="check()">    check profile         </button>





<div  id="take" style="height:500px; width:600px; margin :100px;display:none;">
	
	<div class="card" >
			<h4>take appointment</h4>
	</div>
	</div>
	
	
	<div  id="upcoming" style="height:500px; width:600px; margin :100px;display:none;">
	
	<div class="card" >
			<h4>upcoming</h4>
	</div>
	</div>
	
	
	<div  id="previous" style="height:500px; width:600px; margin :100px;display:none;">
	
	<div class="card" >
			<h4>previous</h4>
	</div>
	</div>
	
	
	
	<div  id="search" style="height:500px; width:600px; margin :100px;display:none;">
	
	<div class="card" >
			<h4>search</h4>
	</div>
	</div>

<script>
			function take()
			{	document.getElementById("take").style.display = 'block';
				document.getElementById("upcoming").style.display = 'none';
				document.getElementById("previous").style.display = 'none';
				document.getElementById("search").style.display = 'none';
				}

			function upcoming()
			{	document.getElementById("take").style.display = 'none';
				document.getElementById("upcoming").style.display = 'block';
				document.getElementById("previous").style.display = 'none';
				document.getElementById("search").style.display = 'none';
				}
			function previous()
			{	document.getElementById("take").style.display = 'none';
				document.getElementById("upcoming").style.display = 'none';
				document.getElementById("previous").style.display = 'block';
				document.getElementById("search").style.display = 'none';
				}

			function check()
			{	document.getElementById("take").style.display = 'none';
				document.getElementById("upcoming").style.display = 'none';
				document.getElementById("previous").style.display = 'none';
				document.getElementById("search").style.display = 'block';
				}
			

	</script>

</body>
</html>