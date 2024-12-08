<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Registration</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 20px;
        }
        .form-container {
            background-color: white;
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            max-width: 500px;
            margin: auto;
        }
        table {
            width: 100%;
            margin-top: 10px;
        }
        td {
            padding: 10px 0; /* Add vertical padding for better spacing */
        }
        input[type="text"], input[type="email"], input[type="password"], input[type="date"], input[type="tel"], select {
            width: 100%; /* Make inputs take full width */
            padding: 10px; /* Add padding for better appearance */
            border: 1px solid #ccc; /* Add border for better visibility */
            border-radius: 5px; /* Match the input fields with the container */
            box-sizing: border-box; /* Include padding in the element's total width */
        }
        input[type="submit"], input[type="reset"] {
            padding: 10px 15px;
            border: none;
            background-color: #5cb85c;
            color: white;
            cursor: pointer;
            border-radius: 5px;
        }
        input[type="reset"] {
            background-color: #d9534f;
        }
        input[type="submit"]:hover, input[type="reset"]:hover {
            opacity: 0.9;
        }
    </style>
</head>
<body>
    <%@ include file="mainnavbar.jsp" %>
    <h3 style="text-align: center;"><u>Voter Registration</u></h3>
    <div class="form-container">
        <form method="post" action="insertvoter">
            <table>
                <tr>
                    <td><label for="vname">Enter Name</label></td>
                    <td><input type="text" id="vname" name="vname" required/></td>
                </tr>
                <tr>
                    <td><label>Select Gender</label></td>
                    <td>
                        <input type="radio" id="male" name="vgender" value="MALE" required/>
                        <label for="male">Male</label>
                        <input type="radio" id="female" name="vgender" value="FEMALE" required/>
                        <label for="female">Female</label>
                        <input type="radio" id="others" name="vgender" value="OTHERS" required/>
                        <label for="others">Others</label>
                    </td>
                </tr>
                <tr>
                    <td><label for="vdob">Enter Date of Birth</label></td>
                    <td><input type="date" id="vdob" name="vdob" required/></td>
                </tr>
                <tr>
                    <td><label for="maritalstatus">Select Marital Status</label></td>
                    <td>
                        <select id="maritalstatus" name="vmartialstatus" required>
                            <option value="">---Select---</option>
                            <option value="Single">Single</option>
                            <option value="Married">Married</option>
                            <option value="Other">Other</option>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td><label for="vlocation">Enter Location</label></td>
                    <td><input type="text" id="vlocation" name="vlocation" required/></td>
                </tr>
                <tr>
                    <td><label for="vemail">Enter Email ID</label></td>
                    <td><input type="email" id="vemail" name="vemail" required/></td>
                </tr>
                <tr>
                    <td><label for="vpwd">Enter Password</label></td>
                    <td><input type="password" id="vpwd" name="vpwd" required/></td>
                </tr>
                <tr>
                    <td><label for="vcontact">Enter Contact</label></td>
                    <td><input type="tel" id="vcontact" name="vcontact" required/></td>
                </tr>
                <tr>
                    <td colspan="2" class="button-container">
                        <input type="submit" value="Register"/>
                        <input type="reset" value="Clear"/>
                    </td>
                </tr>
            </table>
        </form>
    </div>
</body>
</html>
