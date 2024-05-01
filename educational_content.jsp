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
        .video-container {
            position: relative;
            width: 100%;
            padding-bottom: 56.25%; /* 16:9 aspect ratio */
            margin-bottom: 15px;
        }
        .video-container iframe {
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
        }
        nav {
            background-color: rgba(255, 255, 255, 0.7); /* Semi-transparent white background */
            padding: 10px 0;
            text-align: center;
        }
        nav ul {
            list-style-type: none;
            padding: 0;
            margin: 0;
        }
        nav ul li {
            display: inline;
            margin: 0 10px;
        }
        nav ul li a {
            text-decoration: none;
            color: #333; /* Text color */
        }
        nav ul li a:hover {
            color: #4CAF50; /* Hover color */
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
    <!-- Navigation bar -->
    <nav>
        <ul>
            <li><a href="home.jsp">Home</a></li>
        </ul>
    </nav>

    <div class="container">
        <h1>Educational Content</h1>
        <div class="content">
            <div class="video-container">
                <iframe width="560" height="315" src="https://www.youtube.com/embed/rJbTOAP2Shk" frameborder="0" allowfullscreen></iframe>
            </div>
            <h3>Gardening Tips: How to Start Your Garden</h3>
            <p>Learn the basics of starting your own garden with this helpful video tutorial.</p>
            <a href="https://www.youtube.com/watch?v=rJbTOAP2Shk">Watch on YouTube</a>
            <hr>
            <div class="video-container">
                <iframe width="560" height="315" src="https://www.youtube.com/embed/videoseries?list=PLcetZ6gSk96984tz6XPYfxY5eDdQ6-vVk" frameborder="0" allowfullscreen></iframe>
            </div>
            <h3>Green Gardening Playlist</h3>
            <p>Discover a collection of videos covering various green gardening techniques and practices.</p>
            <a href="https://www.youtube.com/playlist?list=PLcetZ6gSk96984tz6XPYfxY5eDdQ6-vVk">Watch Playlist</a>
            <hr>
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
