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
<title>Voter Home</title>
</head>
<body>
<%@ include file="voternavbar.jsp" %>
<h3><u>Voter Home</u></h3>
<h1>Welcome <%= v.getName() %></h1>
</body>
</html>
