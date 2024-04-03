<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Volunteer Management - Community Garden Network</title>
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
        input[type="text"], input[type="email"], textarea, input[type="date"], input[type="time"] {
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
    </style>
</head>
<body>
    <div class="container">
        <h1>Volunteer Management</h1>
        <!-- Form to add new volunteer task -->
        <h2>Add New Volunteer Task</h2>
        <form id="addTaskForm" action="addTaskServlet" method="post">
            <label for="taskName">Task Name:</label>
            <input type="text" id="taskName" name="taskName" required><br>
            <label for="description">Description:</label>
            <textarea id="description" name="description" required></textarea><br>
            <label for="skills">Required Skills:</label>
            <input type="text" id="skills" name="skills" required><br>
            <label for="date">Date:</label>
            <input type="date" id="date" name="date" required><br>
            <label for="time">Time:</label>
            <input type="time" id="time" name="time" required><br>
            <input type="submit" value="Add Task">
        </form>

        <!-- Form to assign volunteer to task -->
        <h2>Assign Volunteer to Task</h2>
        <form id="assignVolunteerForm" action="assignVolunteerServlet" method="post">
            <label for="taskId">Task ID:</label>
            <input type="text" id="taskId" name="taskId" required><br>
            <label for="volunteerName">Volunteer Name:</label>
            <input type="text" id="volunteerName" name="volunteerName" required><br>
            <label for="volunteerEmail">Volunteer Email:</label>
            <input type="email" id="volunteerEmail" name="volunteerEmail" required><br>
            <input type="submit" value="Assign Volunteer">
        </form>
    </div>
    <!-- Include JavaScript code for interactive elements -->
    <script>
        // JavaScript code here
        // we can add client-side validation or other interactive features
    </script>
</body>
</html>
