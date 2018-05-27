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
        <h1>Manage Article</h1>
        <table>
            <th>Title</th> 
            <th>Content</th>
            <th>Status</th>
            <th>Zone</th>
            <th>Function</th>
            <tr>
                <td>Minh oc cho</td>
                <td>Vi minh an cuc cho nen minh bi oc cho</td>
                <td>dsadasd</td>
                <td>dsadsada</td>
                <td>                 
                    <a href="#" data-toggle="tooltip" title="Write Article"><i class="glyphicon glyphicon-edit"></i></a>
                    <a href="#" data-toggle="modal" data-target="#editArticle"><i class="glyphicon glyphicon-pencil"></i></a>
                    <a href="#" data-toggle="tooltip" title="Delete Article"><i class="glyphicon glyphicon-trash"></i></a>
                </td>
            </tr>          
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
                            var editor;

                            function createEditor(languageCode) {
                                if (editor)
                                    editor.destroy();


                                editor = CKEDITOR.replace('content', {
                                    language: languageCode,

                                    on: {
                                        instanceReady: function () {

                                            // Chờ cho tới khi editor sẵn sàng để sét language.
                                            var languages = document.getElementById('languages');
                                            languages.value = this.langCode;
                                            languages.disabled = false;
                                        }
                                    }
                                });
                            }

                            // Tại thời điểm bắt đầu, tải ngôn ngữ mặc định.
                            createEditor('');

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
        
      </div>            </form>
    </div>
  </div>
</div>
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
                    <a href="#" data-toggle="modal" data-target="#editPubPost"><i class="glyphicon glyphicon-pencil"></i></a>
                    <a href="#" data-toggle="tooltip" title="Remove Post"><i class="glyphicon glyphicon-remove"></i></a>
                </td>
            </tr>          
        </table>
        <div id="editPubPost"  class="modal fade" tabindex="-1" role="dialog">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title">Edit Publish Post</h4>
      </div>
        <form>
      <div class="modal-body">
          <table>
              <tr>
                  <td>Title: </td>
                  <td><input type="text" name="title"></td>
              </tr>
              <tr>
                  <td>Zone: </td>
                  <td><input type="text" name="zone"></td>
              </tr>
              <tr>
                  <td>Published Date </td>
                  <td><input type="text" name="PubDate"></td>
              </tr>
              <tr>
                  <td>Author: </td>
                  <td><input type="text" name="author"></td>
              </tr>
              <tr>
                  <td>Publisher: </td>
                  <td><input type="text" name="publisher"></td>
              </tr>
          </table>
      </div>
      <div class="modal-footer">
                  <button type="Submit" class="btn btn-primary">Save changes</button>
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>

      </div>
        </form>
    </div>
  </div>
</div>
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
