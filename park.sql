CREATE DATABASE IF NOT EXISTS park;

-- Use the created database
USE park;

-- Create Users table
CREATE TABLE Users (
    user_id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL,
    password VARCHAR(255) NOT NULL
);

-- Create RecommendationRequests table
CREATE TABLE RecommendationRequests (
    request_id INT AUTO_INCREMENT PRIMARY KEY,
    interests TEXT NOT NULL,
    experience TEXT NOT NULL,
    request_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Create VolunteerTasks table
CREATE TABLE VolunteerTasks (
    task_id INT AUTO_INCREMENT PRIMARY KEY,
    task_name VARCHAR(255) NOT NULL,
    description TEXT NOT NULL,
    required_skills VARCHAR(255) NOT NULL,
    task_date DATE NOT NULL,
    task_time TIME NOT NULL
);

-- Create UploadedMaterials table
CREATE TABLE UploadedMaterials (
    material_id INT AUTO_INCREMENT PRIMARY KEY,
    file_path VARCHAR(255) NOT NULL,
    title VARCHAR(255) NOT NULL,
    description TEXT NOT NULL,
    category VARCHAR(50) NOT NULL
);

-- Create Events table
CREATE TABLE Events (
    event_id INT AUTO_INCREMENT PRIMARY KEY,
    event_name VARCHAR(255) NOT NULL,
    event_date DATE NOT NULL,
    event_time TIME NOT NULL,
    event_location VARCHAR(255) NOT NULL,
    event_description TEXT NOT NULL
);

-- Create EventRSVPs table
CREATE TABLE EventRSVPs (
    rsvp_id INT AUTO_INCREMENT PRIMARY KEY,
    event_id INT NOT NULL,
    full_name VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL,
    rsvp_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (event_id) REFERENCES Events(event_id)
);

-- Create Scheduled_Event table
CREATE TABLE Scheduled_Event (
    schedule_id INT PRIMARY KEY AUTO_INCREMENT,
    event_id INT,
    workshop_date DATE NOT NULL,
    workshop_time TIME NOT NULL,
    FOREIGN KEY (event_id) REFERENCES Events(event_id)
);
