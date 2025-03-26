<%@ page import="java.util.List" %>
<%@ page import="types.Trip" %>
<%@ page import="dao.Trips" %>
<%@ page import="java.sql.SQLException" %>
<%@ page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>All Trips</title>
        <style>
            table {
                width: 100%;
                border-collapse: collapse;
            }
            table, th, td {
                border: 1px solid black;
                padding: 8px;
                text-align: left;
            }
            th {
                background-color: #f2f2f2;
            }
        </style>
    </head>
    <body>
        <h1>List of Trips</h1>
        
        <table>
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Department</th>
                    <th>Destination</th>
                    <th>Days</th>
                    <th>Description</th>
                    <th>Special Request</th>
                    <th>Total Students</th>
                    <th>Created At</th>
                </tr>
            </thead>
            <tbody>
                <%
                    try {
                        List<Trip> trips = Trips.getAllTrips();
                        for (Trip trip : trips) {
                %>
                <tr>
                    <td><%= trip.getId() %></td>
                    <td><%= trip.getDepartment() %></td>
                    <td><%= trip.getDestination() %></td>
                    <td><%= trip.getDays() %></td>
                    <td><%= trip.getDescription() %></td>
                    <td><%= trip.getSpecialRequest() %></td>
                    <td><%= trip.getTotalStudent() %></td>
                    <td><%= trip.getCreatedAt() %></td>
                </tr>
                <%
                        }
                    } catch (SQLException e) {
                        out.println("<tr><td colspan='8'>Error fetching trips: " + e.getMessage() + "</td></tr>");
                    }
                %>
            </tbody>
        </table>
    </body>
</html>
