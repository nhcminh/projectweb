/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import javax.servlet.http.HttpSession;

/**
 *
 * @author a2mrk
 */
public class StringBean {

    public String header(User user, HttpSession s) {
        String header = "<header>\n"
                + "            <nav class=\"navbar navbar-brand navbar-fixed-top\">\n"
                + "                <div class=\"container-fluid\">\n"
                + "                    <div class=\"navbar-header\" style=\"padding-left: 5%;\">\n"
                + "                        <a class=\"navbar-brand\" href=\"Homepage.jsp\">HMN Travel</a>\n"
                + "                    </div>\n"
                + "                    <ul class=\"nav navbar-nav\">\n"
                + "                        <li><a href=\"Northzone.jsp\">North Zone</a></li>\n"
                + "                        <li><a href=\"Centralzone.jsp\">Central Zone</a></li>\n"
                + "                        <li><a href=\"Southzone.jsp\">South Zone</a></li>\n"
                + "                    </ul>\n"
                + "                    <form class=\"navbar-form navbar-left\" action=\"/action_page.php\">\n"
                + "                        <div class=\"input-group\">\n"
                + "                            <input type=\"text\" class=\"form-control\" placeholder=\"Search\" name=\"search\">\n"
                + "                            <div class=\"input-group-btn\">\n"
                + "                                <button id=\"search\" class=\"btn btn-default\" type=\"submit\">\n"
                + "                                    <i class=\"glyphicon glyphicon-search\"></i>\n"
                + "                                </button>\n"
                + "                            </div>\n"
                + "                        </div>\n"
                + "                    </form>\n"
                + "                    <ul class=\"nav navbar-nav navbar-right\" style=\"padding-right: 5%;\">";
        if (s.getAttribute("User") == null) {
            header = header + a();
        } else {
            user = (User) s.getAttribute("User");
            if (user.getUsername() == null) {
                header = header + a();
            } else {
                header = header + b(user);
            }
        }
        return header + " </ul>\n"
                + "                </div>\n"
                + "                <hr>\n"
                + "            </nav>\n"
                + "        </header>";
    }

    private String a() {
        return "<li><a href=\"Register.jsp\"><span class=\"glyphicon glyphicon-user\"></span> Sign Up</a></li> <li><a href=\"Login.jsp\"><span class=\"glyphicon glyphicon-log-in\"></span> Login</a></li>";
    }

    private String b(User user) {
        return "<div class=\"dropdown\">\n"
                + "    <button id=\"avatar\" class=\"btn btn-default dropdown-toggle\" type=\"button\" data-toggle=\"dropdown\">\n"
                + "    <img class=\"avatar\" src=\"pictures/lake.jpg\"></img></button>\n"
                + "    <ul class=\"dropdown-menu\">\n"
                + "      <li class=\"dropdown-header\" style=\"white-space: nowrap;overflow: hidden; text-overflow:ellipsis;color:#ff4500; font-size:40px;\">"+user.getUsername()+"</li>\n"
                + "      <li><a class=\"glyphicon glyphicon-file blue\" style=\"color:#338ed0\" href=\"Profile.jsp\"><b style=\"margin-left: 20%;\">Profile</b></a></li>\n"
                + "      <li><a class=\"glyphicon glyphicon-edit\" style=\"color:#338ed0\" href=\"Writepost.jsp\"><b style=\"margin-left: 20%;\">Write Post</a></b></li>\n"
             //   + "      <li><a href=\"#\">JavaScript</a></li>\n"
                + "      <li class=\"divider\"></li>\n"
             //   + "      <li class=\"dropdown-header\">Dropdown header 2</li>\n"
                + "      <li><a class=\"glyphicon glyphicon-off\" style=\"color:#338ed0\" href=\"Logout\"><b style=\"margin-left: 20%;\">Logout</a></b></li>\n"
                + "    </ul>\n"
                + "  </div>\n"
                + "</div>";
    }
}
