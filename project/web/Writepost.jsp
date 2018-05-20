<%-- 
    Document   : writepost
    Created on : May 18, 2018, 8:12:50 PM
    Author     : a2mrk
--%>

<%@page import="Model.User"%>
<%@page import="Controller.UserController"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta charset="UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" type="text/css" href="css/Style.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js"></script>
        <script src="editor/ckeditor.js" language="javascript"></script>
        <style> 
            input,textarea{margin:5px;}
#tieude{font:16px "Times New Roman", Times, serif;color:#00F;}
#noidung{font:14px "Times New Roman", Times, serif;}
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
            .content{ margin:100px 0px 0px 80px;
            }
            .content input[type=submit]{
                width: 250px;
                height: 35px;
                background: #FF66CC;
                border: 1px solid #fff;
                cursor: pointer;
                border-color:#FF66CC;
                border-radius: 2px;
                color: white;
                font-family: 'Exo', sans-serif;
                font-size: 16px;
                font-weight: 400;
                padding: 6px;
                margin-top: 10px;
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
        <div class="content">
           <div style="float:left;width:962px;padding:20px;">
<form action="Viewpost.jsp" method="get">
<table border="0" cellpadding="0" cellspacing="0" align="center">
<tr>
	<td>Title : </td><td><input type="text" name="title" id="texttitle" size="40"/></td>
</tr>
<tr>
	<td>Content : </td><td><textarea name="content" id="textcontent" rows="10" cols="40"></textarea></td>
</tr>
<tr>
    <td>Select Your Post's Zone:</td> 
    <td><input type="radio" name="zone" value="north"> North
                <input type="radio" name="zone" value="central"> Central
                <input type="radio" name="zone" value="south"> South</td>
</tr>    
<tr><td></td><td>          <input type="submit" value="Submit Post"></td></tr>
<script type="text/javascript" language="javascript">

	CKEDITOR.replace( 'content' );

</script>  
 
</table>
</form>
</div>
        </div>
    </body>
</html>
