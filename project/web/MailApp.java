/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Nghĩa
 */
@WebServlet(urlPatterns = {"/MailApp"})
public class MailApp extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Register Succesfull</title>");
            out.println("<link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css\">\n" +
"");
            out.println("<style>.register input[type=button],{\n" +
"	width: 250px;\n" +
"	height: 35px;\n" +
"	background: #fff;\n" +
"	border: 1px solid #fff;\n" +
"	cursor: pointer;\n" +
"	border-radius: 2px;\n" +
"	color: #a18d6c;\n" +
"	font-family: 'Exo', sans-serif;\n" +
"	font-size: 16px;\n" +
"	font-weight: 400;\n" +
"	padding: 6px;\n" +
"	margin-top: 10px;\n" +
"}"
                    + ".btn-primary{\n" +
"        width: 123px;\n" +
"	height: 35px;\n" +
"	background: #338ed0;\n" +
"	border: 1px solid #fff;\n" +
"	cursor: pointer;\n" +
"	border-radius: 2px;\n" +
"	color: white;\n" +
"	font-family: 'Exo', sans-serif;\n" +
"	font-size: 16px;\n" +
"	font-weight: 400;\n" +
"	padding: 6px;\n" +
"	margin-top: 10px;\n" +
"}"
                    + ".body{"
                    + "background-image:url(.../Pictures/lake.jpg)}</style>");
            out.println("</head>");
            out.println("<body>");
            out.println("<center><strong>Register Suscess, Your infomation will send to your Email</strong>");
            out.println("<div class=\"register\">\n" +
"                                <a href=\"Login.jsp\" class=\"btn btn-primary\" role=\"button\">Login</a>\n" +
"                                <a href=\"Homepage.jsp\" class=\"btn btn-primary\" role=\"button\">Back to Home</a>\n" +
"                                </div>");            
            out.println("</center></body>");
            out.println("</html>");           
        String fullname = request.getParameter("fullname");
        String password = request.getParameter("password");
        String username = request.getParameter("user");
        String to = request.getParameter("email");
        String subject = "User Infomation";
        String message =  "FullName: "+fullname+";"+"UserName: "+username+";"+"Password: "+password+";"+"Email: "+to+";";
      String user="vanminhst123@gmail.com";
      String pass="minh1234";
        SendMail.send(to,subject, message, user, pass);
        
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
   protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        
    }   
}


