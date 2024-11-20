<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="index.jsp" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Edit Item</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f9;
            color: #333;
            background-image: url("");
        }
        form {
            width: 400px;
            margin: 50px auto;
            padding: 20px;
            border: 1px solid #ccc;
            border-radius: 10px;
            background-color: white;
        }
        form div {
            margin-bottom: 15px;
        }
        label {
            display: block;
            font-weight: bold;
            margin-bottom: 5px;
        }
        input[type="text"], input[type="number"] {
            width: 100%;
            padding: 8px;
            box-sizing: border-box;
        }
        input[type="submit"] {
            background-color: #007BFF;
            color: white;
            border: none;
            padding: 10px;
            border-radius: 5px;
            cursor: pointer;
        }
        input[type="submit"]:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
    <h2 style="text-align: center;">Edit Item</h2>
    <form action="edititem">
       
        <input type="hidden" name="id" value="<%=request.getParameter("id") %>">
        <div>
            <label for="name">Name:</label>
            <input type="text" id="name" name="name" value="<%=request.getParameter("name")%>">
        </div>
        <div>
            <label for="type">Type:</label>
            <input type="text" id="type" name="type" value="<%=request.getParameter("type") %>">
        </div>
        <div>
            <label for="quantity">Quantity:</label>
            <input type="number" id="quantity" name="quantity" value="<%=request.getParameter("quantity")%>">
        </div>
        <div>
            <label for="price">Price:</label>
            <input type="number" id="price" name="price" value="<%=request.getParameter("price")%>" step="0.01">
        </div>
        <div>
            <input type="submit" value="Update Item">
        </div>
    </form>
</body>
</html>
