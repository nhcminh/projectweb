<%-- 
    Document   : Homepage
    Created on : May 10, 2018, 2:00:37 PM
    Author     : a2mrk
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Home Page</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" type="text/css" href="css/Style.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    </head>
    <body>

        <%
            HttpSession s = request.getSession();
            User user = (User) s.getAttribute("User");
            UserController controller = new UserController();

        %>
        <div class="topnav">
            <div class="home">
                <a class="active" href="HomePage.jsp"><i class="fa fa-home"></i></a>
                    <%  if (user.getUsername() == null) {
                            out.println("<a href=\"Login.jsp\" class=\"btn btn-info\" role=\"button\">Login</a>");
                        } else {
                            out.println("<a href=\"#\" class=\"btn btn-info\" role=\"button\">"+user.getUsername()+"</a>");
                        }
                    %>
            </div>
            <div class="button">
                <a href="#" class="btn btn-link" role="button">North Zone</a>
                <a href="#" class="btn btn-link" role="button">Central Zone</a>
                <a href="#" class="btn btn-link" role="button">South Zone</a>
                <button type="button" class="btn btn-info">
                    <span class="glyphicon glyphicon-search"></span> Search
                </button>
            </div>
        </div>

        <div class="content">
            <img class="mySlides" src="animal.jpg">
            <img class="mySlides" src="blueberry.jpg">
            <img class="mySlides" src="flower.jpg">
            <img class="mySlides" src="seemed.jpg">
            <button class="w3-button w3-display-left" onclick="plusDivs(-1)">&#10094;</button>
            <button class="w3-button w3-display-right" onclick="plusDivs(+1)">&#10095;</button>

        </div>
        <script>
            var slideIndex = 1;
            showDivs(slideIndex);
            function plusDivs(n) {
                showDivs(slideIndex += n);
            }
            function showDivs(n) {
                var i;
                var x = document.getElementsByClassName("mySlides");
                if (n > x.length) {
                    slideIndex = 1;
                }
                if (n < 1) {
                    slideIndex = x.length;
                }
                for (i = 0; i < x.length; i++) {
                    x[i].style.display = "none";
                }
                x[slideIndex - 1].style.display = "block";
            }
        </script>
        <div class="footer">
            <a href="#" class="fa fa-instagram"></a>
            <a href="#" class="fa fa-facebook"></a>
            <a href="#" class="fa fa-twitter"></a>
        </div>


    </body>
</html>
