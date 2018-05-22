<%-- 
    Document   : Homepage
    Created on : May 10, 2018, 2:00:37 PM
    Author     : a2mrk
--%>
<%@page import="Model.StringBean"%>
<%@page import="Model.User"%>
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
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js"></script>
        <style>
            body{
                font-family: "Helvetica Neue",Helvetica,Arial,sans-serif;
            }
            #myBtn{
                display: none;
                position: fixed;
                bottom: 20px;
                right: 30px;
                z-index: 99;
                font-size: 18px;
                border: none;
                outline: none;
                background-color: #338ed0;
                color: white;
                cursor: pointer;
                padding: 15px;
                border-radius: 4px;
            }
            #myBtn:hover{
                opacity: 0.5;
            }
            .avatar {
                vertical-align: middle;
                width: 40px;
                height: 40px;
                border-radius: 50%;
                
            }
            #avatar{
                width: 45px;
                height: 45px;
                padding: 0px;
                border-radius: 50%;
                background-color: white;
            }
            #avatar:hover, avatar:focus{
                background-color: white;
            }
            
        </style>
        <title>Home Page</title>
    </head>
    <body data-spy="scroll" data-target=".navbar" data-offset="50">
        <button onclick="topFunction()" class="btn btn-primary btn-lg back-to-top" id="myBtn">Top</button>
        <%
            HttpSession s = request.getSession();
            UserController controller = new UserController();
            User user = null;
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
                            break;
                        }
                    }
                    break;
                } else {
                }
            }
            StringBean print = new StringBean();
            out.println(print.header(user, s));
        %>

        <div class="container">
            <div id="myCarousel" class="carousel slide" data-ride="carousel">
                <!-- Indicators -->
                <ol class="carousel-indicators">
                    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                    <li data-target="#myCarousel" data-slide-to="1"></li>
                    <li data-target="#myCarousel" data-slide-to="2"></li>
                </ol>

                <!-- Wrapper for slides -->
                <div class="carousel-inner">

                    <div class="item active">
                        <img src="pictures/animal.jpg" alt="animal" style="width:100%; height:500px; ">
                        <div class="carousel-caption">
                        </div>
                    </div>
                    <div class="item">
                        <img src="pictures/blueberry.jpg" alt="blueberry" style="width:100%;    height:500px;">
                        <div class="carousel-caption">
                        </div>
                    </div>

                    <div class="item">
                        <img src="pictures/seemed.jpg" alt="seemed" style="width:100%;  height:500px;">
                        <div class="carousel-caption">
                        </div>
                    </div> 
                </div>

                <!-- Left and right controls -->
                <a class="left carousel-control" href="#myCarousel" data-slide="prev">
                    <span class="glyphicon glyphicon-chevron-left"></span>
                    <span class="sr-only">Previous</span>
                </a>
                <a class="right carousel-control" href="#myCarousel" data-slide="next">
                    <span class="glyphicon glyphicon-chevron-right"></span>
                    <span class="sr-only">Next</span>
                </a>
            </div>
        </div>
        <hr>
        <hr>
        <hr>
        <div class="footer">
            <a href="#" class="fa fa-instagram"></a>
            <a href="#" class="fa fa-facebook"></a>
            <a href="#" class="fa fa-twitter"></a>
        </div>
        <script>
            window.onscroll = function () {
                scrollFunction();
            };

            function scrollFunction() {
                if (document.body.scrollTop > 20 || document.documentElement.scrollTop > 20) {
                    document.getElementById("myBtn").style.display = "block";
                } else {
                    document.getElementById("myBtn").style.display = "none";
                }
            }

            function topFunction() {
                document.body.scrollTop = 0;
                document.documentElement.scrollTop = 0;
            }</script>
    </body>
</body>
</html>
