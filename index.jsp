<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Community Garden Network</title>
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
        nav, footer {
            background-color: rgba(255, 255, 255, 0.7); /* Semi-transparent white background */
            padding: 10px 0;
            text-align: center;
        }
        nav ul, footer ul {
            list-style-type: none;
            padding: 0;
            margin: 0;
        }
        nav ul li, footer ul li {
            display: inline;
            margin: 0 10px;
        }
        nav ul li a, footer ul li a {
            text-decoration: none;
            color: #333; /* Text color */
        }
        nav ul li a:hover, footer ul li a:hover {
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
            color: #fff; /* Heading color */
        }
        footer {
            position: fixed;
            left: 0;
            bottom: 0;
            width: 100%;
            background-color: rgba(255, 255, 255, 0.7); /* Semi-transparent white background */
            padding: 10px 0;
            text-align: center;
            font-family: "Times New Roman", Times, serif; /* Different font for footer */
        }
    </style>
</head>
<body>
    <nav>
        <ul>
            <li><a href="index.jsp">Home</a></li>
            <li><a href="register.jsp">Register</a></li>
            <li><a href="login.jsp">Login</a></li>
        </ul>
    </nav>
    <div class="container">
        <h1>Welcome to Community Garden Network</h1>
        <p>Community Garden Network is your one-stop destination for all things related to gardening, sustainable living, and community engagement. Join our network today and discover a world of resources, events, and volunteering opportunities!</p>
        <p>Whether you're a seasoned gardener looking to share your expertise or a beginner eager to learn, our platform has something for everyone. Explore personalized recommendations for community gardens, access educational content, RSVP for events, and much more.</p>
        <p>Get involved in your local community, contribute to sustainable food production, and embark on a journey towards a healthier lifestyle with Community Garden Network!</p>
    </div>
    <footer>
        <ul>
            <li><a href="index.jsp">Home</a></li>
            <li><a href="register.jsp">Register</a></li>
            <li><a href="login.jsp">Login</a></li>
        </ul>
        <p>&copy; 2024 Community Garden Network. All rights reserved.</p>
    </footer>
</body>
</html>
