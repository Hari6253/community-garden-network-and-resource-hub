<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Event RSVP - Community Garden Network</title>
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
        input[type="text"], input[type="email"] {
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
        <h1>Event RSVP</h1>
        <div class="events">
            <p>This section will contain upcoming gardening workshops and events.</p>
        </div>
        <h2>RSVP for an Event</h2>
        <form id="rsvpForm" action="rsvpevent_process.jsp" method="post">
            <label for="eventName">Event Name:</label>
            <input type="text" id="eventName" name="eventName" required><br>
            <label for="fullName">Full Name:</label>
            <input type="text" id="fullName" name="fullName" required><br>
            <label for="email">Email:</label>
            <input type="email" id="email" name="email" required><br>
            <input type="submit" value="RSVP">
        </form>
        <a href="home.jsp">Back to Home</a>
    </div>
</body>
</html>
