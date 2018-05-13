<%-- 
    Document   : Login
    Created on : May 10, 2018, 2:01:09 PM
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
            <div>Login<span>Page</span></div>
        </div>
        <br>
        <div class="login">
            <form>
                <input type="text" placeholder="Username" name="user"><br>
                <input type="password" placeholder="Password" name="password"><br>
                <input type="checkbox" value="checkremember"> Remember Me <br>
                <input type="submit" value="Login"><br>
                <a href="Register.jsp" class="btn btn-default" role="button">Register</a>
                <a href="Homepage.jsp" class="btn btn-default" role="button">Back to Home</a>
            </form>
            <% 
                String username = request.getParameter("user");
                String password = request.getParameter("password");
                String remember = request.getParameter("checkremember");
                if(remember == null)
                    remember = "0";
                UserController controller = new UserController();
                HttpSession s = request.getSession();              
                if (username == null || password == null) {
                } else if (controller.login(username, password) == true) {
                    s.setAttribute("User", controller.getInfor(username));
                    if (remember.equals("1")) {
                        Cookie c1 = new Cookie("remember", username);
                        Cookie c2 = new Cookie(username, password);
                        c1.setMaxAge(3000);
                        c2.setMaxAge(3000);
                        response.addCookie(c1);
                        response.addCookie(c2);
                    }
                    response.sendRedirect("Homepage.jsp");
                } else {
                    out.println("Enter again!!!");
                }
             
            %>
        </div>
        <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
    </body>

</html>
