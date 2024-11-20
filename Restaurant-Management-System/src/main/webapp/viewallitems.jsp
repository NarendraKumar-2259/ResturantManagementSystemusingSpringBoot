<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="index.jsp" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>View All Items</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f9;
            color: #333;
                        
        }
        table {
            width: 90%;
            margin: 20px auto;
            border-collapse: collapse;
            background-color: white;
        }
        table, th, td {
            border: 1px solid #ccc;
        }
        th, td {
            padding: 10px;
            text-align: center;
        }
        th {
            background-color: #007BFF;
            color: white;
        }
        a {
            text-decoration: none;
            color: white;
            background-color: #007BFF;
            padding: 5px 10px;
            border-radius: 5px;
            transition: background-color 0.3s;
        }
        a:hover {
            background-color: #0056b3;
        }
        .no-data {
            text-align: center;
            padding: 20px;
            font-size: 18px;
        }
    </style>
</head>
<body>
    <h2 style="text-align: center;">View All Items</h2>
    <table>
        <thead>
            <tr>
                <th>ID</th>
                <th>Name</th>
                <th>Type</th>
                <th>Quantity</th>
                <th>Price</th>
                <th>Update</th>
                <th>Delete</th>
            </tr>
        </thead>
        <tbody>
           		<c:forEach items="${itemslist}" var="itemslist">
          	<tr>
          		<td>${itemslist.getId()}</td>
	            <td>${itemslist.getName()}</td>
	             <td>${itemslist.getType()}</td>
	            <td>${itemslist.getQuantity()}</td>
	            <td>${itemslist.getPrice()}</td>
	            <td><a href='edititem.jsp?id=${itemslist.getId()}&name=${itemslist.getName()}&type=${itemslist.getType()}&quantity=${itemslist.getQuantity()}&price=${itemslist.getPrice()}'>Update</a></td>
	            <td><a href='deletebyid?id=${itemslist.getId()}'>Delete</a></td>
	        </tr>
            </c:forEach> 
        </tbody>
    </table>
</body>
</html>
