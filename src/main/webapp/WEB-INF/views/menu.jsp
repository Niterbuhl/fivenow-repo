<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
	<style>
		body{
		   margin-top: 100px;
			
		}
	
		/* Remove the navbar's default margin-bottom and rounded borders */ 
		.navbar {
		  margin-bottom: 0;
		  border-radius: 0;
		}
		
		/* Add a gray background color and some padding to the footer */
		footer {
		  background-color: #f2f2f2;
		  padding: 25px;
		}

		.carousel-inner img {
		  width: 100%; /* Set width to 100% */
		  margin: auto;
		  min-height:200px;
		  max-height: 903px;
	  }
		.navbar-brand img{
			width: 59px;
			height: 50px;
			margin-top: -16px;
		}
		
		.carousel-caption {
			border-radius: 10px;
			background-color:  rgba(0, 0, 0, 0.6);	
			font-size: 30px;
			color: white;
		}
		
	  /* Hide the carousel text when the screen is less than 600 pixels wide */
	  @media (max-width: 600px) {
		.carousel-caption {
		  display: none; 
		}
	  }
	  .bg-1 { 
			 /* Green */
			padding-top: 100px;
			color: #ffffff;
		}
		.bg-2 { 
			 /*background-color:rgba(71,78,93,) #474e5d; Dark Blue */
			background: linear-gradient(rgba(71,78,93,1), rgba(71,78,93,0));
			height:600px;
			padding-top: 100px;
			color: #ffffff;
		}
		.bg-3 { 
			background-color: #ffffff; /* White */
			height:600px;
			padding-top: 100px;
			color: #555555;
		}
		.bg-4 { 
			background-color: #777777;
			height:600px;
			padding-top: 100px;
			color: #444444;
		}
	</style>
</head>
<body>

	<nav class="navbar navbar-inverse navbar-fixed-top">
	  <div class="container-fluid">
		<div class="navbar-header">
		  <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
			<span class="icon-bar"></span>
			<span class="icon-bar"></span>
			<span class="icon-bar"></span>                        
		  </button>
			<a class="navbar-brand" href="/FiveNow">
				<img src="<c:url value="Pictures/foot-five-logo.png"/>" alt="ImageCarr2">
			</a>
		</div>
		<div class="collapse navbar-collapse" id="myNavbar">
		  <ul class="nav navbar-nav">
			<li class="active"><a href="">JOUER</a></li>
			<li><a href="/FiveNow/create.html">Mon équipe</a></li>
			<li><a href="/FiveNow/contacts">Contacts</a></li>
			<li><a href="/FiveNow/list">Liste utilisateur</a></li>
		  </ul>
		  <ul class="nav navbar-nav navbar-right">
			<li><a href="#"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
		  </ul>
		</div>
	  </div>
	</nav>
</body>
</html>