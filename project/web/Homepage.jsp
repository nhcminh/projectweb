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
        <link rel="stylesheet" type="text/css" href="css/carousel.css">
        <link href="css/bootstrap.min.css" rel="stylesheet">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    </head>
    <body>
        <header>
            <div class="topnav">
                <div class="home">
                    <a class="active" href="HomePage.jsp"><i class="fa fa-home"></i></a>
                        <%
                            HttpSession s = request.getSession();
                            UserController controller = new UserController();
                            User user;
                            Cookie cs[] = request.getCookies();
                            Cookie c = null;
                            for (int i = 0; i < cs.length; i++) {
                                if (cs[i].getName().equals("remember")) {
                                    for (int j = 0; j < cs.length; j++) {
                                        if (cs[j].getName().equals(cs[i].getValue()) && controller.login(cs[j].getName(), cs[j].getValue()) == true) {
                                            user = controller.getInfor(cs[j].getName());
                                            s.setAttribute("User", user);
                                            break;
                                        } else {
                                            out.println("<a href=\"Login.jsp\" class=\"btn btn-info\" role=\"button\">Login</a>");
                                        }
                                    }
                                    break;
                                } else {
                                }
                            }
                            if (s.getAttribute("User") == null) {
                                out.println("<a href=\"Login.jsp\" class=\"btn btn-info\" role=\"button\">Login</a>");
                            } else {
                                user = (User) s.getAttribute("User");
                                System.out.println(user.getUsername());
                                if (user.getUsername() == null) {
                                    out.println("<a href=\"Login.jsp\" class=\"btn btn-info\" role=\"button\">Login</a>");
                                } else {
                                    out.println("<a href=\"Profile.jsp\" class=\"btn btn-info\" role=\"button\">" + user.getFullname() + "</a>");
                                }
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
        </header>
        <div id="myCarousel" class="carousel slide" data-ride="carousel">
            <ol class="carousel-indicators">
                <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                <li data-target="#myCarousel" data-slide-to="1"></li>
                <li data-target="#myCarousel" data-slide-to="2"></li>
            </ol>
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <img class="first-slide" src="data:image/gif;base64,R0lGODlhAQABAIAAAHd3dwAAACH5BAAAAAAALAAAAAABAAEAAAICRAEAOw==" alt="First slide">
                    <div class="container">
                        <div class="carousel-caption text-left">
                            <h1>Example headline.</h1>
                            <p>Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
                            <p><a class="btn btn-lg btn-primary" href="#" role="button">Sign up today</a></p>
                        </div>
                    </div>
                </div>
                <div class="carousel-item">
                    <img class="second-slide" src="data:image/gif;base64,R0lGODlhAQABAIAAAHd3dwAAACH5BAAAAAAALAAAAAABAAEAAAICRAEAOw==" alt="Second slide">
                    <div class="container">
                        <div class="carousel-caption">
                            <h1>Another example headline.</h1>
                            <p>Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
                            <p><a class="btn btn-lg btn-primary" href="#" role="button">Learn more</a></p>
                        </div>
                    </div>
                </div>
                <div class="carousel-item">
                    <img class="third-slide" src="data:image/gif;base64,R0lGODlhAQABAIAAAHd3dwAAACH5BAAAAAAALAAAAAABAAEAAAICRAEAOw==" alt="Third slide">
                    <div class="container">
                        <div class="carousel-caption text-right">
                            <h1>One more for good measure.</h1>
                            <p>Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
                            <p><a class="btn btn-lg btn-primary" href="#" role="button">Browse gallery</a></p>
                        </div>
                    </div>
                </div>
            </div>
            <a class="carousel-control-prev" href="#myCarousel" role="button" data-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="sr-only">Previous</span>
            </a>
            <a class="carousel-control-next" href="#myCarousel" role="button" data-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="sr-only">Next</span>
            </a>
        </div>




        <div class="footer">
            <a href="#" class="fa fa-instagram"></a>
            <a href="#" class="fa fa-facebook"></a>
            <a href="#" class="fa fa-twitter"></a>
        </div>
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
        <script>window.jQuery || document.write('<script src="js/jquery-slim.min.js"><\/script>');</script>
        <script src="js/popper.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <!-- Just to make our placeholder images work. Don't actually copy the next line! -->
        <script src="js/holder.min.js"></script>

    </body>
</html>
