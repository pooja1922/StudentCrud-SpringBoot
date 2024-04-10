<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="com.model.Student"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Page</title>

<style>
body
 {
	font-family: Arial, sans-serif;
	background:url("https://t3.ftcdn.net/jpg/06/15/44/82/360_F_615448294_UrLouiKATr5wZCXw7i0781bT1Q3Yz1mz.jpg");
	background-repeat:no-repeat;
	background-size:cover;
	margin: 0;
	padding: 0;
}

h1 
{
	color:white;
	margin-left: 460px;
}

form 
{
	width: 35%;
	margin: 20px auto;
    background-color: rgba(0, 0, 0, 0.3); 
	padding: 20px;
	border-radius: 5px;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
	
	
	
}

label 
{
     color:white;
     font-size:bold;
	display: block;
	margin: 10px 0;
}

input
 {
  
  background-color: rgba(128, 128, 128, 0.7);
	width:100%;
	padding: 10px;
	margin-bottom: 15px;
	box-sizing: border-box;
}

input[type="submit"] {
    border-radius: 20px;
    width: 30%;
    background-color: rgba(165, 42, 42, 0.5); 
    color: #fff;
    cursor: pointer;
    margin-left: 180px;
}

input[type="submit"]:hover {
    background-color: rgba(0, 0, 0, 0.5); 
    color: white;
}

</style>
</head>
<body>
	<%
		Student stu = (Student) request.getAttribute("stu");
	%>
	<h1>Welcome to the update page</h1>
	<form action="updateStudent" method="post">
		<label>Enter Roll no:</label> 
		<input type="text" name="rno" value="<%=stu.getRno()%>" readonly="readonly">
		
			 <label>Enter New Username:</label> 
			 <input type="text" name="name" value="<%=stu.getName()%>">

		<label>Enter New Marks:</label>
		 <input type="text" name="marks" value="<%=stu.getMarks()%>"> 
		 
			<label>Enter New Mobileno:</label>
			 <input type="text" name="mono" value="<%=stu.getMono()%>">

		<label>Enter New Address:</label>
		 <input type="text" name="address" value="<%=stu.getAddress()%>"> 
		 
		<input type="submit" value="Update">
	</form>

</body>
</html>
