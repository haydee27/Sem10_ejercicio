<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
        <h1>REGISTRO DE TABLA</h1>
        <form action="recibir.do" method="POST">
            
            ID: <input type="text"
            <input type="submit" value="Agregar registro" name="btn1" />
            <input type="submit" value="ver registro" name="btn2" />
            <input type="submit" value="ver eliminar registro" name="btn2" />
           
            
       <p>  Por favor introduce la información </p>     
       <form action="Rdestino" method="post">       
           <table cellspacing="3" cellpadding="3" border="1" >          
               <tr>               
                   <td align="right">   id: </td>              
                   <td><input type="text" name="carnet"></td>  
                    </tr>   
                <tr>               
                   <td align="right">   nom: </td>              
                   <td><input type="text" name="nombres"></td>  
                </tr>   
                <tr>               
                   <td align="right">   ape: </td>              
                   <td><input type="text" name="apellidos"></td>  
               </tr>   
           </table>
            <input type="submit" value="Agregar registro" name="btn1" />
            <input type="submit" value="ver registro" name="btn2" />
            <input type="submit" value="ver eliminar registro" name="btn2" />   
        </form>
    </body>
</html>