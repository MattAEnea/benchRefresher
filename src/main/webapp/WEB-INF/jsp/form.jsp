<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="css/style.css" rel="stylesheet">
<script src="js/validation.js"></script>
<title>Register Account</title>
</head>
<body>

<div class = "hero-image">
<div class = "hero-text">
<h1>Register Account</h1>
</div>
</div>

<div class = "topbar">
<a href="/">Register</a>
<a href="login">Login</a>
</div>

<div class = "infoForm">
<form name="form1" method="post" onsubmit="return validateForm(this);" action="openAccount">
<label for="11">Username:</label> 
<input type="text" id="11" name="username" required><br>

<label for="22">Password:</label> 
<input type="password" id="22" name="password" required><br>

<label for="33">Confirm Password:</label> 
<input type="password" id="33" name="confirmPassword" required><br>

<label for="1">First Name:</label> 
<input type="text" id="1" name="firstName" required><br> 

<label for="2">Last Name: </label> 
<input type="text" id="2" name="lastName" required><br> 

<label for="3">Date of Birth: </label> 
<input type="text" id="3" name="dob" required><br> 

<label for="4">SSN: </label> 
<input type="text" id="4" name="ssn" required><br> 

<label for="5">Email:</label> 
<input type="text" id="5" name="email" required><br> 

<label for="6">Phone: </label> 
<input type="text" id="6" name="phone" required><br> 

<label for="7">Home Address: </label> 
<input type="text" id="7" name="homeAddress" required><br> 

<label for="8">Mailing Address:</label> 
<input type="text" id="8" name="mailingAddress" required><br> 

<label for="9">Account Type: </label> 
<input type="text" id="9" name="accountType" list="l1"
 required pattern="[Ss]avings|[Cc]hecking|[Cc]d" ><br> 
 
<datalist id="l1">
	<option>Savings</option>
	<option>Checking</option>
	<option>Cd</option>
</datalist>

<label for="10">Minimum Balance: </label> 
<input type="text" id="10" name="balance" required><br> 

<input type="submit" name="submit">
</form>
</div>

</body>
</html>