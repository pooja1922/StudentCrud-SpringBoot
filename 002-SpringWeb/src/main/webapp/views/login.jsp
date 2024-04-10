<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login Form</title>
<style>
body 
{
	font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
	background-color: #f5f5f5;
	margin: 0;
	padding: 0;
	display: flex;
	justify-content: center;
	align-items: center;
	height: 100vh;
	background-color: black;
}

h1 {
	color:white;
	text-align: center;
}

form 
{
	width: 300px;
	background: #fff;
	padding: 20px;
	border-radius: 10px;
	box-shadow: 0 0 20px rgba(0, 0, 0, 0.2);
	background-color: black;
	border: 2px solid white;
	transform: perspective(700px) rotateX(15deg) rotateY(-5deg);
	/* Increased box shadow for depth */
}

label
{
	display: block;
	margin-bottom: 10px;
	color:white;
}

input {
	width: 100%;
	padding: 12px; /* Increased padding for better input spacing */
	margin-bottom: 15px;
	box-sizing: border-box;
	border: 1px solid #ddd;
	border-radius: 5px;
}

input[type="submit"] {
	background-color: #3498db;
	color: #fff;
	cursor: pointer;
	transition: background-color 0.3s;
}

input[type="submit"]:hover {
	background-color: #2980b9;
}

/* Additional decorative elements */
form::before {
	content: '\2022 \2022 \2022'; /* Three bullet points */
	font-size: 20px;
	color: #3498db;
	display: block;
	margin-bottom: 15px;
}

form::after {
	content: '';
	height: 2px;
	background-color: #3498db;
	display: block;
	margin: 20px 0;
}
</style>
</head>
<body>

	<form action="log" method="post">
		<h1>Login Form</h1>
		<label>Username:</label> <input type="text" name="uname"> <label>Password:</label>
		<input type="password" name="pass"> <input type="submit" value="Submit">
	</form>
</body>
</html>
