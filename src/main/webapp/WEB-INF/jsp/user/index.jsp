<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
	<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>


<head>
 	<title>Index</title>
    <meta charset="utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="description" content=""/>
    <meta name="viewport" content="width=device-width"/>
    <base href="/"/>
	<style type="text/css">
		body {
	 		 padding-top: 40px;
	 		 
			}		li {
			padding-right : 30px;
		}
	</style>
    <link rel='stylesheet' href='https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css'>
    <script type="text/javascript" src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/js/bootstrap.min.js"></script>
</head>

     

<body>
<nav class="navbar navbar-expand-md navbar-dark fixed-top bg-dark nav-tabs nav-justified">
	<ul class="navbar-nav mr-auto">
		<li><a href="/user/index" class="nav-link">Index</a></li>
		<li><a href="/user/ticket" class="nav-link">Tickets</a></li>
	</ul>
	<c:choose >
		<c:when test="${not empty username}">
    		<ul class="nav justify-content-end">
        		<li class="navbar-text" style="color:white;">${username }  </li>
        		<li><a href="logout" class="btn btn-primary btn-danger">Se déconnecter</a></li>
        	</ul>
	    </c:when>
		<c:otherwise>
			<ul class="nav justify-content-end">
				<li><a href="login" id="login">Connexion </a></li>
				<li><a href="inscription" id="inscription">Inscription</a></li>
			</ul>
		</c:otherwise>
	</c:choose>
</nav>
	<br><br>
<table width="100%" border="1">
  <tbody>
    <tr>
      <td><p>&nbsp;</p>
        <h1>Site de support informatique pour la société X.</h1>
        <p class="description">L'application permet de remonter l'information vers le département informatique le plus rapidement possible, en permettant à l'utilisateurs d'avoir accès a un suivi des tickets.</p>
        <p>Plus de détails pour l'utilisation du site <a href="howto.html">ici</a>.</p>
      <p>Pour s'inscrire cliquez <a href="inscription">ici</a>, la connexion c'est par <a href="/login">ici</a>.</p>
      <p>Cordialement, le département informatique.</p></td>
    </tr>
  </tbody>
</table>

<table width="100%" border="1">
  <tbody>
    <tr>
      <td> © 2017 Département des Systèmes de l'Information</td>
    </tr>
  </tbody>
</table>

</body>
</html>