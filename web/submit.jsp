<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.io.*" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Submission Successful</title>
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
            text-align: center;
        }
        a {
            display: inline-block;
            margin-top: 15px;
            padding: 10px;
            background: #28a745;
            color: white;
            text-decoration: none;
            border-radius: 4px;
        }
        a:hover {
            background: #218838;
        }
    </style>
</head>
<body>
    <%
        String department = request.getParameter("department");
        String destination = request.getParameter("destination");
        String days = request.getParameter("days");
        String description = request.getParameter("description");
        String specialRequest = request.getParameter("special_request");
        String totalStudents = request.getParameter("total_students");

        // Define file path
        String filePath = application.getRealPath("/data.txt");
        File file = new File(filePath);

        // Write data to file
        FileWriter fw = new FileWriter(file, true);
        BufferedWriter bw = new BufferedWriter(fw);
        PrintWriter outFile = new PrintWriter(bw);

        outFile.println(department + "," + destination + "," + days + "," + description + "," + specialRequest + "," + totalStudents);

        outFile.close();
    %>
    <div class="container">
        <h2>Submission Successful</h2>
        <p>Your trip details have been saved successfully.</p>
        <a href="index.jsp">View All Trips</a>
    </div>
</body>
</html>
