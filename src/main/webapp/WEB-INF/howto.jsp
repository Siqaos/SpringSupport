<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
	<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>


<head>
 	<title>Page d'acceuil</title>
	<jsp:include page="includes/head.jsp" />
</head>
<body>
<jsp:include page="includes/nav.jsp" />
	<br><br>
<table>
  <tbody>
    <tr>
      <td><p>&nbsp;</p>
        <h1>Aide</h1>
        <p class="description">L'application permet de remonter l'information vers le département informatique le plus rapidement possible, en permettant à l'utilisateurs d'avoir accès a un suivi des tickets.</p>
        <p>Plus de détails pour l'utilisation du site <a href="howto.html">ici</a>.</p>
      <p>Pour s'inscrire cliquez <a href="inscription">ici</a>, la connexion c'est par <a href="/login">ici</a>.</p>
      <p>Cordialement, le département informatique.</p></td>
    </tr>
  </tbody>
</table>

<table>
  <tbody>
    <tr>
      <td> © 2017 Département des Systèmes de l'Information</td>
    </tr>
  </tbody>
</table>

</body>
</html>