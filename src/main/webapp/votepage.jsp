<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Vote Page</title>
</head>
<body>
    <h1>Registered Candidates</h1>
    <form action="/vote/submitVote" method="post">
        <table border="1" cellpadding="10">
            <tr>
                <th>Candidate Name</th>
                <th>Party Name</th>
                <th>Action</th>
            </tr>
            <c:forEach var="candidate" items="${candidates}">
                <tr>
                    <td>${candidate.name}</td>
                    <td>${candidate.partyName}</td>
                    <td>
                        <input type="radio" name="candidateId" value="${candidate.id}" />
                        <label>Select</label>
                    </td>
                </tr>
            </c:forEach>
        </table>
        <br />
        <button type="submit">Cast Your Vote</button>
    </form>
</body>
</html>
