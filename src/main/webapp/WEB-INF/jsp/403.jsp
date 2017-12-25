<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<body>
	<h1>HTTP Status 403 - Acc�s refus�</h1>

	<c:choose>
		<c:when test="${empty username}">
		  <h2>D�sol�, vous n'avez pas le droit d'acceder � cette page!</h2>
		</c:when>
		<c:otherwise>
		  <h2>D�sol� ${username} <br/>
                    Vous n'avez pas le droit d'acceder � cette page!</h2>
		</c:otherwise>
	</c:choose>

</body>
</html>