<%-- 
    Document   : writepost
    Created on : May 18, 2018, 8:12:50 PM
    Author     : a2mrk
--%>

<%@page import="Model.StringBean"%>
<%@page import="Controller.UserController"%>
<%@page import="Model.User"%>
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
            #tieude{font:16px "Times New Roman", Times, serif;color:#00F;}
            #noidung{font:14px "Times New Roman", Times, serif;}
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
                #search{
                    margin-left: 2%;
                    margin-top: 13%;
                }
            }
        </style>
    </head>
    <body>
        <%
             HttpSession s = request.getSession();
            if (s.getAttribute("User") == null) {
                response.sendRedirect("Homepage.jsp");
            } else {
                User user = (User) s.getAttribute("User");
                StringBean print = new StringBean();
                out.println(print.header(user, s));}

        %>
        <div class="content">
            <div style="float:left;width:962px;padding:20px;">
                <form action="Viewpost.jsp" method="get">
                    <table border="0" cellpadding="0" cellspacing="0" align="center">
                        <tr>
                            <td>Title : </td><td><input type="text" name="title" id="texttitle" size="40"/></td>
                        </tr>
                        <tr><td></td><td><select onchange="createEditor( this.value );" id="languages">
            <option value="en-gb">English (United Kingdom)</option>
            <option value="vi">Vietnamese</option>
            <option value="zh-cn">Chinese Simplified</option>
            <option value="zh">Chinese Traditional</option>
         </select>
         </td></tr>

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
                             var editor;
             
            function createEditor( languageCode ) {
                if ( editor )
                    editor.destroy();                      
                editor = CKEDITOR.replace( 'content', {
                    language: languageCode,
             
                    on: {
                        instanceReady: function() {
                            var languages = document.getElementById( 'languages' );
                            languages.value = this.langCode;
                            languages.disabled = false;
                        }
                    }
                });
            }          
            createEditor( '' );

                    </table>
                </form>
            </div>
        </div>
    </body>
</html>
