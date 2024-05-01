<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Home - Community Garden Network</title>
    <link rel="stylesheet" type="text/css" href="styles.css">
    <style>
        body {
            margin: 0;
            padding: 0;
            font-family: Arial, sans-serif;
            background-image: url('p.jpg');
            background-size: cover;
            background-repeat: no-repeat;
            background-attachment: fixed;
        }
        nav {
            background-color: rgba(255, 255, 255, 0.7); /* Semi-transparent white background */
            padding: 10px 0;
            text-align: center;
        }
        nav ul {
            list-style-type: none;
            padding: 0;
            margin: 0;
        }
        nav ul li {
            display: inline;
            margin: 0 10px;
        }
        nav ul li a {
            text-decoration: none;
            color: #333; /* Text color */
        }
        nav ul li a:hover {
            color: #4CAF50; /* Hover color */
        }
        .container {
            width: 80%;
            margin: 0 auto;
            padding: 20px;
            text-align: center;
            color: #333; /* Text color */
            background-color: rgba(255, 255, 255, 0.7); /* Semi-transparent white background */
            border-radius: 10px;
        }
        h1 {
            color: #333; /* Heading color */
        }
        footer {
            position: fixed;
            left: 0;
            bottom: 0;
            width: 100%;
            background-color: rgba(255, 255, 255, 0.7); /* Semi-transparent white background */
            padding: 10px 0;
            text-align: center;
        }
        .footer-content {
            font-size: 12px;
            color: #333; /* Text color */
        }
    </style>
</head>
<body>
    <!-- Navigation bar -->
    <nav>
        <ul>
            <li><a href="home.jsp">Home</a></li>
            <li><a href="educational_content.jsp">Educational Content</a></li>
            <li><a href="event_management.jsp">Event Management</a></li>
            <li><a href="event_rsvp.jsp">Event RSVP</a></li>
            <li><a href="recommendations.jsp">Recommendations</a></li>
            <li><a href="volunteerManagement.jsp">Volunteer Management</a></li>
            <li><a href="logout.jsp">Logout</a></li> <!-- Logout link -->
        </ul>
    </nav>

    <!-- Main content -->
    <div class="container">
        <h1>Welcome to Community Garden Network</h1>
        <p>Connect with fellow garden enthusiasts, discover local community gardens, and explore resources for sustainable living.</p>
        <p>Community Garden Network is your gateway to:</p>
        <ul>
            <li>Find and join gardening workshops and events</li>
            <li>Volunteer for rewarding gardening tasks in your area</li>
            <li>Access educational content on gardening tips, sustainable practices, and more</li>
            <li>Discover community gardens near you and share your gardening experiences</li>
        </ul>
        <p>Join our growing community today and start your journey towards a greener, healthier lifestyle!</p>
        <!-- Add more content here as needed -->
    </div>

    <!-- Your footer content -->
    <footer>
        <div class="footer-content">
            <p>&copy; 2024 Community Garden Network. All rights reserved.</p>
            <p>Contact: info@communitygardennetwork.com</p>
        </div>
    </footer>
</body>
</html>
