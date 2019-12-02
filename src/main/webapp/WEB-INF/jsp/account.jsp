<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="css/style.css" rel="stylesheet">
<script>
var balanceS = ${user.getBalanceS()};
var balanceC = ${user.getBalanceC()};
var balanceCD = ${user.getBalanceCD()};
</script>
<script src="js/validation.js"></script>
<title>Account</title>
</head>
<body>

<div class = "account-image">
<div class = "account-text">
<h1>Account Opened</h1>
</div>
</div>

<div class = "topbar">
<a href="/">Register</a>
<a href="login">Login</a>
</div>

<div class="accountInfo">
<label>First Name: ${user.getFirstName()} </label> <br>

<label>Last Name: ${user.getLastName()}</label> <br>

<label>Date of Birth: ${user.getDob()}</label> <br>

<label>SSN: ${user.getSsn()}</label> <br>

<label>Email: ${user.getEmail()}</label> <br>

<label>Phone: ${user.getPhone()}</label> <br>

<label>Home Address: ${user.getHomeAddress()}</label> <br>

<label>Mailing Address: ${user.getMailingAddress()}</label> <br>

<label>Savings Balance: ${user.getBalanceS()}</label> <br>

<label>Checking Balance: ${user.getBalanceC()}</label> <br>

<label>CD Balance: ${user.getBalanceCD()}</label> <br>

<div class = "accountBalance">
<form name="form2" method="post" onsubmit="return validateAmount(this);" action="changeBalance">
<label for="1">Account: </label>
<input type="text" id="1" name="accountType" list="l1"
 required pattern="[Ss]avings|[Cc]hecking|[Cc]d" ><br> 
<datalist id="l1">
	<option>Savings</option>
	<option>Checking</option>
	<option>Cd</option>
</datalist>

<label for="2">Withdraw or Deposit:</label>
<input type="text" id="2" name="action" list="l2" 
required pattern="Withdraw|Deposit"><br>
<datalist id="l2">
<option>Withdraw</option>
<option>Deposit</option>
</datalist>

<label for="3">Amount:</label>
<input type="number" id="3" name="amount" required><br>
<input type="submit" name="submit">
</form>
</div>
</div>
</body>
</html>