<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Election Schedule</title>
</head>
<body>
<%@include file="voternavbar.jsp" %>
    <h1>Election Schedule</h1>
    <table border="1">
        <thead>
            <tr>
                <th>Location</th>
                <th>Start Date</th>
                <th>End Date</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="election" items="${elections}">
                <tr>
                    <td>${election.location}</td>
                    <td>${election.startDate}</td>
                    <td>${election.endDate}</td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
</body>
</html>
