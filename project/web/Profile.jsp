<%-- 
    Document   : Profile
    Created on : May 13, 2018, 2:12:13 PM
    Author     : Nghĩa
--%>

<%@page import="Model.User"%>
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
        <script src="js/profile.js"></script>
        <title>Profile</title>
    </head>
    <body data-spy="scroll" data-target=".navbar" data-offset="50">
        <%
                        HttpSession s = request.getSession();
                        if (s.getAttribute("User") == null) {
                        } else {
                            User user = (User) s.getAttribute("User");
                    %>
        <header>
            <nav class="navbar navbar-brand navbar-fixed-top">
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
                        <li>
                            <a href="Northzone.jsp">North Zone</a>
                        </li>
                        <li>
                            <a href="Centralzone.jsp">Central Zone</a>
                        </li>
                        <li>
                            <a href="Southzone.jsp">South Zone</a>
                        </li>
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
                        <% 
                        out.println("<li><a href=\"Profile.jsp\"><span class=\"glyphicon glyphicon-user\" style=\"padding-right: 10px;\"></span>"+ user.getFullname() +"</a></li>");
                        %>
                    </ul>
                </div>
                <hr>
            </nav>
        </header>
        <div class="container">
            <div class="panel-group" id="accordion">
                <div class="panel panel-default">

                    <div class="panel-heading">
                        <h2 style="color:#338ed0;"><strong>User Profile</strong></h2>
                        <h4 class="panel-title profile">
                            <a href="#"  style="color:#00BFFF;">Profile</a>
                        </h4>
                        <h4 class="panel-title changepass">
                            <a href="#"  style="color:#00BFFF;">Change Password</a>
                        </h4>
                    </div>                               
                    <div class="panel-body demo">
                        <div class="bg-black"></div>
                        <!--<div class="panel-body">-->
                        <h4>
                            <small>Contact Information</small>
                        </h4>
                        <hr>
                        <h2>User Name: <% out.println(""+user.getFullname()); %></h2>
                        <h5>
                            <span class="label label-success"><%out.println(""+user.getRole()); %></span>
                        </h5>
                        <br>
                        <p>Phone:0901434542</p>
                        <p>Address:</p>
                        <p>Email: <% out.println(""+user.getEmail()); }%></p>
                        <p>Facebook:</p>
                        <br>
                        <h4>
                            <small>Basic Information</small>
                        </h4>
                        <hr>
                        <p>Birthday: 30 November,1995</p>
                        <p>Gender: Male</p>
                        <hr>
                        <!--</div>-->
                        <button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#myModal">Edit Profile</button>
                        <div id="myModal" class="modal fade" role="dialog">
                            <div class="modal-dialog">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                                        <h3 class="modal-title">Edit Profile</h3>
                                    </div>                                            
                                    <form>
                                        <div class="modal-body">
                                            <table>
                                                <tr><td>User name:</td>
                                                    <td><input type="text" name ="username"></td>
                                                </tr>
                                                <tr><td>Phone Number:</td>
                                                    <td><input type="text" name ="numberphone"></td>
                                                </tr>
                                                <tr><td>Address</td>
                                                    <td><input type="text" name ="address"></td>
                                                </tr>
                                                <tr><td>Email:</td>
                                                    <td><input type="email" name ="email"></td>
                                                </tr>
                                                <tr><td>Birth Day:</td>
                                                    <td><input type="text" name ="birthday"></td>
                                                </tr>
                                                <tr><td>Gender</td>

                                                    <td><div class="rad"><input type="radio" name ="gender" value="Male"> Male
                                                            <input type="radio" name ="gender" value="Female"> FeMale
                                                            <input type="radio" name="gender" value="other"> Other</div></td>

                                                </tr>
                                            </table>

                                        </div>
                                        <div class="modal-footer">
                                            <button type="submit" class="btn btn-primary" >Submit</button>
                                            <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="panel-body demo1" style="display: none">
                        <div class="bg-black"></div>
                        <!--<div class="panel-body">-->
                        <h3 style="color:#00BFFF;">Change Password</h3>
                        <hr>
                        <table>
                            <tr>
                                <td>
                                    <strong>Old Password:</strong>
                                </td>                                 
                                <td>
                                    <input type="password" name="password">
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <strong>New Password:</strong>
                                </td>                                  
                                <td>
                                    <input type="password" name="newpassword">
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <strong>Repeat Password:</strong>
                                </td>                                   
                                <td>
                                    <input type="password" name="newpassword1">
                                </td>
                            </tr>
                            <tr>
                                <td>

                                </td>
                                <td>
                                    <input type="submit" value="Change Password">
                                </td>
                            </tr>
                        </table>
                        <!--</div>-->
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
