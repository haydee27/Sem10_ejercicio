package modelo;

import java.sql.*;
import java.util.logging.Level;
import java.util.logging.Logger;

public class Persona {
   //Atributos de la clase
    String id;
    String nom;
    String ape;

    Connection cnn;
    Statement state;
    ResultSet result;
    
    //constructor vacio de la clase tipo publico
    //El constuctor lo utilizarmos para conectar con la base de datos
    public Persona() {
        try {
            Class.forName("com.mysql.jdbc.Driver");//Driver de la base de datos
            cnn = DriverManager.getConnection("jdbc:mysql://localhost:3306/bd_registros?zeroDateTimeBehavior=convertToNull","root",""); //url de la base de datos, user, password
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(Persona.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(Persona.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    public boolean insertarDatos (){
            try{
               String miQuery = "insert into tb_datos('" + id + "', '" + nom + "', '" + ape + "');";
               int estado = 0; //estado de la insercion
               state = cnn.createStatement();
               estado = state.executeUpdate(miQuery);
               if(estado == 1){
                    return true;
                }
            }catch (SQLException ex) {
                Logger.getLogger(Persona.class.getName()).log(Level.SEVERE, null, ex);
}
            return false;
}
    
    //Generar los metodos set y get para los atributos

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getNom() {
        return nom;
    }

    public void setNom(String nom) {
        this.nom = nom;
    }

    public String getApe() {
        return ape;
    }

    public void setApe(String ape) {
        this.ape = ape;
    }
    
    
}
