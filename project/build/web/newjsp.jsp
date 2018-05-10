<%-- 
    Document   : newjsp
    Created on : May 10, 2018, 12:22:45 PM
    Author     : a2mrk
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="Controller.UserController"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form method="post">
            <input type="text" name="username">
            <input type="password" name="password">
            <input type="submit">
        </form>
        <%
            UserController controller = new UserController();
            String username = request.getParameter("username");
            String password = request.getParameter("password");
            if (username == null || password == null) {
            } else {
                if (controller.login(username, password) == true) {
                    out.println("Welcome");
                }else{
                    out.println("Enter again");
                }
            }
        %>
    </body>
</html>
