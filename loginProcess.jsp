<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%
    String email = request.getParameter("email");
    String password = request.getParameter("password");

    if (email != null && password != null) {
        try {
            // Establish database connection
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/park", "root", "");

            // Check if user exists
            PreparedStatement ps = con.prepareStatement("SELECT * FROM Users WHERE email=? AND password=?");
            ps.setString(1, email);
            ps.setString(2, password);
            ResultSet rs = ps.executeQuery();

            if (rs.next()) {
                // User exists, redirect to home page
                response.sendRedirect("home.jsp");
            } else {
                // User doesn't exist or incorrect credentials
                out.println("<p>Invalid email or password. Please try again.</p>");
            }

            rs.close();
            ps.close();
            con.close();
        } catch (Exception e) {
            out.println("<p>Error: " + e.getMessage() + "</p>");
        }
    }
%>
