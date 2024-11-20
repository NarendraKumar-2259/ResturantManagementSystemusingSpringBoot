<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Restaurant Management System</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f9;
            color: #333;
        }
        header {
            background-color: #007BFF;
            color: white;
            padding: 10px 0;
            text-align: center;
            margin-bottom: 20px;
        }
        h1 {
            margin: 10px 0;
        }
        nav {
            text-align: center;
            margin-bottom: 20px;
        }
        nav a {
            text-decoration: none;
            color: white;
            background-color: #007BFF;
            padding: 10px 20px;
            border-radius: 5px;
            margin: 0 10px;
            font-size: 16px;
            transition: background-color 0.3s;
        }
        nav a:hover {
            background-color: #0056b3;
        }
        form {
            width: 300px;
            margin: 0 auto;
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
    <header>
        <h1>Restaurant Management System</h1>
    </header>
    <nav>
        <a href="#addItemSection">Add Item</a>
        <a href="searchitem.jsp">Search Item</a>
        <a href="findall">View All Items</a>
    </nav>

    <section id="addItemSection">
        <h2 style="text-align: center;">Add Item</h2>
        <form action="save">
        	<% if(request.getAttribute("response") != null) { %>
    			<tr>
        			<td><%= request.getAttribute("response") %></td>
    			</tr>
				<% } %>

            <div>
                <label for="name">Name:</label>
                <input type="text" id="name" name="name" required>
            </div>
            <div>
                <label for="type">Type:</label>
                <input type="text" id="type" name="type" required>
            </div>
            <div>
                <label for="quantity">Quantity:</label>
                <input type="text" id="quantity" name="quantity" required>
            </div>
            <div>
                <label for="price">Price:</label>
                <input type="text" id="price" name="price" required>
            </div>
            <div>
                <input type="submit" value="Submit">
            </div>
        </form>
    </section>
</body>
</html>
