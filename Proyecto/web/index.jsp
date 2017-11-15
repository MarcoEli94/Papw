<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        <title>Newsfeed New Milleniun - Login</title>
       <!-- <meta charset="UTF-8"> -->
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>
        <link href="CSS/Inicio de sesion.css" property="stylesheet" rel="stylesheet" type="text/css"/>
        <div class="container">
            <div class="login">
                <h1>Login</h1>
                <form method="POST" action="/Proyecto/LogInServlet">
                    <p><input type="text" name="correoUsuario" value="" placeholder="Username"></p>
                    <p><input type="password" name="passwordUsuario" value="" placeholder="Password"></p>
                    <p class="remember_me">
                       
                            <label>
                                <input type="checkbox" name="remember_me" id="remember_me">
                                Remember Me
                            </label>
                        
                    </p>
                    <p class="submit"> <input type="submit" naxºme="commit" value="Login"></p>
                </form>
            </div>  
       
        
        <div class="login-help">
            <p class="submit"> <input type="submit" name="commit" value="Forgot your Password?"></p>
        </div>
        <div class="login-help">
            <p class="submit" ><a href="Register.jsp"><button class="boton">Register</button></a></p>
        </div>
        </div>
    </body>
</html>