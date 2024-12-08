<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Candidate Registration</title>
    <style>
        /* General page styling */
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f9;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        h1 {
            text-align: center;
            color: #333;
        }

        /* Form container styling */
        form {
            background: #ffffff;
            padding: 20px 40px;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            width: 100%;
            max-width: 400px;
        }

        /* Form labels */
        label {
            font-size: 14px;
            color: #555;
            margin-bottom: 6px;
            display: block;
        }

        /* Form input fields */
        input[type="text"],
        input[type="email"],
        input[type="password"] {
            width: 100%;
            padding: 10px;
            margin-bottom: 15px;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
            font-size: 14px;
        }

        /* Submit button styling */
        input[type="submit"] {
            background-color: #4CAF50;
            color: white;
            border: none;
            padding: 12px;
            border-radius: 4px;
            cursor: pointer;
            width: 100%;
            font-size: 16px;
            font-weight: bold;
        }

        input[type="submit"]:hover {
            background-color: #45a049;
        }

        /* Responsive design */
        @media (max-width: 500px) {
            form {
                padding: 20px;
                width: 90%;
            }
        }
    </style>
</head>
<body>
<%@include file="candidatenavbar.jsp" %>
    <h1>Candidate Registration Form</h1>
    <form action="/candidate/register" method="post">
        <label for="name">Candidate Name:</label>
        <input type="text" id="name" name="name" required><br>
        <label for="partyName">Party Name:</label>
        <input type="text" id="partyName" name="partyName" required><br>
        <label for="email">Email:</label>
        <input type="email" id="email" name="email" required><br>
        <label for="password">Password:</label>
        <input type="password" id="password" name="password" required><br>
        <input type="submit" value="Register">
    </form>
</body>
</html>
