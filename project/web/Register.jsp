<%-- 
    Document   : Register
    Created on : May 10, 2018, 2:01:42 PM
    Author     : a2mrk
--%>

<%@page import="Controller.UserController"%>
<%@page import="Model.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="css/Loginstyle.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <title>Register Page</title>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/prefixfree/1.0.7/prefixfree.min.js"></script>
        <script>
        <script type="text/javascript">
            function check(){
            var fullname = document.forms["myForm"]["fullname"].value;
            if (fullname == "")
            {
                alert("Please enter fullname!!"); 
                return false;
            }
            var username = document.forms["myForm"]["user"].value;
            if (username == "")
            {
                alert("Please enter username!!");
                return false;
            }
            var email = document.forms["myForm"]["email"].value;
            var checkemail =email.indexOf("@");
            var point = email.lastIndexOf(".");
            if (email == "") {
            alert("Email Not Empty");
            return false;
            }
            else if ((checkemail <1) || (point< checkemail +2) || (point+2>email.length)) {
            alert("Email Wrong");
            return false;
            }
            var password = document.forms["myForm"]["password"].value;
            var repassword = document.forms["myForm"]["password2"].value;
            if (password == "")
            {
                alert("Password Not Empty");
            return false;
            }
            if (repassword == "")
            {
                alert("Re-Password Not Empty");
            return false;
            }
            if (password != repassword)
            {
                alert("Password and Re-Password not match");
                return false;
            }}
            </script>
        </script>

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
                <input type="password" placeholder="Re-Enter Password" name="password2"><br>
                <input type="email" placeholder="Email" name="email"><br>                                
                <input type="submit" value="Register"><br>
                <div class="register">
                    <a href="Login.jsp" class="btn btn-primary" role="button">Login</a>
                    <a href="Homepage.jsp" class="btn btn-primary" role="button">Back to Home</a>
                </div>
            </form>
            <%
                UserController controller = new UserController();
                User user = new User();
                String Fullname = request.getParameter("fullname");
                String Username = request.getParameter("user");
                String Password = request.getParameter("password");
                String Password2 = request.getParameter("password2");
                String Email = request.getParameter("Email");

                if (Fullname != null && Username != null && Password != null && Password2 != null && Email != null & Password.equals(Password2)) {
                    user.setFullname(Fullname);
                    user.setUsername(Username);
                    user.setPassword(Password);
                    user.setEmail(Email);
                    controller.Register(user);
                }
            %>
        </div>
        <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
    </body>

</html>
