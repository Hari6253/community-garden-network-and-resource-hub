<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Event Management - Community Garden Network</title>
    <link rel="stylesheet" type="text/css" href="styles.css">
    <style>
        /* Add your CSS styles here */
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
        h1, h2 {
            color: #333; /* Heading color */
        }
        form {
            margin-bottom: 20px;
        }
        label {
            display: block;
            margin-bottom: 5px;
            color: #666; /* Label color */
        }
        input[type="text"], input[type="date"], input[type="time"] {
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
    <div class="container">
        <h1>Event Management</h1>
        <!-- Navigation buttons -->
        <a href="home.jsp">Back to Home</a> | <a href="create_event.jsp">Create New Event</a> |

        <!-- Additional content -->
        <h2>Upcoming Events</h2>
        <p>Here are the upcoming events in the Community Garden Network:</p>
        <ul>
            <li>Workshop on Organic Gardening - May 15th, 2024</li>
            <li>Volunteer Day at Green Haven Garden - May 20th, 2024</li>
            <li>Seed Swap Event - June 5th, 2024</li>
        </ul>
    </div>

    <footer>
        <div class="footer-content">
            <p>&copy; 2024 Community Garden Network. All rights reserved.</p>
            <p>Contact: info@communitygardennetwork.com</p>
        </div>
    </footer>
</body>
</html>
