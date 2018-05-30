<%-- 
    Document   : upload
    Created on : May 24, 2018, 11:08:19 AM
    Author     : Nghĩa
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>File Upload</title>
 <script type="text/javascript">
            function getFile() {
                document.getElementById("upfile").click();
            }
            function sub(obj) {
                var file = obj.value;
                var fileName = file.split("\\");
                document.getElementById("upBtn").innerHTML = fileName[fileName.length - 1];
                document.myForm.submit();
                event.preventDefault();
            }
        </script>
</head>
<body>
    <center>
            Select file to upload:
            <form action="UploadServlet" method="POST" enctype="multipart/form-data" name="myForm">
                            <div id="upBtn" onclick="getFile()" style="
                                 position: relative;
                                 font-family: calibri;
                                 width: 125px;
                                 padding: 10px;
                                 -webkit-border-radius: 5px;
                                 -moz-border-radius: 5px;
                                 border: 1px dashed #BBB; 
                                 text-align: center;
                                 background-color: #DDD;
                                 cursor:pointer;">UpLoad Avatar</div>
                            <div style='height: 0px;width: 0px; overflow:hidden;'><input id="upfile" type="file" name="uploadFile" value="upload" onchange="sub(this)"/></div>
                      </form>
    </center>
</body>
</html>