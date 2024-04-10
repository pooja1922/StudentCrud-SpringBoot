<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Registration Page</title>

    <style>
        body
         {
            font-family: Arial, sans-serif;
            background: url("https://www.itl.cat/pngfile/big/230-2302911_background-images-purple-color.jpg") center center fixed;
            background-size: cover;
            margin: 0;
            padding: 0;
            display: flex;
            align-items: center;
            justify-content: center;
            height: 100vh;
        }

        h1 {
            margin-left:120px;
            color:black;
            
        }

        form
         {
             height:70%;
            width: 37%;
            margin: 20px auto;
            background-color: rgba(255, 255, 255, 0.1); /* Transparent white background for the form */
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

      input 
      {
    display: block;
    width: 80%;
    padding: 10px 0;
    margin: 20px auto;
    box-sizing: border-box;
    position: relative;
    background: none;
    text-align:center;
    outline: none;
    
}
input::placeholder
{
color:black;
}
input::before 
{
    content: "";
    position: absolute;
    bottom: 0;
    left: 0;
    width: 100%;
    height: 2px; /* Adjust the height of the underline */
    background-color: #6b5b95; /* Color of the underline */
    transition: height 0.3s ease-in-out; /* Smooth transition for the underline */
}

input:focus::before {
    height: 3px; /* Adjust the height when the input is focused */
}


        input[type="submit"]
         {
             margin-left:150px;
            font-size:20px;
            width: 35%;
            background-color: purple;
            color: white;
            cursor: pointer;
        }

        input[type="submit"]:hover 
        {
            background-color: green;
        }
    </style>
</head>
<body>
    
    <form action="register" method="post">
    <h1>Registration Page</h1>
        
        <input type="text" name="rno" placeholder="Enter Roll no">

        
        <input type="text" name="name" placeholder="Enter Username">

        
        <input type="text" name="marks" placeholder="Enter Marks">

        <input type="text" name="mono" placeholder="Enter Mobile no">

        
        <input type="text" name="address" placeholder="Enter Address">

        <input type="submit" value="REGISTER">
    </form>
</body>
</html>
