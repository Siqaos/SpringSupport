<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 
<html>
 
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Ajout Ordinateur</title>
 
<style>
 
    .error {
        color: #ff0000;
    }
</style>
 
</head>
 
<body>     
    <form:form method="POST" modelAttribute="ordinateur">
        <form:input type="hidden" path="idMateriel" id="idMateriel"/>
        <table>
            <tr>
                <td><label for="espaceDisque">Espace Disque: </label> </td>
                <td><form:input path="espaceDisque" id="espaceDisque"/></td>
                <td><form:errors path="espaceDisque" cssClass="error"/></td>
            </tr>
         
            <tr>
                <td><label for="processeur">Processeur: </label> </td>
                <td><form:input path="processeur" id="processeur"/></td>
                <td><form:errors path="processeur" cssClass="error"/></td>
            </tr>
            <tr>
                <td><label for="ram">RAM: </label> </td>
                <td><form:input path="ram" id="ram"/></td>
                <td><form:errors path="ram" cssClass="error"/></td>
            </tr>
               
            <tr>
                <td><label for="systemeExploitation">Systeme Exploitation: </label> </td>
                <td><form:input path="systemeExploitation" id="systemeExploitation"/></td>
                <td><form:errors path="systemeExploitation" cssClass="error"/></td>
            </tr>
			<tr>
                <td><label for="serieMateriel">Num�ro de s�rie: </label> </td>
                <td><form:input path="serieMateriel" id="serieMateriel"/></td>
                <td><form:errors path="serieMateriel" cssClass="error"/></td>
            </tr>
            <tr>
                <td><label for="idMarque">Marque ordinateur : </label> </td>
                	<form:select path="marque">
               <c:forEach items="${marques}" var="p">
               		<form:option value="${p.idMarque}">${p.nomMarque}</form:option>
               </c:forEach>
               </form:select>
            	</tr>
            
            <tr>
                <td colspan="3">
                    <c:choose>
                        <c:when test="${edit}">
                            <input type="submit" value="Update"/>
                        </c:when>
                        <c:otherwise>
                            <input type="submit" value="Register"/>
                        </c:otherwise>
                    </c:choose>
                </td>
            </tr>
        </table>
    </form:form>

    <br/>
    <br/>
    Revenir <a href="<c:url value='/ordinateurs' />">Liste de tous les ordinateurs</a>
    	<br>
	<a href="<c:url value='/' />">Index</a>
</body>
</html>