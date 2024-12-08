<%@ page import="com.klef.jfsd.sdpproject.model.Voter" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<%
  Voter v = (Voter) session.getAttribute("voter");
  if (v == null) {
    response.sendRedirect("votersessionfail"); 
    return;
  }
%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Voter Profile</title>
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
            max-width: 500px;
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

    <%@ include file="voternavbar.jsp" %>
    
    <h3>My Profile</h3>
    <div class="profile-info">
        <span class="label">ID:</span> <%= v.getId() %><br>
        <span class="label">Name:</span> <%= v.getName() %><br>
        <span class="label">Gender:</span> <%= v.getGender() %><br>
        <span class="label">Date Of Birth:</span> <%= v.getDateofbirth() %><br>
        <span class="label">Martial Status:</span> <%= v.getMartialstatus() %><br>
        <span class="label">Location:</span> <%= v.getLocation() %><br>
        <span class="label">Email:</span> <%= v.getEmail() %><br>
        <span class="label">Password:</span> *****<br>
        <span class="label">Contact:</span> <%= v.getContact() %><br>
    </div>

</body>
</html>
