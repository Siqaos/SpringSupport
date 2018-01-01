<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 
<html>
 
 <head>
<title>${ticket.titreTicket}</title>
<jsp:include page="../includes/userhead.jsp" />
</head>
 
<body>
 <jsp:include page="../includes/usernav.jsp" />
	<div class="form-group">
    	<form:form method="POST" modelAttribute="ticket">
    		<div class="form-control">
			<form:input path="titreTicket" id="titreTicket" class="form-control" placeholder="Titre" />
	        <form:errors path="titreTicket" cssClass="error"/>
	        </div>
	        
	        <div class="form-control" >
	        <form:select path="typeTicket" class="form-control" required="true">
	        		<option value="" disabled="true" selected="true">Type de ticket</option>      
	           		<form:option value="M" >Materiel</form:option>
	           		<form:option value="L">Logiciel</form:option>
            </form:select>
            </div>
            
			<div class="form-control">
	        <form:textarea path="contTicket" id="contTicket" rows="5" class="form-control" placeholder="Contenu du ticket"/>
	        <form:errors path="contTicket" cssClass="error"/>
	        </div>
	        <div class="form-control ">
	        <input type="submit" value="Envoyer" class="btn btn-success"/>
	        </div>
	        
        </form:form>
    </div>
    <br/>
    Revenir <a href="<c:url value='/user/ticket' />">Liste de tous les tickets</a>
</body>
</html>