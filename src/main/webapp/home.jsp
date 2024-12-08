<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home</title>
<style>
        body {
            font-family: 'Arial', sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 20px;
        }
        h3 {
            text-align: center;
            color: #343a40;
            margin-top: 0;
        }
        .profile-container {
            background-color: #ffffff;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 6px 12px rgba(0, 0, 0, 0.15);
            max-width: 800px;
            width: 100%;
            margin: 20px auto;
        }
        .profile-info {
            background-color: #e9ecef;
            padding: 20px;
            border-radius: 10px;
            border: 1px solid #ced4da;
            font-size: 22px; /* Increased font size */
            color: #495057;
            line-height: 1.8;
            margin-top: 25px;
        }
        .label {
            font-weight: bold;
            color: #007bff;
        }
    </style>
</head>
<body>
<%@include file="mainnavbar.jsp" %>
<h3><u>Home</u></h3>
<div class="profile-container">
    <h3>Election Monitoring System</h3>
    <div class="profile-info">
        <p><span class="label">Transparency and Accountability:</span> The Election Monitoring System provides real-time updates, error detection, and live reporting to ensure a fair and credible election process.</p>
        <p><span class="label">Empowering Voters:</span> It educates upcoming voters, promotes inclusive participation, and engages users through gamified features and interactive content.</p>
        <p><span class="label">Technology and Trust:</span> Secure technologies like blockchain and AI-powered insights build voter confidence and safeguard the electoral process.</p>
        <p><span class="label">Community Engagement:</span> Social media integration, campaigns targeting youth, and recognizing participation help in inspiring and motivating upcoming voters.</p>
        <p><span class="label">Accessibility:</span> Multi-language support, mobile-friendly design, and assistance for differently-abled voters ensure no one is left behind.</p>
    </div>
</div>
</body>
</html>