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
        h1 {
           
            margin: 20px 0;
        }
        hr {
            border: 0;
            height: 1px;
            background: orange;
            margin: 20px 0;
        }
        a {
            text-decoration: none;
            color: white;
            background-color: orange;
            padding: 10px 20px;
            border-radius: 5px;
            font-size: 18px;
            transition: background-color 0.3s;
        }
        a:hover {
            background-color: #cc8400;
        }
        body, html {
            height: 100%;
        }
        center {
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            height: 100%;
        }
    </style>
</head>
<body>
    <center>
        <h1>Restaurant Management System</h1>
        <hr>
        <h1><a href='additem.jsp'>Add Item</a></h1>
        <h1><a href='searchitem.jsp'>Search Item</a></h1>
        <h1><a href='findall'>View all items</a></h1>
    </center>
</body>
</html>
