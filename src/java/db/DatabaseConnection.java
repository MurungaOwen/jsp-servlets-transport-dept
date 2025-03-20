/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package db;
import java.sql.DriverManager;
import java.sql.Connection;
import java.sql.SQLException;


public class DatabaseConnection {
    private static final String URL = "jdbc:mysql://localhost:3306/trips_manage";
    private static final String USER = "root";
    private static final String PASSWORD = "iamhood";

    public static Connection getConnection() throws SQLException, ClassNotFoundException {
        Class.forName("com.mysql.cj.jdbc.Driver");
        return DriverManager.getConnection(URL, USER, PASSWORD);
    }
}

//CREATE TABLE trips (
//    id INT AUTO_INCREMENT PRIMARY KEY,
//    department VARCHAR(255) NOT NULL,
//    destination VARCHAR(255) NOT NULL,
//    days INT NOT NULL,
//    description TEXT,
//    special_request TEXT,
//    total_students INT NOT NULL,
//    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
//);
