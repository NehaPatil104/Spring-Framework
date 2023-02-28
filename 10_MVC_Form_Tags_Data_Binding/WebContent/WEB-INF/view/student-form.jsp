<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html>
<head>
	<title>Student Registration Form</title>
</head>
<body>
	
	<form:form action="processForm" modelAttribute="student">
		
		<p>First Name: <form:input path="firstName" /></p>
		<br><br>
		<p>Last Name: <form:input path="lastName" /></p>
		<br><br>
		
		<p>Country: 
			<form:select path="country">
				<form:options items="${student.countryOptions}" />
				<!--  
				<form:option value="France" label="France" />
				<form:option value="India" label="India" />
				<form:option value="U.S.A" label="U.S.A" />
				-->
			</form:select>
		</p>
		<br><br>
		
		<p>Favourite Language:</p>
		<p>Java<form:radiobutton path="favouriteLanguage" value="Java"/></p>
		<p>C++<form:radiobutton path="favouriteLanguage" value="C++"/></p>
		<p>C<form:radiobutton path="favouriteLanguage" value="C"/></p>
		<p>Python<form:radiobutton path="favouriteLanguage" value="Python"/></p>
		
		<br><br>
		
		<p>Operating Systems:</p>
		<p>Linux <form:checkbox path="operatingSystems" value="Linux" /></p>
		<p>Windows <form:checkbox path="operatingSystems" value="Windows" /></p>
		<p>MAC OS <form:checkbox path="operatingSystems" value="MAC OS" /></p>
		<p>Ubuntu <form:checkbox path="operatingSystems" value="Ubuntu" /></p>
		
		<input type="submit" value="Submit" />
 		
	</form:form>
	
</body>
</html>