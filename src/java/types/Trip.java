package types;

import java.time.LocalDateTime;
import java.io.Serializable;

public class Trip implements Serializable {
    
    private int id;
    private String department;
    private String destination;
    private int days;
    private String description;
    private String specialRequest;
    private int totalStudent;
    private LocalDateTime createdAt;

    // Default Constructor
    public Trip() {}

    // Constructor with ID (for fetching from DB)
    public Trip(int id, String department, String destination, int days, String description, String specialRequest, int totalStudent, LocalDateTime createdAt) {
        this.id = id;
        this.department = department;
        this.destination = destination;
        this.days = days;
        this.description = description;
        this.specialRequest = specialRequest;
        this.totalStudent = totalStudent;
        this.createdAt = createdAt;
    }

    // Constructor without ID (for new trips)
    public Trip(String department, String destination, int days, String description, String specialRequest, int totalStudent) {
        this.department = department;
        this.destination = destination;
        this.days = days;
        this.description = description;
        this.specialRequest = specialRequest;
        this.totalStudent = totalStudent;
        this.createdAt = LocalDateTime.now(); // Uses current date & time
    }

    // Getters and Setters
    public int getId() { return id; }
    public void setId(int id) { this.id = id; }

    public String getDepartment() { return department; }
    public void setDepartment(String department) { this.department = department; }

    public String getDestination() { return destination; }
    public void setDestination(String destination) { this.destination = destination; }

    public int getDays() { return days; }
    public void setDays(int days) { this.days = days; }

    public String getDescription() { return description; }
    public void setDescription(String description) { this.description = description; }

    public String getSpecialRequest() { return specialRequest; }
    public void setSpecialRequest(String specialRequest) { this.specialRequest = specialRequest; }

    public int getTotalStudent() { return totalStudent; }
    public void setTotalStudent(int totalStudent) { this.totalStudent = totalStudent; }

    public LocalDateTime getCreatedAt() { return createdAt; }
    public void setCreatedAt(LocalDateTime createdAt) { this.createdAt = createdAt; }
}
