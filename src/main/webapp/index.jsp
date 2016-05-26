<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<head>
	<title>Bootstrap Example</title>
	<meta http-equiv="Content-type" content="text/html;charset=UTF-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
	<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
	<style>
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

	<div id="myCarousel" class="carousel slide" data-ride="carousel">
		<!-- Indicators -->
		<ol class="carousel-indicators">
		  <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
		  <li data-target="#myCarousel" data-slide-to="1"></li>
		</ol>

		<!-- Wrapper for slides -->
		<div class="carousel-inner" role="listbox">
		  <div class="item active">
			<img src="<c:url value="Pictures/Foot1.jpg"/>" alt="ImageCarr1">
			<div class="carousel-caption">
			  <h3>Créez votre équipe ou faite vous recrutez</h3>
			  <p>Incrivez-vous !</p>
			</div>      
		  </div>

		  <div class="item">
			<img src="<c:url value="Pictures/Foot4.jpg"/>" alt="ImageCarr2">
			<div class="carousel-caption">
			  <h3>Votre match vous attend</h3>
			  <p>Incrivez-vous !</p>
			</div>      
		  </div>
		</div>

		<!-- Left and right controls -->
		<a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
		  <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
		  <span class="sr-only">Previous</span>
		</a>
		<a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
		  <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
		  <span class="sr-only">Next</span>
		</a>
	</div>



	<div class="container-fluid bg-3 text-center">
		<div class="row" >
			<div class="col-sm-8">
				<img src="<c:url value="Pictures/equipe12.png"/>" class="img" alt="Bird" style="height: 400px; width:500px;">
			</div>
			
			<div class="col-sm-4">
				<h3>Qu'est ce que FiveNow ?</h3>
				<p>
					Vous avez envie de faire un foot à cinq contre cinq?
					vous avez déjà une équipe de 5 mais personne contre qui jouer?
					
					Nous avons la solution à votre problème !
					
					Avec Five now vous avez la possiblité d'affrontez des équipes de tout horizons
					
				<p>
			</div>
		</div>
	</div>

	<div class="container-fluid bg-2 text-center">
		<div class="row" >
			<div class="col-sm-4">
				<h3>Créez votre équipe ou rejoignez la</h3>
				<p>Composer votre équipe de rêve avec vos amis.
					Mettez en place les 5 titulaires.
					Ajoutez les grâces à Facebook ou via le site
					si ils sont déjà inscris.
					
					Vous pouvez aussi rejoindre une ou plusieurs équipes !
				</p>
			</div>
			<div class="col-sm-8">
				<p>
					<img src="<c:url value="Pictures/CompoFoot2.png"/>" class="img" alt="compo" style="height: 350px;padding-top: 10px;">
				</p>
			</div>
		</div>
	</div>
	
	<div class="container-fluid bg-3 text-center">
			<!-- Container (Services Section) -->
				<div class="row">
					<div class="col-sm-2">
					  <span class="glyphicon glyphicon-off"></span>
					  <h4>POWER</h4>
					  <p>Lorem ipsum dolor sit amet..</p>
					</div>
					<div class="col-sm-2">
					  <span class="glyphicon glyphicon-heart"></span>
					  <h4>LOVE</h4>
					  <p>Lorem ipsum dolor sit amet..</p>
					</div>
					<div class="col-sm-2">
					  <span class="glyphicon glyphicon-lock"></span>
					  <h4>JOB DONE</h4>
					  <p>Lorem ipsum dolor sit amet..</p>
					</div>
				  
					<div class="col-sm-4">
						<h3>Dites nous ce que vous préférez</h3>
						<p>Dites nous où vous préferez jouer, combien de temps, contre quelle type d'équipe, quelle niveau ...
						</p>
					</div>
				</div>
	</div>
	
	<div class="container-fluid bg-2 text-center">
		<div class="row">
			<div class="col-sm-4">
				<h3>Cliquez sur jouer !</h3>			
				<p>C'est bon vous êtes prêt à en découdre ? Il vous suffit de cliquer sur "Jouer" et nous lancerons une recherche de match en tenant compte de vos critères.</p>
			</div>
			<div class="col-sm-8">
				<p>
					<img src="<c:url value="Pictures/matchmaking.jpg"/>" class="img-circle" alt="Matchmaking" style="height:500px; width:500px;margin-top:-50px">
				</p>
			</div>
		</div>
	</div>
	
	<div class="container-fluid bg-3 text-center">
		<div class="row">
			<div class="col-sm-8">
				<img src="<c:url value="Pictures/valeurs.png"/>" class="img-circle" alt="valeur" style="height:500px; width:500px;margin-top:-50px">
			</div>	
			<div class="col-sm-4">
				<h3>Nos valeurs</h3>
					<p><span style="font-weight: bold; font-size: 200%;">	Le plaisir du jeu </br>
						La convivialité </br>
						L'esprit d'équipe </br>
						Le respect </br>
						Le Fair-Play </br></span>
					</p>
			</div>
		
		</div>
	</div>

	<div class="container-fluid bg-4 text-center">
	  <h3>Where To Find Me?</h3>
	  <p>Lorem ipsum..</p>
	</div>


	<footer class="container-fluid text-center">
	  <p>Footer Text</p>
	</footer>

</body>
</html>
