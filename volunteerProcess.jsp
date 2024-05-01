<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>

<%
    // JDBC URL, username, and password
    String jdbcUrl = "jdbc:mysql://localhost:3306/park";
    String dbUser = "root";
    String dbPassword = "";

    // Form data
    String taskName = request.getParameter("taskName");
    String description = request.getParameter("description");
    String requiredSkills = request.getParameter("skills");
    String taskDate = request.getParameter("date");
    String taskTime = request.getParameter("time");

    Connection conn = null;
    PreparedStatement stmt = null;

    try {
        // Register JDBC driver
        Class.forName("com.mysql.jdbc.Driver");

        // Open a connection
        conn = DriverManager.getConnection(jdbcUrl, dbUser, dbPassword);

        // Create a prepared statement
        String sql = "INSERT INTO VolunteerTasks (task_name, description, required_skills, task_date, task_time) VALUES (?, ?, ?, ?, ?)";
        stmt = conn.prepareStatement(sql);

        // Set parameters
        stmt.setString(1, taskName);
        stmt.setString(2, description);
        stmt.setString(3, requiredSkills);
        stmt.setString(4, taskDate);
        stmt.setString(5, taskTime);

        // Execute the statement
        int rowsAffected = stmt.executeUpdate();

        // Check if the task was added successfully
        if (rowsAffected > 0) {
            response.sendRedirect("home.jsp"); // Redirect to the home page
        } else {
            out.println("Failed to add the task.");
        }
    } catch (Exception e) {
        out.println("An error occurred: " + e.getMessage());
    } finally {
        // Close the resources
        try {
            if (stmt != null) {
                stmt.close();
            }
            if (conn != null) {
                conn.close();
            }
        } catch (SQLException se) {
            se.printStackTrace();
        }
    }
%>
