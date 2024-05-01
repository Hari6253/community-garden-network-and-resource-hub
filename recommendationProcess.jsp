<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.Connection, java.sql.DriverManager, java.sql.PreparedStatement, java.sql.SQLException" %>

<%
    // JDBC connection parameters
    String jdbcURL = "jdbc:mysql://localhost:3306/park";
    String dbUser = "root";
    String dbPassword = "";

    // Form data
    String interests = request.getParameter("interests");
    String experience = request.getParameter("experience");

    // JDBC variables
    Connection connection = null;
    PreparedStatement statement = null;

    try {
        // Load the MySQL JDBC driver
        Class.forName("com.mysql.jdbc.Driver");

        // Establish the database connection
        connection = DriverManager.getConnection(jdbcURL, dbUser, dbPassword);

        // Prepare SQL query to insert recommendation request into database
        String sql = "INSERT INTO RecommendationRequests (interests, experience) VALUES (?, ?)";
        statement = connection.prepareStatement(sql);
        statement.setString(1, interests);
        statement.setString(2, experience);

        // Execute the query
        int rowsInserted = statement.executeUpdate();

        // Check if recommendation request insertion was successful
        if (rowsInserted > 0) {
            // Redirect to the home page
            response.sendRedirect("home.jsp");
        } else {
            out.println("<p>Failed to submit recommendation request. Please try again.</p>");
        }
    } catch (SQLException e) {
        out.println("<p>Error: " + e.getMessage() + "</p>");
    } catch (ClassNotFoundException e) {
        out.println("<p>Error: MySQL JDBC Driver not found.</p>");
    } finally {
        // Close the database connection and statement
        if (statement != null) {
            try {
                statement.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        if (connection != null) {
            try {
                connection.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }
%>
