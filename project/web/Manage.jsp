<%-- 
    Document   : Manage
    Created on : May 20, 2018, 3:07:22 PM
    Author     : Nghĩa
--%>

<%@page import="Controller.UserController"%>
<%@page import="Model.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Administrator Manage </title>
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
            #caret{
                border-top: 10px dashed;
                border-left: 10px solid transparent;
                border-right: 10px solid transparent;
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
            .sidenav {
                font-family: "Helvetica Neue",Helvetica,Arial,sans-serif;
                text-align: center;
                height: 100%;
                width: 210px;
                position: fixed;
                z-index: 1;
                top: 0;
                left: 0;
                background-color: transparent;
                overflow-x: hidden;
                padding-top: 20px;
                margin-top: 88px;
                 border-style: solid;
                border-color: transparent #338ed0 transparent transparent;
            }

            /* Style the sidenav links and the dropdown button */
            .sidenav a, .dropdown-btn {
                padding: 6px 8px 6px 16px;
                text-decoration: none;
                font-size: 20px;
                color: #338ed0;
                display: block;
               border: none;
                background: transparent;
                width: 100%;
                text-align: left;
                cursor: pointer;
                outline: none;
            }
            .sidenav h3{
                color:#338ed0;
            }
            /* On mouse-over */
            .sidenav a:hover, .dropdown-btn:hover {
                text-decoration:none;
                opacity: 0.7;
            }

            /* Main content */

            /* Add an active class to the active dropdown button */
            .active {
                background-color: transparent;
                color: #338ed0;
            }

            /* Dropdown container (hidden by default). Optional: add a lighter background color and some left padding to change the design of the dropdown content */
            .dropdown-container {
                display: none;
                background-color: transparent;
                padding-left: 8px;              
            }
            .dropdown-container a{
                 font-size: 15px;
            }
            @media screen and (max-height: 450px) {
                .sidenav {padding-top: 15px;}
                .sidenav a {font-size: 18px;}
            }
        </style>
    </head>
    <body>
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
                                            + "<div class=\"dropdown\">\n"
                                            + "<a style=\"margin-right: 10px;\">"
                                            + "<img src=\"pictures/animal.jpg\" alt=\"Avatar\" class=\"avatar\"> \n"
                                            + "</a>"
                                            + "<div style=\"white-space: nowrap;overflow: hidden; text-overflow:ellipsis; width:120px; float: right; margin-top: 10%; font-size: x-large; color: #338ed0;\">"
                                            + user.getFullname()
                                            + "</div>"
                                            + "</li>"
                                            + "<li>"
                                            + "<button style=\"background-color: white; color: #338ed0; padding-top: 30%; background: transparent\" class=\"btn dropdown-toggle\" type=\"button\" data-toggle=\"dropdown\">\n"
                                            + "<span id=\"caret\" class=\"caret\"></span>"
                                            + "</button>\n"
                                            + "<ul class=\"dropdown-menu\">\n"
                                            + "<li><a class=\"glyphicon glyphicon-file blue\" style=\"color:#338ed0\" href=\"Profile.jsp\"><b style=\"margin-left: 20%;\">Profile</b></a></li>\n"
                                            + "<li><a class=\"glyphicon glyphicon-edit\" style=\"color:#338ed0\" href=\"#\"><b style=\"margin-left: 20%;\">Write Post</a></b></li>\n"
                                            + "<li class=\"divider\"></li>"
                                            + "<li><a class=\"glyphicon glyphicon-off\" style=\"color:#338ed0\" href=\"Logout\"><b style=\"margin-left: 20%;\">Logout</a></b></li>\n"
                                            + "</ul>\n"
                                            + "</div>"
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

        <div class="sidenav">
            <H3><strong>Manage System</strong></H3>
            <a href="#">Manage Article </a>
            <button class="dropdown-btn">Manage User 
            </button>
            <div class="dropdown-container">
                <a href="#">Manage Account</a>
                <a href="#">Manage Role</a>
            </div>            
            <button class="dropdown-btn">Manage Publishing
            </button>
            <div class="dropdown-container">
                <a href="#">Manage Publish Post</a>
                <a href="#">Manage Pending Post</a>               
                <a href="#">Manage Comment</a>
            </div>       
        </div>
     <script>
            var dropdown = document.getElementsByClassName("dropdown-btn");
            var i;

            for (i = 0; i < dropdown.length; i++) {
                dropdown[i].addEventListener("click", function () {
                    this.classList.toggle("active");
                    var dropdownContent = this.nextElementSibling;
                    if (dropdownContent.style.display === "block") {
                        dropdownContent.style.display = "none";
                    } else {
                        dropdownContent.style.display = "block";
                    }
                });
            }
        </script>
    </body>
</html>
