<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Personalized Recommendations - Community Garden Network</title>
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
        .recommendations {
            margin-top: 20px;
        }
        .recommendations ul {
            list-style-type: none;
            padding: 0;
            margin: 0;
        }
        .recommendations ul li {
            margin-bottom: 10px;
        }
        .recommendations ul li a {
            text-decoration: none;
            color: #4CAF50; /* Link color */
        }
        .recommendations ul li a:hover {
            text-decoration: underline;
        }
        .footer-content {
            margin-top: 20px;
        }
        .footer-content p {
            margin: 5px 0;
        }
        .back-button {
            margin-top: 20px;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Personalized Recommendations</h1>
        <div class="recommendations">
            <ul>
                <li><a href="garden_details.jsp?id=1">Garden Name 1</a></li>
                <li><a href="garden_details.jsp?id=2">Garden Name 2</a></li>
                <!-- Add more recommended gardens dynamically -->
            </ul>
        </div>
        <h2>Request Personalized Recommendations</h2>
        <form action="recommendationProcess.jsp" method="post">
            <label for="interests">Gardening Interests:</label><br>
            <input type="text" id="interests" name="interests" required><br>
            <label for="experience">Gardening Experience:</label><br>
            <input type="text" id="experience" name="experience" required><br>
            <input type="submit" value="Submit">
        </form>
        <div class="back-button">
            <a href="home.jsp">Back to Home</a>
        </div>
    </div>
    <footer>
        <div class="footer-content">
            <p>&copy; 2024 Community Garden Network. All rights reserved.</p>
            <p>Contact: info@communitygardennetwork.com</p>
        </div>
    </footer>
</body>
</html>
