<%-- 
    Document   : Login
    Created on : May 5, 2018, 10:39:20 AM
    Author     : Nghĩa
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="css/Loginstyle.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <title>Login Page</title>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/prefixfree/1.0.7/prefixfree.min.js"></script>


      <body>

        <div class="body"></div>
        <div class="grad"></div>
        <div class="header">
            <div>Login<span>Page</span></div>
        </div>
        <br>
        <div class="login">
            <form>
                <input type="text" placeholder="Username" name="user"><br>
                <input type="password" placeholder="Password" name="password"><br>
                <input type="checkbox" value="checkremember"> Remember Me
                <a href="Forgotpass" style="padding-left: 28px; color:white;" ><u>Forgot Password</u></a><br>
                <input type="submit" value="Login"><br>
                <a href="Homepage.jsp" class="btn btn-default" role="button">Back to Home</a>
            </form>
        </div>
        <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
    </body>

</html>