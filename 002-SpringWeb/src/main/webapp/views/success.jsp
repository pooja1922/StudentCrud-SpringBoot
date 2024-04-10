<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.*"%>
<%@ page import="com.model.Student"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Student Information</title>
    <style>
        body {
        
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
            background-color: black;
        }

        h1 {
            color: white;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }

        th, td 
        {    color:white;
            border: 1px solid #ddd;
            padding: 8px;
            text-align: left;
        }

        th {
            background-color: #4CAF50;
            color: white;
        }

       

        div {
            margin-top: 20px;
        }

         button {
      background: linear-gradient(to right, #3498db, #2c3e50); /* Gradient background color */
      color: #fff;
      border: none;
      padding: 10px 20px;
      margin: 5px;
      border-radius: 5px;
      cursor: pointer;
      font-size: 16px;
      transition: background 0.3s ease; /* Smooth transition on hover */
    }

    button:hover {
      background: linear-gradient(to right, #2c3e50, #3498db); /* Reverse gradient on hover */
    }
    </style>
    <script type="text/javascript">
        function insertData() {
            alert("Inserting data method called");
            document.myform.action = "reg";
        }

        function updateData()
        {
        	let radio1 = document.getElementById('rno');
       	   if(radio1.checked)
       	   {
       		   alert("You are updating data");
       		   document.myform.action="updateData";
       	   }
       	   else
       		   {
       		   alert("Please Select a Row");
       		   document.myform.action="relogin";
       		   }
        }

        function deleteData()
    {
            
            let radio1 = document.getElementById('rno');
      	   if(radio1.checked)
      	   {
      		   alert("You are Deleting data");
      		   document.myform.action="deleteData";
      	   }
      	   else
      		   {
      		   alert("Please Select a Row");
      		   document.myform.action="relogin";
      		   }
        }
    </script>
</head>
<body>
    <% List<Student> sList = (List<Student>) request.getAttribute("data"); %>

    <div>
        <h1>Login Successfully</h1>

        <form name="myform">
            <table border="1" cellspacing="0" cellpadding="5">
                <thead>
                    <tr>
                        <th>Select</th>
                        <th>Roll-No</th>
                        <th>Name</th>
                        <th>Marks</th>
                        <th>Mobile-No</th>
                        <th>Address</th>
                    </tr>
                </thead>
                <tbody>
                    <% for (Student stu : sList) { %>
                        <tr>
                            <td><input type="radio" name="rno" value="<%=stu.getRno()%>" id="rno"></td>
                            <td><%=stu.getRno()%></td>
                            <td><%=stu.getName()%></td>
                            <td><%=stu.getMarks()%></td>
                            <td><%=stu.getMono()%></td>
                            <td><%=stu.getAddress()%></td>
                        </tr>
                    <% } %>
                </tbody>
            </table>
            <div>
                <button onclick="insertData()">Insert</button>
                <button onclick="updateData()">Update</button>
                <button onclick="deleteData()">Delete</button>
            </div>
        </form>
    </div>
</body>
</html>
