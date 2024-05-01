<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
    <title>Register - Community Garden Network</title>
    <style>
        body {
            margin: 0;
            padding: 0;
            font-family: Arial, sans-serif;
            background-image: url('background.jpg'); /* Replace 'background.jpg' with your actual background image */
            background-size: cover;
            background-repeat: no-repeat;
            background-attachment: fixed;
            color: #333; /* Text color */
        }
        .container {
            width: 80%;
            margin: 0 auto;
            padding: 20px;
            text-align: center;
            background-color: rgba(255, 255, 255, 0.7); /* Semi-transparent white background */
            border-radius: 10px;
            margin-top: 50px; /* Adjust as needed */
        }
        h1 {
            color: #333; /* Heading color */
        }
        label {
            display: block;
            margin-bottom: 5px;
        }
        input[type="text"],
        input[type="email"],
        input[type="password"] {
            width: 100%;
            padding: 8px;
            margin-bottom: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
            box-sizing: border-box;
        }
        input[type="submit"] {
            background-color: #4CAF50; /* Submit button background color */
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }
        input[type="submit"]:hover {
            background-color: #45a049; /* Hover color */
        }
        p {
            margin-bottom: 10px;
        }
        a {
            color: #007bff; /* Link color */
            text-decoration: none;
        }
        a:hover {
            text-decoration: underline;
        }
        footer {
            position: fixed;
            left: 0;
            bottom: 0;
            width: 100%;
            background-color: rgba(255, 255, 255, 0.7); /* Semi-transparent white background */
            padding: 10px 0;
            text-align: center;
            color: #333; /* Text color */
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Register</h1>
        <%
            String username = request.getParameter("username");
            String email = request.getParameter("email");
            String password = request.getParameter("password");

            if (username != null && email != null && password != null) {
                try {
                    // Establish database connection
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/park", "root", "");

                    // Insert user data into the Users table
                    PreparedStatement ps = con.prepareStatement("INSERT INTO Users (username, email, password) VALUES (?, ?, ?)");
                    ps.setString(1, username);
                    ps.setString(2, email);
                    ps.setString(3, password);
                    int rowsInserted = ps.executeUpdate();
                    ps.close();
                    con.close();

                    if (rowsInserted > 0) {
                        out.println("<p>Registration successful!</p>");
                    } else {
                        out.println("<p>Registration failed. Please try again.</p>");
                    }
                } catch (Exception e) {
                    out.println("<p>Error: " + e.getMessage() + "</p>");
                }
            }
        %>
        <form action="register.jsp" method="post">
            <label for="username">Username:</label>
            <input type="text" id="username" name="username" required><br>
            <label for="email">Email:</label>
            <input type="email" id="email" name="email" required><br>
            <label for="password">Password:</label>
            <input type="password" id="password" name="password" required><br>
            <input type="submit" value="Register">
        </form>
        <p>Already have an account? <a href="login.jsp">Login here</a></p>
    </div>
    <footer>
        <p>&copy; 2024 Community Garden Network. All rights reserved.</p>
        <p>Contact: info@communitygardennetwork.com</p>
    </footer>
</body>
</html>
