<%-- 
    Document   : Rdestino
    Created on : 06-01-2022, 12:01:45 PM
    Author     : Melani
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>

    <body>
        <h1>Hello World!</h1>
    </body>

     <body> 
     <%          
        String id = request.getParameter("carnet");         
        String nom = request.getParameter("nombre");         
        String ape = request.getParameter("apellidos");                   
    %>
             
     <h1> Resgistros Ingresados</h1>      
     <p> Tus datos son los siguientes: </p>     
     <table cellspacing="3" cellpadding="3" border="1" >        
         <tr>            
             <td align="right"> Carnet: </td>           
             <td> <%= id %> </td>         
         </tr>           
         <tr>            
             <td align="right"> Nombre: </td>               
             <td> <%= nom %> </td>         
         </tr>         
         <tr>            
             <td align="right"> apellidos: </td>              
             <td> <%= ape %> </td>         
         </tr>         
     </table>     
         <form action="Index.jsp" method="post">        
             <input type="submit" value="Regresar">    
         </form> 
     </body> 

</html>
