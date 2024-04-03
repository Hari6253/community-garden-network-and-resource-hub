<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Event Management - Community Garden Network</title>
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
        #eventNameDetails, #eventDateDetails, #eventTimeDetails, #locationDetails {
            font-weight: bold;
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
        <!-- Form for event creation -->
        <h2>Create New Event</h2>
        <form id="createEventForm" action="createEventServlet" method="post">
            <label for="eventName">Event Name:</label>
            <input type="text" id="eventName" name="eventName" required><br>
            <label for="eventDate">Event Date:</label>
            <input type="date" id="eventDate" name="eventDate" required><br>
            <label for="eventTime">Event Time:</label>
            <input type="time" id="eventTime" name="eventTime" required><br>
            <label for="location">Location:</label>
            <input type="text" id="location" name="location" required><br>
            <input type="submit" value="Create Event">
        </form>

        <!-- Form for event scheduling -->
        <h2>Schedule Event</h2>
        <form id="scheduleEventForm" action="scheduleEventServlet" method="post">
            <label for="eventId">Event ID:</label>
            <input type="text" id="eventId" name="eventId" required><br>
            <label for="workshopDate">Workshop Date:</label>
            <input type="date" id="workshopDate" name="workshopDate" required><br>
            <label for="workshopTime">Workshop Time:</label>
            <input type="time" id="workshopTime" name="workshopTime" required><br>
            <input type="submit" value="Schedule Event">
        </form>

        <!-- Form for volunteer task assignment -->
        <h2>Assign Volunteer Task</h2>
        <form id="assignTaskForm" action="assignTaskServlet" method="post">
            <label for="eventId">Event ID:</label>
            <input type="text" id="eventId" name="eventId" required><br>
            <label for="taskName">Task Name:</label>
            <input type="text" id="taskName" name="taskName" required><br>
            <label for="volunteerName">Volunteer Name:</label>
            <input type="text" id="volunteerName" name="volunteerName" required><br>
            <input type="submit" value="Assign Task">
        </form>

        <!-- Other fields for event details -->
        <h2>Event Details</h2>
        <p>Event Name: <span id="eventNameDetails"></span></p>
        <p>Event Date: <span id="eventDateDetails"></span></p>
        <p>Event Time: <span id="eventTimeDetails"></span></p>
        <p>Location: <span id="locationDetails"></span></p>
    </div>
    <footer>
        <div class="footer-content">
            <p>&copy; 2024 Community Garden Network. All rights reserved.</p>
            <p>Contact: info@communitygardennetwork.com</p>
        </div>
    </footer>
    <script>
        // Your JavaScript code here
        document.getElementById("createEventForm").addEventListener("submit", function(event) {
            event.preventDefault();
            var eventName = document.getElementById("eventName").value;
            var eventDate = document.getElementById("eventDate").value;
            var eventTime = document.getElementById("eventTime").value;
            var location = document.getElementById("location").value;

            // Example: Send event data to server using fetch API
            fetch("createEventServlet", {
                method: "POST",
                body: JSON.stringify({eventName: eventName, eventDate: eventDate, eventTime: eventTime, location: location}),
                headers: {
                    "Content-Type": "application/json"
                }
            })
            .then(response => response.json())
            .then(data => {
                // Handle response from server
                console.log(data);
                // Display event details
                document.getElementById("eventNameDetails").textContent = data.eventName;
                document.getElementById("eventDateDetails").textContent = data.eventDate;
                document.getElementById("eventTimeDetails").textContent = data.eventTime;
                document.getElementById("locationDetails").textContent = data.location;
            })
            .catch(error => console.error("Error:", error));
        });
    </script>
</body>
</html>
