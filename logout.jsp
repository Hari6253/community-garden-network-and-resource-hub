<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
    // Clear session data or perform any logout-related tasks here
%>
<!DOCTYPE html>
<html>
<head>
    <title>Logout - Community Garden Network</title>
</head>
<body>
    <h1>Logout</h1>
    <p>You have been successfully logged out.</p>
    <%-- Redirecting to index.html after logout --%>
    <script>
        setTimeout(function() {
            window.location.href = "index.jsp";
        }, 2000); // Redirect after 2 seconds (2000 milliseconds)
    </script>
</body>
</html>
