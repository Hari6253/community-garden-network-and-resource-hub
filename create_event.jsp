<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Create New Event - Community Garden Network</title>
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
        input[type="text"], input[type="date"], input[type="time"], textarea {
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
    </style>
</head>
<body>
    <div class="container">
        <h1>Create New Event</h1>
        <form id="createEventForm" action="create_event_process.jsp" method="post">
            <label for="eventName">Event Name:</label>
            <input type="text" id="eventName" name="eventName" required><br>
            <label for="eventDate">Event Date:</label>
            <input type="date" id="eventDate" name="eventDate" required><br>
            <label for="eventTime">Event Time:</label>
            <input type="time" id="eventTime" name="eventTime" required><br>
            <label for="location">Location:</label>
            <input type="text" id="location" name="location" required><br>
            <label for="description">Event Description:</label>
            <textarea id="description" name="description" required></textarea><br>
            <input type="submit" value="Create Event">
        </form>
        <a href="home.jsp">Back to Home</a>
    </div>
</body>
</html>
