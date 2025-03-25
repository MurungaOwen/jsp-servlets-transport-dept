package dao;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import db.DatabaseConnection;
import types.Trip;
import java.time.LocalDateTime;

public class TripDAO {
    private static Connection con;

    static {
        try {
            con = DatabaseConnection.getConnection();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    // Add a new trip
    public static void addTrip(Trip trip) throws SQLException {
        String sql = "INSERT INTO trips(department, destination, days, description, special_request, total_student, created_at) VALUES (?, ?, ?, ?, ?, ?, CURRENT_TIMESTAMP)";
        try (PreparedStatement stmt = con.prepareStatement(sql)) {
            stmt.setString(1, trip.getDepartment());
            stmt.setString(2, trip.getDestination());
            stmt.setInt(3, trip.getDays());
            stmt.setString(4, trip.getDescription());
            stmt.setString(5, trip.getSpecialRequest());
            stmt.setInt(6, trip.getTotalStudent());
            stmt.executeUpdate();
        }
    }

    // Retrieve all trips
    public static List<Trip> getAllTrips() throws SQLException {
        List<Trip> trips = new ArrayList<>();
        String sql = "SELECT * FROM trips";
        try (Statement stmt = con.createStatement(); ResultSet rs = stmt.executeQuery(sql)) {
                    while (rs.next()) {
            LocalDateTime createdAt = rs.getTimestamp("created_at").toLocalDateTime(); // Convert Timestamp to LocalDateTime

            trips.add(new Trip(
                rs.getInt("id"),
                rs.getString("department"),
                rs.getString("destination"),
                rs.getInt("days"),
                rs.getString("description"),
                rs.getString("special_request"),
                rs.getInt("total_student"),
                createdAt // Pass the converted LocalDateTime
            ));
        }
        }
        return trips;
    }

    // Update a trip
    public static void updateTrip(Trip trip) throws SQLException {
        String sql = "UPDATE trips SET department=?, destination=?, days=?, description=?, special_request=?, total_student=? WHERE id=?";
        try (PreparedStatement stmt = con.prepareStatement(sql)) {
            stmt.setString(1, trip.getDepartment());
            stmt.setString(2, trip.getDestination());
            stmt.setInt(3, trip.getDays());
            stmt.setString(4, trip.getDescription());
            stmt.setString(5, trip.getSpecialRequest());
            stmt.setInt(6, trip.getTotalStudent());
            stmt.setInt(7, trip.getId());
            stmt.executeUpdate();
        }
    }

    // Delete a trip
    public static void deleteTrip(int id) throws SQLException {
        String sql = "DELETE FROM trips WHERE id=?";
        try (PreparedStatement stmt = con.prepareStatement(sql)) {
            stmt.setInt(1, id);
            stmt.executeUpdate();
        }
    }
}
