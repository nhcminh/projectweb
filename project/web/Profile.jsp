<%-- 
    Document   : Profile
    Created on : May 13, 2018, 2:12:13 PM
    Author     : Nghĩa
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="css/Profile.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <title>Profile</title>
    </head>
    <body data-spy="scroll" data-target=".navbar" data-offset="50">
        <header>
            <nav class="navbar navbar-inverse navbar-fixed-top">
                <div class="container-fluid">
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>                        
                        </button>
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
                    <ul class="nav navbar-nav navbar-right">
                        <li><a href="Register.jsp"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
                        <li><a href="Login.jsp"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
                    </ul>
                </div>
            </nav>
        </header>
        <div class="container">
            <div class="panel-group" id="accordion">
                <div class="row content">
                    <div class="col-sm-3 sidenav">
                        <h4>User Profile</h4>
                        <ul class="nav nav-pills nav-stacked">
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <h4 class="panel-title">
                                        <li class="active"><a href="#demo" data-parent="#accordion" data-toggle="collapse">Profile</a></li></h4>
                                    <h4 class="panel-title">
                                        <li class="active"><a href="#demo1" data-parent="#accordion" data-toggle="collapse">Change Password</a></li></h4>
<!--                                    <li><a href="#section3">Family</a></li>
                                    <li><a href="#section3">Photos</a></li>-->
                                </div>
                            </div>
                        </ul><br>
                    </div>

                    <div class="col-sm-9">
                        <div id="demo"  class="panel-collapse collapse in">
                            <div class="panel-body">
                                <h4><small>Contact Information</small></h4>
                                <hr>
                                <h2>User Name:</h2>
                                <h5><span class="label label-success">Admin</span></h5><br>
                                <p>Phone:0901434542</p>
                                <p>Address:</p>
                                <p>Email: huynhtrungnghia1995@gmail.com</p>
                                <p>Facebook:</p>
                                <br>
                                <h4><small>Basic Information</small></h4>
                                <hr>
                                <p>Birthday: 30 November,1995</p>
                                <p>Gender: Male</p>
                                <hr>
                            </div>
                        </div>
                        <div id="demo1" class="panel-collapse collapse">
                            <div class="panel-body">
                                <h4><small>Change Password</small></h4>
                                New Password:
                                <input type="password" name="password"><br>
                                Repeat Password:
                                <input type="password" name="password1">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <footer class="container-fluid">
            <p>Footer Text</p>
        </footer>



    </body>
</html>
