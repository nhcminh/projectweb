<%-- 
    Document   : Homepage
    Created on : May 10, 2018, 2:00:37 PM
    Author     : Nghia
--%>

<%@page import="Model.User"%>
<%@page import="Controller.UserController"%>
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
                margin-top: 5%;
            }
            
            .fa {
                    font-size: 30px;
                    width: 50px;
                    height: 30px;
                    text-align: center;
                    text-decoration: none;
                    margin: 5px 2px;
                    border-radius: 50%;
                                    }
                                    .fa :hover{
                                       opacity: 0.7; 
                                    }                        
                p{
                    font-family: 'Exo', sans-serif;
                    margin-top: 15px;
                    margin-left: 30px;
                }
                .bg{
                    background-image: url(.../pictures/bghome.jpg);
                }
        </style>
        <title>Home Page</title>
    </head>
    <body data-spy="scroll" data-target=".navbar" data-offset="50">
        <button onclick="topFunction()" class="btn btn-primary btn-lg back-to-top" id="myBtn">Top</button>
        <header>
            <nav class="navbar navbar-brand navbar-fixed-top">
                <div class="container-fluid">
                    <div class="navbar-header" style="padding-left: 5%;">
                        <a class="navbar-brand" href="Homepage.jsp">HMN Travel</a>
                    </div>
                    <ul class="nav navbar-nav">
                        <li><a href="Northzone.jsp">North Zone</a></li>
                        <li><a href="Centralzone.jsp">Central Zone</a></li>
                        <li><a href="Southzone.jsp">South Zone</a></li>
                    </ul>
                    <form class="navbar-form navbar-left" action="/action_page.php">
                        <div class="input-group">
                            <input type="text" class="form-control" placeholder="Search" name="search">
                            <div class="input-group-btn">
                                <button class="btn btn-default" type="submit">
                                    <i class="glyphicon glyphicon-search"></i>
                                </button>
                            </div>
                        </div>
                    </form>
                    <ul class="nav navbar-nav navbar-right" style="padding-right: 5%;">

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
                                            break;
                                        }
                                    }
                                    break;
                                } else {
                                }
                            }
                            if (s.getAttribute("User") == null) {
                                out.println("<li><a href=\"Register.jsp\"><span class=\"glyphicon glyphicon-user\"></span> Sign Up</a></li>"
                                        + "<li><a href=\"Login.jsp\"><span class=\"glyphicon glyphicon-log-in\"></span> Login</a></li>");
                            } else {
                                user = (User) s.getAttribute("User");
                                if (user.getUsername() == null) {
                                    out.println("<li><a href=\"Register.jsp\"><span class=\"glyphicon glyphicon-user\"></span> Sign Up</a></li>"
                                            + "<li><a href=\"Login.jsp\"><span class=\"glyphicon glyphicon-log-in\"></span> Login</a></li>");
                                } else {
                                    out.println("<li>"
                                            +       "<div class=\"dropdown\">\n"
                                            +           "<a style=\"margin-right: 10px;\">"
                                            +               "<img src=\"pictures/animal.jpg\" alt=\"Avatar\" class=\"avatar\"> \n" 
                                            +           "</a>"
                                            +       "<div style=\"white-space: nowrap;overflow: hidden; text-overflow:ellipsis; width:120px; float: right; margin-top: 10%; font-size: x-large; color: #338ed0;\">"
                                            +           user.getFullname()
                                            +       "</div>"
                                            + "</li>"
                                            + "<li>"
                                            +       "<button style=\"background-color: white; color: #338ed0; padding-top: 30%; background: transparent\" class=\"btn dropdown-toggle\" type=\"button\" data-toggle=\"dropdown\">\n"
                                            +           "<span id=\"caret\" class=\"caret\"></span>"
                                            +       "</button>\n"
                                            +       "<ul class=\"dropdown-menu\">\n"
                                            +           "<li><a class=\"glyphicon glyphicon-file blue\" style=\"color:#338ed0\" href=\"Profile.jsp\"><b style=\"margin-left: 20%;\">Profile</b></a></li>\n"
                                            +           "<li><a class=\"glyphicon glyphicon-edit\" style=\"color:#338ed0\" href=\"#\"><b style=\"margin-left: 20%;\">Write Post</a></b></li>\n"
                                            +           "<li class=\"divider\"></li>"
                                            +           "<li><a class=\"glyphicon glyphicon-off\" style=\"color:#338ed0\" href=\"Logout\"><b style=\"margin-left: 20%;\">Logout</a></b></li>\n"
                                            +       "</ul>\n"
                                            +       "</div>"
                                            + "</li>"
                                    );
                                }
                            }
                        %>                       
                    </ul>
                </div>
                <hr>
            </nav>
        </header>
        <div class="bg">            
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
       <div class="container text-center">    
  <h3>What We Do</h3><br>
  <div class="row">
    <div class="col-sm-4">
      <p>Current Project</p>
    </div>
    <div class="col-sm-4"> 
     
      <p>Project 2</p>    
    </div>
    <div class="col-sm-4">

       <p>Some text..</p>
    </div>
  </div>
       </div><br></div>
         <div class="footer" style="margin-left: 30px;">
                <div class="row">
                    <div class="col-sm-9">
                        <p>&copy; 2018 HMN Travel, International University<p>
                    </div>
                    <div class="col-sm-3">
                        <a href="#" class="fa fa-instagram"></a>
                        <a href="https://www.facebook.com/huynhtrungnghia1995" class="fa fa-facebook"></a>
                        <a href="#" class="fa fa-twitter"></a>

                    </div>
                </div>
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
</html>
