<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Schedule Election</title>
    <style>
       
      
    </style>
</head>
<body>
<%@include file="adminnavbar.jsp" %>
    <div class="container">
        <h2>Schedule Election</h2>
        <form action="${pageContext.request.contextPath}/scheduleElection" method="post">
            <label for="location">Location:</label>
            <input type="text" id="location" name="location" required>

            <label for="startDate">Start Date:</label>
            <input type="date" id="startDate" name="startDate" required>

            <label for="endDate">End Date:</label>
            <input type="date" id="endDate" name="endDate" required>

            <button type="submit">Schedule Election</button>
        </form>

        <div class="message">
            <!-- Success or error messages can be dynamically displayed here -->
        </div>
    </div>
</body>
</html>
