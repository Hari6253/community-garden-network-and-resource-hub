<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Upload Materials - Community Garden Network</title>
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
        form {
            margin-bottom: 20px;
        }
        label {
            display: block;
            margin-bottom: 5px;
            color: #666; /* Label color */
        }
        input[type="file"], input[type="text"], textarea, select {
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
        <h1>Upload Materials</h1>
        <!-- Include file upload form -->
        <form id="uploadForm" action="uploadServlet" method="post" enctype="multipart/form-data">
            <label for="file">Select File:</label>
            <input type="file" id="file" name="file" required><br>
            <label for="title">Title:</label>
            <input type="text" id="title" name="title" required><br>
            <label for="description">Description:</label>
            <textarea id="description" name="description" required></textarea><br>
            <label for="category">Category:</label>
            <select id="category" name="category">
                <option value="gardening">Gardening</option>
                <option value="sustainability">Sustainability</option>
                <option value="community">Community</option>
                <!-- Add more options as needed -->
            </select><br>
            <input type="submit" value="Upload">
        </form>
    </div>
    <!-- Include JavaScript code for interactive elements -->
    <script>
        document.addEventListener("DOMContentLoaded", function() {
            var form = document.getElementById("uploadForm");
            var fileInput = document.getElementById("file");

            form.addEventListener("submit", function(event) {
                event.preventDefault();

                // Validate file type
                var allowedTypes = ["image/jpeg", "image/png", "application/pdf"]; // Example allowed file types
                if (!allowedTypes.includes(fileInput.files[0].type)) {
                    alert("Invalid file type. Please select a JPEG, PNG, or PDF file.");
                    return;
                }

                // Submit the form if file type is valid
                this.submit();
            });
        });
    </script>
</body>
</html>
