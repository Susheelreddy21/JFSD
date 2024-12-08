<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Voting Results</title>
     <h2 align="center">Election Monitoring System To Inspire Upcoming Voters</h2>
    <style>
        /* General Reset */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        /* Sidebar Navigation */
        .navbar {
            display: flex;
            flex-direction: column; /* Stack items vertically */
            align-items: flex-start;
            width: 60px; /* Collapsed width */
            background-color: navy;
            padding: 10px;
            height: 100vh; /* Full viewport height */
            position: fixed; /* Keep sidebar fixed */
            top: 0;
            left: 0;
            transition: width 0.3s ease; /* Smooth transition for width */
            overflow: hidden; /* Hide content when collapsed */
        }

        .navbar:hover {
            width: 200px; /* Expanded width on hover */
        }

        .navbar a {
            color: white;
            text-decoration: none;
            padding: 14px 20px;
            border-radius: 5px;
            width: 100%;
            box-sizing: border-box;
            border-bottom: 1px solid white; /* Adds line between elements */
            white-space: nowrap; /* Prevent text wrapping */
            overflow: hidden; /* Hide overflowing text in collapsed state */
            text-overflow: ellipsis; /* Show ellipsis for truncated text */
            opacity: 0; /* Initially hidden links */
            transform: translateX(-20px); /* Offset for smooth animation */
            transition: opacity 0.3s ease, transform 0.3s ease; /* Smooth fade-in effect */
        }

        .navbar:hover a {
            opacity: 1; /* Fully visible links on hover */
            transform: translateX(0); /* Reset any offset */
        }

        .navbar a:hover {
            background-color: darkblue;
        }

        /* Main content */
        .content {
            margin-left: 60px; /* Shift main content beside the sidebar */
            padding: 20px;
            transition: margin-left 0.3s ease;
        }

        .navbar:hover + .content {
            margin-left: 200px; /* Adjust main content when sidebar expands */
        }

        h1 {
            color: #333;
            font-size: 28px;
        }

        p {
            font-size: 16px;
            color: #555;
            margin-top: 10px;
        }

        table {
            border-collapse: collapse;
            margin-top: 20px;
            width: 100%;
        }

        table th,
        table td {
            padding: 10px;
            text-align: center;
            border: 1px solid #333;
        }

        a.back-link {
            text-decoration: none;
            color: navy;
            font-weight: bold;
            margin-top: 10px;
            display: inline-block;
            transition: color 0.3s ease;
        }

        a.back-link:hover {
            color: darkblue;
        }
    </style>
</head>
<body>
    <!-- Sidebar -->
    <div class="navbar">
         <a href="/voterhome">Home</a>
        <a href="/voterprofile">Voter Profile</a>
         <a href="/updatevoter">Update Voter</a>
          <a href="/viewSchedule">View Schedule</a>
           <a href="/vote">Cast a vote</a>
        <a href="/voterlogout">Logout</a>
    </div>

    <!-- Main content -->
    <div class="content">
        <h1>Voting Results</h1>
        <table>
            <tr>
                <th>Candidate Name</th>
                <th>Party Name</th>
                <th>Votes</th>
            </tr>
            <c:forEach var="candidate" items="${candidates}">
                <tr>
                    <td>${candidate.name}</td>
                    <td>${candidate.partyName}</td>
                    <td>${candidate.voteCount}</td>
                </tr>
            </c:forEach>
        </table>
        <br>
        <a class="back-link" href="/vote">Back to Voting</a>
    </div>
</body>
</html>
