<!DOCTYPE html>
<html>
<head>
    <title>Analyst Login</title>
</head>
<body>
  <%@include file="mainnavbar.jsp" %>
    <h3 style="text-align: center;"><u>Candidate Login</u></h3>
    <div class="form-container">
        <form method="post" action="checkcandidatelogin">
            <table>
                <tr>
                    <td><label for="auname">Enter Username</label></td>
                    <td><input type="text" id="cemail" name="cemail" required/></td>
                </tr>
                 <tr>
                    <td><label for="apwd">Enter Password</label></td>
                    <td><input type="password" id="cpwd" name="cpwd" required/></td>
                </tr>
                <tr>
                    <td colspan="2" class="button-container">
                        <input type="submit" value="Login"/>
                        <input type="reset" value="Clear"/>
                    </td>
                </tr>
            </table>
        </form>
    </div>
</body>
</html>