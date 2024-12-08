<html>
<head>
    <title>Voter Login</title>
</head>
<body>
  <%@include file="mainnavbar.jsp" %>
 
    <h3 style="text-align: center;"><u>Voter Login</u></h3>
    <div class="form-container">
        <form method="post" action="checkvoterlogin">
            <table>
                <tr>
                    <td><label for="eemail">Enter Email ID</label></td>
                    <td><input type="email" id="vemail" name="vemail" required/></td>
                </tr>
                 <tr>
                    <td><label for="epwd">Enter Password</label></td>
                    <td><input type="password" id="vpwd" name="vpwd" required/></td>
                </tr>
                <tr>
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