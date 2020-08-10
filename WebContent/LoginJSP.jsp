<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt_rt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>  
		    
		   <meta http-equiv="Content-Type" content="text/html; charset=windows-1252" />  
		   <link rel="stylesheet" type="text/css" href="style/style.css" />  
		   <script type="text/javascript" src="js/boxOver.js"></script> 
		   
    <meta charset="utf-8">
    <title>EcoomerceISIL</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <!-- Bootstrap styles -->
    <link href="style/css/bootstrap.css" rel="stylesheet"/>
    <!-- Customize styles -->
    <link href="style.css" rel="stylesheet"/>
    <!-- font awesome styles -->
	<link href="style/font-awesome/css/font-awesome.css" rel="stylesheet">
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
				<form class="form-horizontal loginFrm" method="post" action="Login">
				  <div class="control-group">
					<input type="text" name="email" class="span2" id="inputEmail" placeholder="Email">
				  </div>
				  <div class="control-group">
					<input type="password" name="pwd" class="span2" id="inputPassword" placeholder="Password">
				  </div>
				  <div class="control-group">
					<label class="checkbox">
					<input type="checkbox"> Remember me
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

</div>
		   <div id="main_container">  
		     
		     <div id="main_content">  
		       <div id="menu_tab">  
		        
		       <div class="center_content" style="float: none;display: block;margin: auto;">  
		       
		       <div class="span9">
    
	<h3> Connecter</h3>	
	<hr class="soft"/>
	

	
		<div class="control-group">
			<div class="">
			<form method="post"	action="Login">
			  <div class="control-group">
				<label class="control-label" for="inputEmail">E-mail</label>
				<div class="controls">
				  <input type="text" class="span3" name="email"  placeholder="E-mail">
				</div>
			  </div>
			  <div class="control-group">
				<label class="control-label" for="inputPassword">mot de passe</label>
				<div class="controls">
				  <input type="password" name="pwd" class="span3" placeholder="mot de passe">
				</div>
			  </div>
			  <div class="control-group">
				<div class="controls">
				  <button type="submit" class="defaultBtn">Se connecter</button> <a href="#">mot de passe oublier?</a>
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
		    </div>  
		    
		 </body>  
		 </html>  	