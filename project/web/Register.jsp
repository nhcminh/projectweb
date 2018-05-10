<%-- 
    Document   : Register
    Created on : May 10, 2018, 2:01:42 PM
    Author     : a2mrk
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="css/Style.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <title>Login Page</title>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/prefixfree/1.0.7/prefixfree.min.js"></script>


    <body>
        <div class="body"></div>
        <div class="grad"></div>
        <div class="header">
            <div>Register<span>Page</span></div>
        </div>
        <br>
        <div class="login">
            <form>      
                <input type="text" placeholder="Fullname" name="fullname"><br>
                <input type="text" placeholder="Username" name="user"><br>
                <input type="password" placeholder="Password" name="password"><br>
                <input type="email" placeholder="Email" name="email"><br>                                
                <input type="button" value="Register"><br>                              
                <a href="Login.jsp" class="btn btn-default" role="button">Login</a>
            </form>

        </div>
        <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
    </body>

</html>