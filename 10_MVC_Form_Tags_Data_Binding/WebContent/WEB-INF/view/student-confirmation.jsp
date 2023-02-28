<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
	<title>Student Confirmation Form</title>
</head>
<body>
	
	<h1>The student is confirmed: ${student.firstName} ${student.lastName}</h1>
	
	<br><br>
	<p> Country: ${student.country}</p>
	<br><br>
	<p> Favourite Language: ${student.favouriteLanguage}</p>
	<br><br>
	
	<p>Operating Systems: </p>
	<ul>
		<c:forEach var="temp" items="${student.operatingSystems}">
			<li>${temp}</li>
		</c:forEach>
	</ul>
</body>
</html>