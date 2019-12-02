<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="css/style.css" rel="stylesheet">
<title>Login Page</title>
</head>
<body>

<div class = "login-image">
<div class = "login-text">
<h1>Login</h1>
</div>
</div>

<div class = "topbar">
<a href="/">Register</a>
<a href="login">Login</a>
</div>

<div class = "loginForm">
<form method="post" action="processLogin">
<label for="1">Username:</label>
<input type="text" id="1" name="username" required><br>

<label for="2">Password:</label>
<input type="password" id="2" name="password" required><br>

<input type="submit" name="loginButton">
</form>
</div>
</body>
</html>