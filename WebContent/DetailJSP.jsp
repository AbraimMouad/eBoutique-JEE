<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.util.*" %>
	
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
	<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
    
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
 
 <div id="main_container"> 
				 <div id="header">  
		      		 	</div> 
				  <div id="main_content"> 
				   <div id="menu_tab"> 
				     <div class="left_menu_corner"></div> 
				    <ul class="menu"> 
				     <li><h3  class="nav1">${Welcome } ${nom }</h3></li>
				     <li><a href="Demo" class="nav4"> ${Product}</a></li>  
				    	
				    	 <li><a href="DemoCommande" class="nav4"> Commande</a></li>
				      <li> <a href="Demo?Language=en_US">US</a></li> 
					  <li><a href="Demo?Language=fr_FR">fr</a></li>  
					  <li><a href="DemoSignUp" class="nav4"> ${Deconnexion}</a></li> 
				  </ul> 
				   <div class="right_menu_corner"></div> 
				   </div> 
				 <div class="center_content" style="float: none;margin: 0 auto;"> 
				   <div class="center_title_bar">${Our_Products }</div> 
				
					   <div class="prod_box"> 
					  <div class="top_prod_box"></div> 
					   <div class="center_prod_box"> 
					  <div class="product_title"><c:out value="${produit.designation}" /> </div> 
					   <div class="product_img"><img style=" height: 126px;width: 158px;" src="style/images/${produit.photo}"/> </a></div> 
					  </div> 
					  <div class="bottom_prod_box"></div> 
					  <form action="Demo" method="post"> 
					    <input type="hidden" name="id" value="${produit.designation}" /> 
					   	<form action="AjoutPanier?idAr=${produit.designation}" method="post"> 
					    <input type="hidden" name="id" value="${produit.designation}" /> 
					   <div class="prod_details_tab">  <input style="background:url('style/images/cart.gif') 100% 0px no-repeat;margin-top: 3px;float: left;width: 20px;" type=submit value="" /> 
					  </form> </div>
					  </form> 
					  </div> 
					  <div class="prod_box" style="width: 360px;"> 
					   <div class="center_prod_box" style="width: 360px;background: none;    background-color: #f7f3f3;border: 1px #f7f3f3 solid;border-radius: 7px;"> 
					  <div class="product_title" style="width: 360px;">
					  		<H2 style="color: grey;font-size: 20px;font-family: monospace;">Designation: </H2> <H4>${produit.designation}</H4></br>
					  		<H2 style="color: grey;font-size: 20px;font-family: monospace;">Categorie:</H2>	 <H4>${cat}</H4></br>
					  		<H2 style="color: grey;font-size: 20px;font-family: monospace;">Prix:</H2>		 <H4>${produit.prix} $</H4></br>
					  		<H2 style="color: grey;font-size: 20px;font-family: monospace;">Stock:</H2>		 <H4>${produit.stock}</H4></br>
					  </div>
					  </div> 
			</div> 
				  </div> 
				  <div class="footer"> 
				  <div class="center_footer">${Fotter }<br /></div> 
				 		  </div> 
				 
				 </body> 
				<%--  <body> 
				 
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
				     <li><h3  class="nav1">${Welcome } ${nom }</h3></li>
				     <li><a href="Product" class="nav4"> Product</a></li>  
				    	 <li><a href="Paniers" class="nav4"> Your Panier </a></li>
				    	 <li><a href="Commande" class="nav4"> Commande</a></li>
				      <li> <a href="Product?Language=en_US">US</a></li> 
					  <li><a href="Product?Language=fr_FR">fr</a></li>  
					  <li><a href="Login" class="nav4"> Log Out</a></li> 
				  </ul> 
				   <div class="right_menu_corner"></div> 
				   </div> 
				 <div class="center_content" style="float: none;margin: 0 auto;"> 
				   <div class="center_title_bar">${Our_Products }</div> 
				
					   <div class="prod_box"> 
					  <div class="top_prod_box"></div> 
					   <div class="center_prod_box"> 
					  <div class="product_title"><c:out value="${produit.designation}" /> </div> 
					   <div class="product_img"><a href="details.html"><img style=" height: 126px;width: 158px;" src="img/a.jpg"/> </a></div> 
					  </div> 
					  <div class="bottom_prod_box"></div> 
					  <form action="Product" method="post"> 
					    <input type="hidden" name="id" value="${produit.designation}" /> 
					   	<!-- <div class="prod_details_tab"> <input style="background:url('images/cart.gif') 100% 0px no-repeat;margin-top: 3px; margin-left: 74px;width: 20px;" type="submit"  /> </div> -->
					  </form> 
					  </div> 
					  <div class="prod_box" style="width: 360px;"> 
					   <div class="center_prod_box" style="width: 360px;background: none;    background-color: #f7f3f3;border: 1px #f7f3f3 solid;border-radius: 7px;"> 
					  <div class="product_title" style="width: 360px;">
					  		<label style="color: blue;font-size: 20px;font-family: monospace;">Designation: </label> <label>Watch</label></br>
					  		<label style="color: blue;font-size: 20px;font-family: monospace;">Categorie:</label>	 <label>Accessoires</label></br>
					  		<label style="color: blue;font-size: 20px;font-family: monospace;">Prix:</label>		 <label>100 dh</label></br>
					  		<label style="color: blue;font-size: 20px;font-family: monospace;">Stock:</label>		 <label>50</label></br>
					  </div>
					  </div> 
			</div> 
				  </div> 
				
				 
				 </body>  --%>
				 </html>