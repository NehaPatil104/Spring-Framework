<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
	<title>Customer Confirmation Form</title>
</head>
<body>
	<h1>Customer Confirmation</h1>
	
	<p>The customer is confirmed: ${customer.firstName} ${customer.lastName}</p>
	
	<p>Free Passes : <i> ${customer.freePasses} </i></p>
	
	<p>Postal Code : <i> ${customer.postalCode} </i></p>
</body>
</html>