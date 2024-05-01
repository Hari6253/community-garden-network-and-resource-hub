<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.Connection, java.sql.DriverManager, java.sql.PreparedStatement, java.sql.ResultSet"%>
<%@ page import="java.io.IOException"%>

<%
    // JDBC connection parameters
    String jdbcURL = "jdbc:mysql://localhost:3306/park";
    String dbUser = "root";
    String dbPassword = "";

    // Form data
    String eventNameStr = request.getParameter("eventName");
    String fullName = request.getParameter("fullName");
    String email = request.getParameter("email");

    // JDBC variables
    Connection connection = null;
    PreparedStatement statement = null;
    ResultSet resultSet = null;

    try {
        // Load the MySQL JDBC driver
        Class.forName("com.mysql.jdbc.Driver");

        // Establish the database connection
        connection = DriverManager.getConnection(jdbcURL, dbUser, dbPassword);

        // Prepare SQL query to check if the event exists
        String checkEventQuery = "SELECT event_id FROM Events WHERE event_name = ?";
        statement = connection.prepareStatement(checkEventQuery);
        statement.setString(1, eventNameStr);
        resultSet = statement.executeQuery();

        // Check if the event exists
        if (resultSet.next()) {
            int eventId = resultSet.getInt("event_id");

            // Prepare SQL query to insert RSVP into database
            String insertRSVPQuery = "INSERT INTO EventRSVPs (event_id, full_name, email) VALUES (?, ?, ?)";
            statement = connection.prepareStatement(insertRSVPQuery);
            statement.setInt(1, eventId);
            statement.setString(2, fullName);
            statement.setString(3, email);

            // Execute the query
            int rowsInserted = statement.executeUpdate();

            // Check if RSVP insertion was successful
            if (rowsInserted > 0) {
                // Close resources
                if (resultSet != null) {
                    resultSet.close();
                }
                if (statement != null) {
                    statement.close();
                }
                if (connection != null) {
                    connection.close();
                }
                // Redirect to home page
                response.sendRedirect("home.jsp");
                return; // Terminate further processing
            } else {
                out.println("<p>Failed to RSVP. Please try again.</p>");
            }
        } else {
            out.println("<p>Error: Invalid event name. Please select a valid event.</p>");
        }
    } catch (Exception e) {
        out.println("<p>Error: " + e.getMessage() + "</p>");
    } finally {
        // Close the database connection and resources
        if (resultSet != null) {
            try {
                resultSet.close();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
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
