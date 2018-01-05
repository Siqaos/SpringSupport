<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html lang="en">
  <head>
 	<title>NewsLetter</title>
	<jsp:include page="../includes/adminhead.jsp" />
</head>
<body>
<jsp:include page="../includes/adminnav.jsp" />

<br>
	   <table class="table-hover table-dark table-striped mx-2" style="width:100%">
        <tr>
            <td>Nom Taches</td><td>Attribu� �</td><td>Description</td><td>Fait</td><td>Editer</td><td>Supprimer</td>
        </tr>
        <c:forEach items="${taches}" var="p">
            <tr>
            <td>${p.nomTaches}</td>
            <td>${p.user.username}</td>
            <td>${p.descTaches}</td>
            <td><c:if test="${p.faitTaches ==1}">Oui</c:if><c:if test="${p.faitTaches ==0}">Non</c:if></td>
          <td><a href="<c:url value='/edit-${p.idTaches}-Tache' />">edit</a></td>
            <td><a href="<c:url value='/delete-${p.idTaches}-Tache' />">delete</a></td>
            </tr>
        </c:forEach>
    </table>

    <br><br>
	<p><a href="<c:url value='/newTaches' />">Ajouter une nouvelle tache</a></p>

	<br>
	
</body>

</html>