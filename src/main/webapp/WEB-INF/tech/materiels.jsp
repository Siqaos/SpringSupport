<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html lang="en">
  <head>
 	<title>Page d'acceuil</title>
	<jsp:include page="../includes/techhead.jsp" />
</head>
	
<body>
<jsp:include page="../includes/technav.jsp" />
				
	   <table border=1px>
        <tr>
            <td>ID Materiel</td><td>Num s�rie</td><td>reparationIdReparation</td><td>Afficher</td><td>Supprimer</td>
        </tr>
        <c:forEach items="${materiels}" var="p">
            <tr>
            <td>${p.idMateriel}</td>
            <td>${p.serieMateriel }</td>
            <td>${p.reparationIdReparation}</td>
          <td><a href="<c:url value='/view-${p.idMateriel}-Materiel' />">Afficher</a></td>
            </tr>
        </c:forEach>
    </table>
    <a href="<c:url value='/tech/newMateriel' />">Ajouter du materiel</a>
    <br><br>
	<br>
	<a href="<c:url value='/' />">Index</a>
</body>

</html>