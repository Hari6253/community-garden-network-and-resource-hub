<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Educational Content - Community Garden Network</title>
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
        .content {
            margin-top: 20px;
        }
        .content h3 {
            color: #4CAF50; /* Heading color */
        }
        .content p {
            margin-bottom: 10px;
        }
        .content a {
            text-decoration: none;
            color: #007bff; /* Link color */
        }
        .content a:hover {
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
        }
        .footer-content {
            font-size: 12px;
            color: #333; /* Text color */
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Educational Content</h1>
        <div class="content">
            <!-- Use Java to fetch and display educational content -->
            <p>This section will contain a library of educational content.</p>
        </div>
    </div>
    <footer>
        <div class="footer-content">
            <p>&copy; 2024 Community Garden Network. All rights reserved.</p>
            <p>Contact: info@communitygardennetwork.com</p>
        </div>
    </footer>
    <script>
        // Your JavaScript code here
        // For example, fetching educational content from a servlet using AJAX
        // This is just a placeholder, replace it with actual implementation
        fetchEducationalContent();

        function fetchEducationalContent() {
            // Example AJAX request to fetch educational content
            var xhr = new XMLHttpRequest();
            xhr.onreadystatechange = function() {
                if (this.readyState == 4 && this.status == 200) {
                    // Parse and display educational content
                    var content = JSON.parse(this.responseText);
                    displayContent(content);
                }
            };
            xhr.open("GET", "educationalContentServlet", true);
            xhr.send();
        }

        function displayContent(content) {
            var contentDiv = document.querySelector('.content');
            // Clear existing content
            contentDiv.innerHTML = '';
            // Display fetched content
            content.forEach(function(item) {
                var itemElement = document.createElement('div');
                itemElement.innerHTML = '<h3>' + item.title + '</h3>' +
                                        '<p>' + item.description + '</p>' +
                                        '<a href="' + item.link + '">Read More</a>';
                contentDiv.appendChild(itemElement);
            });
        }
    </script>
</body>
</html>
