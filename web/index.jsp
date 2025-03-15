<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.io.*, java.util.*" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>School Trip Details</title>
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
            max-width: 800px;
            margin: auto;
            border-radius: 5px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
        }
        table {
            width: 100%;
            border-collapse: collapse;
        }
        th, td {
            border: 1px solid #ccc;
            padding: 8px;
            text-align: left;
        }
        th {
            background: #28a745;
            color: white;
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
        <h2>School Trip Details</h2>
        
        <table>
            <tr>
                <th>Department</th>
                <th>Destination</th>
                <th>Days</th>
                <th>Description</th>
                <th>Special Requests</th>
                <th>Total Students</th>
            </tr>
            <% 
                String filePath = application.getRealPath("/data.txt");
                File file = new File(filePath);
                if (file.exists()) {
                    BufferedReader br = new BufferedReader(new FileReader(file));
                    String line;
                    while ((line = br.readLine()) != null) {
                        String[] details = line.split(",");
                        if (details.length == 6) {
            %>
            <tr>
                <td><%= details[0] %></td>
                <td><%= details[1] %></td>
                <td><%= details[2] %></td>
                <td><%= details[3] %></td>
                <td><%= details[4] %></td>
                <td><%= details[5] %></td>
            </tr>
            <% 
                        }
                    }
                    br.close();
                }
            %>
        </table>
        <a href="book.jsp" style="margin-bottom: 10px">Book trip</a></br></br>
    </div>
</body>
</html>
