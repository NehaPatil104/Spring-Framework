<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
	<title>Customer Registration Form</title>
	<style>
		.error{
			color:red;
		}
	</style>
</head>
<body>
	<h1><i>Fill out the form. Asterisk (*) means required.</i></h1>
	<form:form action="processForm" modelAttribute="customer">
		
		<p>First Name: </p>
		<form:input type="text" path="firstName" />
		
		<br><br>
		
		<p>Last Name: </p>
		<form:input type="text" path="lastName" />
		<form:errors path="lastName" cssClass="error" />
		<br><br>
		
		<p>Free Passes: </p>
		<form:input path="freePasses" />
		<form:errors path="freePasses" cssClass="error" />
		<br><br>
		
		<p>Postal Code: </p>
		<form:input path="postalCode" />
		<form:errors path="postalCode" cssClass="error" />
		
		
		
		<input type="submit" value="Submit" />
		
	</form:form>
</body>
</html>