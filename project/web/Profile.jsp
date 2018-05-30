<%-- 
    Document   : Profile
    Created on : May 13, 2018, 2:12:13 PM
    Author     : Nghĩa
--%>

<%@page import="Model.StringBean"%>
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
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js"></script>
        <script src="js/profile.js"></script>
        <title>Profile</title>
        <script>
            function checkprofile(){
            
            var email=document.forms["profile"]["email"].value;
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
            }
            function checkpass(){
                var password =document.forms["pass"]["newpassword"].value;
                var newpassword =document.forms["pass"]["newpassword"].value;
            var repassword =document.forms["pass"]["newpassword1"].value;
            if (password=="")
            {
                alert("Password Not Empty");
            return false;
            }
             if (newpassword=="")
            {
                alert("New Password Not Empty");
            return false;
            }
            if (repassword=="")
            {
                alert("New Re-Password Not Empty");
            return false;
            }
            if (newpassword != repassword)
            {
                alert("New Password and New Re-Password not match");
                return false;
            }
            }
        </script>
        <style>
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
    </head>
    <body data-spy="scroll" data-target=".navbar" data-offset="50">
        <%
            HttpSession s = request.getSession();
            if (s.getAttribute("User") == null) {
                response.sendRedirect("Homepage.jsp");
            } else {
                User user = (User) s.getAttribute("User");
                StringBean print = new StringBean();
                out.println(print.header(user, s));
        %>
        
        <div class="body"></div>
        <div class="grad"></div>
        <div class="container">
            <div class="panel-group" id="accordion" >
                <div class="panel panel-default">
                    <div class="panel-heading" style="background-color: #fff0f5;">
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
                        <h3 style="color:#00BFFF;">
                            Contact Information
                        </h3>
                        <hr>
                        <h2>User Name: <% out.println("" + user.getFullname()); %></h2>
                        <h5>
                            <span class="label label-success"><%out.println("" + user.getRole()); %></span>
                        </h5>
                        <br>
                        <p>Phone:<% out.println("" + user.getPhonenumber()); %></p>                                
                        <p>Email: <% out.println("" + user.getEmail()); %></p>
                        <br>
                        <h4 style="color:#338ed0;">
                            Basic Information
                        </h4>
                        <hr>
                        <p>Birthday: <% out.println("" + user.getDOB()); %></p>
                        <p>Gender: <% out.println("" + user.getGender());
                            }%></p>
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
                                    <form action="EditProfile">
                                        <div class="modal-body">
                                            <table>
                                                <tr>
                                                    <td>
                                                        Full name:
                                                    </td>
                                                    <td>
                                                        <input type="text" name ="fullname">
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        Email:
                                                    </td>
                                                    <td>
                                                        <input type="text" name ="email">
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        Birth Day:
                                                    </td>
                                                    <td>
                                                        <input type="date" name ="birthday">
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        Gender
                                                    </td>
                                                    <td>
                                                        <div class="rad">
                                                            <input type="radio" name ="gender" value="Male"> Male
                                                            <input type="radio" name ="gender" value="Female"> FeMale
                                                            <input type="radio" name="gender" value="other"> Other
                                                        </div>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        Phone Number:
                                                    </td>
                                                    <td>
                                                        <input type="text" name ="phonenumber">
                                                    </td>
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
