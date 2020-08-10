<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.util.*" %>
	
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
	<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
			
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
    <style>.chartPos{
	background:orange;
}</style>
 
</head> 
			<body> 
				   <div class="navbar navbar-inverse navbar-fixed-top">
	<div class="topNav">
		<div class="container">
			<div class="alignR">
				
				<!-- <a href="index.html"> <span class="icon-home"></span> Home</a> 
				<a href="RegisterJSP.jsp"><span class="icon-edit"></span> Free Register </a> 
				<a href="LoginJSP.jsp"><span class="icon-shopping-cart"></span> Login </a>
				<a href="cart.html"><span class="icon-shopping-cart"></span> 2 Item(s) </a>
				 -->
			</div>
		</div>
	</div>
</div>

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
	<div class="row">
<div id="sidebar" class="span3">


				 <div id=""> 
				  
				  <div id=""> 
				   <div id="menu_tab"> 
				     <div class="left_menu_corner"></div> 
				    <ul class="menu"> 
				    	 <li><h3 class="nav1" style="color:grey">${nom }</h3></li>
				    	 <li><a href="Product" class="nav3"> ${Product}</a></li>  
				    	 <li><a href="Paniers" class="nav4"> ${Panier }</a></li>
				    	 <li><a href="Commande" class="nav4"> Commande</a></li>
					  	<li><a href="Login" class="nav6"> ${Deconnexion}</a></li> 
				  </ul> 
				   <div class="right_menu_corner"></div> 
				   </div> 
				  <div class="left_content"> 
				   
				  <ul class="left_menu"> 
				  <c:forEach items="${listt}" var="cu">
				 	 <li class="odd"><a href="Product?id_cat=${cu.cat}">
				 	 	<c:out value="${cu.cat}" />
				 	 </a></li> 
				 </c:forEach> 
				
				  </ul>   
				   
	 </div> 
	 
	 <c:forEach items="${Produit}" var="produit"> 
	
	</c:forEach>
		 <div class="center_content"> 
				   
 				<c:forEach items="${Produit}" var="produit">
 			   <div class="prod_box"> 
					  <div class="top_prod_box"></div> 
					   <div class="center_prod_box"> 
					  <div class="product_title"><a href="details.html"><c:out value="${produit.designation}" /> </a></div> 
					     <div class="product_img"><img style=" height: 126px;width: 158px;" src="style/img/${produit.photo}"/> </a></div> 
					   <div class="prod_price"><span class="reduce"><c:out value="${produit.prix}" /> DH </span></div> 
					  </div> 
					  <div class="bottom_prod_box"></div> 
					  <form action="Product" method="post"> 
					    <input type="hidden" name="id" value="${produit.codeArticle}" /> 
					   <div class="prod_details_tab">  <input style="background:url('images/favs.gif') 100% 0px no-repeat;margin-top: 3px;float: left;width: 20px;" type=submit value="" /> 
					  </form> 
						 <a href="Details?id_detail=${produit.codeArticle}" class="prod_details">details</a> </div> 
					  </div> 
				 </c:forEach> 
				  </div> 
			 
				 </div>
				 
				 </body> 
				 </html>