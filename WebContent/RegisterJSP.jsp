<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt_rt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
		 <head>  
		 <title> Dhaidah</title>  
		 <meta http-equiv="Content-Type" content="text/html; charset=windows-1252" />  
		 <link rel="stylesheet" type="text/css" href="style/style.css" />  
		 <script type="text/javascript" src="js/boxOver.js"></script>  
		 <meta charset="utf-8">
		 
    <title>Twitter Bootstrap shopping cart</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <!-- Bootstrap styles -->
    <link href="style/css/bootstrap.css" rel="stylesheet"/>
    <!-- Customize styles -->
    <link href="style.css" rel="stylesheet"/>
    <!-- font awesome styles -->
	<link href="style/font-awesome/css/font-awesome.css" rel="stylesheet">
		<!--[if IE 7]>
			<link href="css/font-awesome-ie7.min.css" rel="stylesheet">
		<![endif]-->

		<!--[if lt IE 9]>
			<script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
		<![endif]-->

	<!-- Favicons -->
    <link rel="shortcut icon" href="style/ico/favicon.ico">
</head>  
		 
		 
<body>  
<div class="navbar">
	  <div class="navbar-inner">
		<div class="container">
		  <a data-target=".nav-collapse" data-toggle="collapse" class="btn btn-navbar">
			<span class="icon-bar"></span>
			<span class="icon-bar"></span>
			<span class="icon-bar"></span>
		  </a>
		  <div class="nav-collapse">
			<ul class="nav">
			  <li class="active"><a href="index.html"> <span class="icon-home"></span> ACCUEIL</a> </li>
			  <li class=""><a href="RegisterJSP.jsp"><span class="icon-edit"></span> INSCRIPTION </a></li>
			  <li class=""><a href="LoginJSP.jsp"><span class="icon-shopping-cart"></span> CONNECTER </a></li>
			
			</ul>
			
			
			<ul class="nav pull-right">
			<li class="dropdown">
				<div class="dropdown-menu">
				<form class="form-horizontal loginFrm">
				  <div class="control-group">
					<input type="text" class="span2" id="inputEmail" placeholder="Email">
				  </div>
				  <div class="control-group">
					<input type="password" class="span2" id="inputPassword" placeholder="Password">
				  </div>
				  <div class="control-group">
					<label class="checkbox">
					<input type="checkbox"> 
					</label>
					<button type="submit" class="shopBtn btn-block">Sign in</button>
				  </div>
				</form>
				</div>
			</li>
			</ul>
		  </div>
		</div>
	  </div>
	</div>
		 <div id="main_container"> 
				 
				  <div id="main_content">  
		     <div id="menu_tab">  
		       
		     <div class="center_content" style="float: none;display: block;margin: auto;">  
		       
		       <div class="prod_box">  
		       <div class="prod_box_big">  
		         <div class="top_prod_box_big"></div>  
		         <div class="center_prod_box_big">  
		           <div class="contact_form">  
		           <label ><strong>${u }</strong></label>  
		           
		           
		           
<div class="">

	<hr class="soft"/>
	<div class="">
	<form  class="" method="post" action="Register">
		<h3>Saisir votre informations</h3>
		
		<div class="control-group">
			<label class="control-label" for="inputFname">Prenom <sup>*</sup></label>
			<div class="controls">
			  <input type="text" name="prenom" placeholder="Prenom">
			</div>
		 </div>
		 <div class="control-group">
			<label class="control-label" for="inputLname"> Nom <sup>*</sup></label>
			<div class="controls">
			  <input type="text" name="nom" placeholder="Nom">
			</div>
		 </div>
		  <div class="control-group">
			<label class="control-label" for="inputLname">Addresse <sup>*</sup></label>
			<div class="controls">
			  <input type="text" name="adr" placeholder="Addresse">
			</div>
		 </div>
		  <div class="control-group">
			<label class="control-label" for="inputLname">Code Postal <sup>*</sup></label>
			<div class="controls">
			  <input type="text" name="cp" placeholder="Code Postal">
			</div>
		 </div>
		  <div class="control-group">
			<label class="control-label" for="inputLname">Ville <sup>*</sup></label>
			<div class="controls">
			  <input type="text" name="city" placeholder="Ville">
			</div>
		 </div>
		  <div class="control-group">
			<label class="control-label" for="inputLname">Tel<sup>*</sup></label>
			<div class="controls">
			  <input type="text" name="tel" placeholder="Telephone">
			</div>
		 </div>
		<div class="control-group">
		<label class="control-label" for="inputEmail">Email <sup>*</sup></label>
		<div class="controls">
		  <input type="text" name="email" placeholder="Email">
		</div>
	  </div>	  
		<div class="control-group">
		<label class="control-label">Mot de passe <sup>*</sup></label>
		<div class="controls">
		  <input type="password" name="pwd" placeholder="Mot de passe">
		</div>
	  </div>
	  </div>
	<div class="control-group">
		<div class="controls">
		 <input type="submit" name="submitAccount" value="Register" class="exclusive shopBtn">
		</div>
	</div>
	</form>
</div>
		           </div>  
		           </div>  
		         </div>  
		       </div>  
		        
		       </div>  
		    </div>  
		   
		 </body>  
		 </html>