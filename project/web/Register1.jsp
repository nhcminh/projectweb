<%-- 
    Document   : Register
    Created on : May 12, 2018, 11:06:12 PM
    Author     : Nghĩa
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="css/Loginstyle.css">
         <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <title>Register Page</title>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/prefixfree/1.0.7/prefixfree.min.js"></script>


<body>

    <div class="body"></div>
		<div class="grad"></div>
		<div class="header">
			<div>Register<span>Page</span></div>
		</div>
		<br>
		<div class="login">
                    <form>      
                        <input type="text" placeholder="Fullname" name="fullname"><br>
				<input type="text" placeholder="Username" name="user"><br>
                                <input type="password" placeholder="Password" name="password"><br>
                                <input type="password" placeholder="Re-Enter Password" name="password2"><br>
                                <input type="email" placeholder="Email" name="email"><br>                                
                                <input type="submit" value="Register"><br>
                                <div class="register">
                                <a href="Login.jsp" class="btn btn-primary" role="button">Login</a>
                                <a href="Homepage.jsp" class="btn btn-primary" role="button">Back to Home</a>
                                </div>
                    </form>
  
		</div>
  <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
</body>

</html>
