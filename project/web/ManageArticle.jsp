<%-- 
    Document   : ManageArticle
    Created on : May 24, 2018, 12:36:29 PM
    Author     : a2mrk
--%>

<%@page import="Controller.ArticleController"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js"></script>
         <script src="editor/ckeditor.js" language="javascript"></script>
        <script>
            $(document).ready(function () {
                $('[data-toggle="tooltip"]').tooltip();
            });
        </script>
        <style>
            table {
                border-collapse: collapse;
                width: 100%;
            }
            th, td {
                padding: 8px;
                text-align: left;
                border-bottom: 1px solid #ddd;
            }
            tr:hover {background-color:#f5f5f5;}
        </style>
    </head>
    <body>
        <%
            ArticleController acontroller = new ArticleController();
            String idarticle = request.getParameter("idarticle");
            System.out.println(idarticle);
            if (idarticle != null) {
                acontroller.deleteArticle(Integer.valueOf(idarticle));
            }
        %>
        <h1>Manage Article</h1>

        <table>
            <th>Title</th> 
            <th>Content</th>
            <th>Category</th>
            <th>Status</th>
            <th>Function</th>
                <%
                    out.print(acontroller.manageArticle());
                %>        
        </table>
        <div id="editArticle"  class="modal fade" role="dialog" aria-labelledby="myLargeModalLabel">
            <div class="modal-dialog modal-lg ">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                        <h4 class="modal-title">Edit Article</h4>
                    </div>
                    <form>
                        <div class="modal-body">
                            <table>
                                <tr>
                                    <td>Title:</td>
                                    <td><input type="text" name="title"></td>
                                </tr>
                                <tr>
                                    <td>Content:</td>
                                    <td><textarea name="content" id="textcontent" rows="10" cols="40"></textarea></td>
                                </tr>
                                <script>
                CKEDITOR.replace('content');
            </script>
                                <tr>
                                    <td>Select Your Post's Zone:</td> 
                                    <td><input type="radio" name="zone" value="north"> North
                                        <input type="radio" name="zone" value="central"> Central
                                        <input type="radio" name="zone" value="south"> South</td>
                                </tr> 
                            </table>
                        </div>

                        <div class="modal-footer">
                            <button type="button" class="btn btn-primary">Save changes</button>
                            <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>

                        </div>            
                    </form>
                </div>
            </div>
           
            
    </body>
</html>
