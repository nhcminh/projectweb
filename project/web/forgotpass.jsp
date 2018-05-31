<%-- 
    Document   : forgotpass
    Created on : May 31, 2018, 11:48:03 AM
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
    </head>
    <body>
        <div class="body"></div>
        <div class="grad"></div>
        <div class="header">
            <div>Forgot<span>Pass</span></div>
        </div>
        <br>
        <div class="login">
            <form>
                <input type="text" placeholder="Username" name="user"><br>
                <input type="email" placeholder="Email" name="email"><br>              
                <input type="submit" value="Submit"><br>
                <a href="Homepage.jsp" class="btn btn-default" role="button">Back to Home</a>
            </form>
        </div>
    </body>
</html>
