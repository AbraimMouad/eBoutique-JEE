<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
		
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
 <title>HassanMVC</title> 
		  <meta http-equiv="Content-Type" content="text/html; charset=windows-1252" /> 
		  <link rel="stylesheet" type="text/css" href="style/style.css" /> 
		  <script type="text/javascript" src="js/boxOver.js"></script> 
		  
		    <meta charset="utf-8">
    <title>HassanMVC</title>
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
			  <li class="active"><a href="index.html"> <span class="icon-home"></span> Home</a> </li>
			  <li class=""><a href="RegisterJSP.jsp"><span class="icon-edit"></span> Free Register </a></li>
			  <li class=""><a href="LoginJSP.jsp"><span class="icon-shopping-cart"></span> Login </a></li>
			
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
				 <div id="main_container"> 
				 
		   <div id="main_content"> 
		     <div id="menu_tab"> 
		       <div class="left_menu_corner"></div> 
		   	<ul class="menu"> 
				 <li><h3  class="nav1"> ${Welcome } ${nom }</h3></li> 
				 <li><a href="Product" class="nav4"> ${Product}</a></li>  
				  <li><a href="Paniers" class="nav4"> ${Panier }</a></li>
				 <li><a href="Commande" class="nav4"> Commande</a></li>
			 	<li> <a href="Paniers?Language=en_US">US</a></li> 
				<li><a href="Paniers?Language=fr_FR">fr</a></li> 
				<li><a href="Login" class="nav4"> ${Deconnexion}</a></li> 
			</ul> 
		       <div class="right_menu_corner"></div> 
		      </div> 
		      <div class="center_content" style="float: none;display: block;margin: auto;"> 
		      <%--  <div class="center_title_bar">${Panier }</div>  --%>
		       <div class="prod_box"> 
		         <div class="prod_box_big"> 
		         <div class="top_prod_box_big"></div> 
		         <div class="center_prod_box_big"> 
		           <div class="contact_form"> 
		          <c:forEach items="${Produit}" var="produit">
		        	   <div class="form_row"> 
			             <h4 style="margin-bottom: -37px;"><strong>${produit.designation} Prix:  ${produit.prix} </strong></H4> 
			           </div> 
		   			</c:forEach> 
		            <div class="form_row"> 
		             <h3 class="contact"><strong> ${Have } ${size}  ${itmes} </strong></h3> 
		          </div> 
		          
		           <div class="form_row"> 
		             <a href= "Product"><strong>${Order }</strong></a> 
		           </div> 
		           <div class="form_row"> 
		             <a href= "Commande?save=yes"><strong>${Save } </strong></a> 
		           </div> 
		       </div> 
		       <div class="bottom_prod_box_big"></div> 
		     </div> 
		     </div> 
		  </div> 
		  <div>  </div> </div> </div> 
		  <div class="footer" > 
		
		 </div> 
		
		</body> 
	</html> 	