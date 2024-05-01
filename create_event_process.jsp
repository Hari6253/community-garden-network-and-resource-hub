<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.Connection, java.sql.DriverManager, java.sql.PreparedStatement, java.io.IOException" %>

<%
    // JDBC connection parameters
    String jdbcURL = "jdbc:mysql://localhost:3306/park";
    String dbUser = "root";
    String dbPassword = "";

    // Form data
    String eventName = request.getParameter("eventName");
    String eventDate = request.getParameter("eventDate");
    String eventTime = request.getParameter("eventTime");
    String location = request.getParameter("location");
    String description = request.getParameter("description");

    // JDBC variables
    Connection connection = null;
    PreparedStatement statement = null;

    try {
        // Load the MySQL JDBC driver
        Class.forName("com.mysql.jdbc.Driver");

        // Establish the database connection
        connection = DriverManager.getConnection(jdbcURL, dbUser, dbPassword);

        // Prepare SQL query to insert event into database
        String sql = "INSERT INTO Events (event_name, event_date, event_time, event_location, event_description) VALUES (?, ?, ?, ?, ?)";
        statement = connection.prepareStatement(sql);
        statement.setString(1, eventName);
        statement.setString(2, eventDate);
        statement.setString(3, eventTime);
        statement.setString(4, location);
        
        // Handle empty description
        if (description != null && !description.isEmpty()) {
            statement.setString(5, description);
        } else {
            statement.setString(5, ""); // Or set a default description
        }

        // Execute the query
        int rowsInserted = statement.executeUpdate();

        // Check if event creation was successful
        if (rowsInserted > 0) {
            // Redirect to the home page
            response.sendRedirect("home.jsp");
        } else {
            out.println("<p>Failed to create event. Please try again.</p>");
        }
    } catch (Exception e) {
        out.println("<p>Error: " + e.getMessage() + "</p>");
    } finally {
        // Close the database connection and statement
        if (statement != null) {
            try {
                statement.close();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        if (connection != null) {
            try {
                connection.close();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }
%>
