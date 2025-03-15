<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>School Trip Registration</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 20px;
            padding: 20px;
            background-color: #f4f4f4;
        }
        .container {
            background: white;
            padding: 20px;
            max-width: 400px;
            margin: auto;
            border-radius: 5px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
        }
        input, textarea {
            width: 100%;
            padding: 8px;
            margin: 5px 0;
            border: 1px solid #ccc;
            border-radius: 4px;
        }
        button {
            background: #28a745;
            color: white;
            padding: 10px;
            border: none;
            cursor: pointer;
            width: 100%;
        }
        button:hover {
            background: #218838;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>School Trip Registration Form</h2>
        <form action="submit.jsp" method="post">
            <label for="department">Department Name:</label>
            <input type="text" id="department" name="department" required>
            
            <label for="destination">Destination:</label>
            <input type="text" id="destination" name="destination" required>
            
            <label for="days">Number of Days:</label>
            <input type="number" id="days" name="days" required>
            
            <label for="description">Trip Description:</label>
            <textarea id="description" name="description" rows="4" required></textarea>
            
            <label for="special_request">Special Requests:</label>
            <textarea id="special_request" name="special_request" rows="4"></textarea>
            
            <label for="total_students">Total Students:</label>
            <input type="number" id="total_students" name="total_students" required>
            
            <button type="submit">Submit</button>
        </form>
    </div>
</body>
</html>
