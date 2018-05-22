<%-- 
    Document   : table
    Created on : May 22, 2018, 3:32:23 PM
    Author     : Nghĩa
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
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
        <h1>Manage Article</h1>
        <table>
            <th>Title</th> 
            <th>Content</th>
            <th>Status</th>
            <th>Function</th>
            <tr>
                <td>Minh oc cho</td>
                <td>Vi minh an cuc cho nen minh bi oc cho</td>
                <td>dsadasd</td>
                <td>                 
                    <a href="#" data-toggle="tooltip" title="Write Article"><i class="glyphicon glyphicon-edit"></i></a>
                    <a href="#" data-toggle="tooltip" title="Edit Article"><i class="glyphicon glyphicon-pencil"></i></a>
                    <a href="#" data-toggle="tooltip" title="Delete Article"><i class="glyphicon glyphicon-trash"></i></a>

                </td>
            </tr>          
        </table>
        <h1>Manage Account</h1>
       <table>
            <th>ID</th> 
            <th>Email</th>
            <th>Function</th>
            <tr>
                <td>Minh oc cho</td>
                <td>Vi minh an cuc cho nen minh bi oc cho</td>
                <td>
                    <a href="#" data-toggle="tooltip" title="Edit User"><i class="glyphicon glyphicon-pencil"></i></a>
                    <a href="#" data-toggle="tooltip" title="Delete User"><i class="glyphicon glyphicon-trash"></i></a>
                </td>
            </tr>          
        </table>
        <h1>Manage Role</h1>
        <table>
            <th>ID</th> 
            <th>Role</th>
            <th>Function</th>
            <tr>
                <td>Minh oc cho</td>
                <td>Vi minh an cuc cho nen minh bi oc cho</td>
                <td>
                    <a href="#" data-toggle="tooltip" title="Edit Role"><i class="glyphicon glyphicon-pencil"></i></a>

                </td>
            </tr>          
        </table>
        <h1>Manage Publish Post</h1>
        <table>
            <th>Title</th> 
            <th>Zone</th>
            <th>Published Date</th>
            <th>Author</th>
            <th>Publisher</th>
            <th>Function</th>
            <tr>
                <td>Minh oc cho</td>
                <td>Vi minh an cuc cho nen minh bi oc cho</td>
                <td>tai s m ngu qua v minh</td>
                <td>con cho minh no bi gay</td>
                <td>tai s minh an cuc ma no van ngu?</td>
                <td>
                    <a href="#" data-toggle="tooltip" title="Edit Post"><i class="glyphicon glyphicon-pencil"></i></a>
                    <a href="#" data-toggle="tooltip" title="Remove Post"><i class="glyphicon glyphicon-remove"></i></a>
                </td>
            </tr>          
        </table>
        <h1>Manage Pending Post</h1>
       <table>
            <th>Title</th> 
            <th>Zone</th>
            <th>Author</th>
            <th>Function</th>
            <tr>
                <td>Minh oc cho</td>
                <td>Vi minh an cuc cho nen minh bi oc cho</td>
                <td>tai s m ngu qua v minh</td>
                <td>
                    <a href="#" data-toggle="tooltip" title="Publish Post"><i class="glyphicon glyphicon-open"></i></i></a>
                    <a href="#" data-toggle="tooltip" title="Reject Post"><i class="glyphicon glyphicon-remove"></i></a>
                </td>
            </tr>          
        </table>
        <h1>Manage Comment</h1>
        <table>
            <th>Article</th> 
            <th>User</th>
            <th>Comment</th>
            <th>Function</th>
            <tr>
                <td>Minh oc cho</td>
                <td>Vi minh an cuc cho nen minh bi oc cho</td>
                <td>tai s m ngu qua v minh</td>
                <td>    
                    <a href="#" data-toggle="tooltip" title="Delete Comment"><i class="glyphicon glyphicon-trash"></i></a>
                </td>
            </tr>          
        </table>
    </body>
</html>
