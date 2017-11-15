
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitions//EN" 
    "http://www.w3.org/TR/html4/loose.dtd">
<%
    if(request.getParameter("id") != null){
        out.println("<script>alert('Lo sentimos, el usuario y/o correo se encuentra en uso.');</script>");
    }
    %>
<html>
    <head>
        <title>Registration</title>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
      <link href="CSS/Registro.css" property="stylesheet" rel="stylesheet" type="text/css"/>
      
         
      
    </head>
    <body>    
        <form  action="/Proyecto/insertarUsuarioServlet" class="register" method="POST">
            <h1>Registration</h1>
            <fieldset class="row1">
                <legend> Account Attributes
                </legend>
                <p>
                    <label>Email Address *
                    </label>
                    <input type="text" name="correoUsuario" id="correoUsuario"/>
                 
                </p>
                <p>
                    <label>Password*
                    </label>
                    <input type="text" id="passwordUsuario" name="passwordUsuario" />
                  
                </p>
                
                  <p>
                    <label>Username*
                    </label>
                      <input type="text" id="nombreUsuario" name="nombreUsuario" />
                </p>
                <p>
                     <label>* Necesarry Data
                    </label>
                </p>
            </fieldset>
            
            <fieldset class="row2">
                <legend>Personal Information
                </legend>
                <p>
                    <label>Country
                    </label>
                    <input type="text" id="paisUsuario" name="paisUsuario" maxlenght="50" class="long"/>
                </p>
                <p>
                    <label>State
                    </label>
                    <input type="text" id="estadoUsuario" name="estadoUsuario" maxlenght="50"  class="long"/>
                </p>
                <p>
                    <label>City
                    </label>
                    <input type="text" id="ciudadUsuario" name="ciudadUsuario" maxlenght="50"  class="long"/>
                </p>
                <p>
                    <label>Birthday</label>
                    <input type="date" id="nacimientoUsuario" name="nacimientoUsuario">
                </p>
                <p>
                    <label>Birthday</label>
                    <input type="checkbox" id="generoUsuario" name="generoUsuario">
                </p>
       
                <p>
                    <label>Choose Avatar File
                    </label>
                    <input class="image" type="file" accept="image/*">
                 
                </p>
                
                <p>
                    <label>Cover Image File
                    </label>
                    <input class="image" type="file" accept="image/*">
                 
                </p>
                <!--
                <div class="infobox"><h4>Helpful Information</h4>
                    <p>Here comes some explaining text, sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.</p>
                </div>
                -->
            </fieldset>
           
            <div><input type="submit" class="button" value="Register &raquo;"></div>
        </form>
    </body>
</html>
