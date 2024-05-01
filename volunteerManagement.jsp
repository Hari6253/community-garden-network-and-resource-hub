<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Volunteer Management - Community Garden Network</title>
    <link rel="stylesheet" type="text/css" href="styles.css">
    <style>
        /* Your CSS styles here */
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
        input[type="text"], textarea, input[type="date"], input[type="time"] {
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
        <h1>Volunteer Management</h1>
        <!-- Content description -->
        <p>Welcome to the Volunteer Management page of the Community Garden Network. Here, you can add new volunteer tasks and manage existing ones to engage volunteers in various activities related to community gardening.</p>
        
        <!-- Form to add new volunteer task -->
        <h2>Add New Volunteer Task</h2>
        <form id="addTaskForm" action="volunteerProcess.jsp" method="post">
            <label for="taskName">Task Name:</label>
            <input type="text" id="taskName" name="taskName" required><br>
            <label for="description">Description:</label>
            <textarea id="description" name="description" required></textarea><br>
            <label for="skills">Required Skills:</label>
            <input type="text" id="skills" name="skills" required><br>
            <label for="date">Task Date:</label>
            <input type="date" id="date" name="date" required><br>
            <label for="time">Task Time:</label>
            <input type="time" id="time" name="time" required><br>
            <input type="submit" value="Add Task">
        </form>
        
        <!-- Navigation button for homepage -->
        <a href="home.jsp">Back to Home</a>
    </div>

    <footer>
        <div class="footer-content">
            <p>&copy; 2024 Community Garden Network. All rights reserved.</p>
            <p>Contact: info@communitygardennetwork.com</p>
        </div>
    </footer>
</body>
</html>
