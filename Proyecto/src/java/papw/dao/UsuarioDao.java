/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package papw.dao;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalDate;
import papw.model.Usuario;

public class UsuarioDao {
    
    public Usuario login(String correo, String password){
        ConnectionPool cp = new ConnectionPool();  
        PreparedStatement pst = null;
        ResultSet rs = null;
       
        try{
            String query = "call proc_login(?, ?)"; // EL MD5 se usa para encriptar la contraseña!
            pst = cp.getConnection().prepareStatement(query);
            pst.setString(1, correo);
            pst.setString(2, password);
            rs = pst.executeQuery();
            
            if(rs.next()){
                Usuario usuario = new Usuario(
                        rs.getInt("id"),
                        correo,
                        password
                );
                return usuario;
            }
        } catch(Exception ex){
            System.err.println("Error: " + ex);
        } finally{
            try{
                if(cp.getConnection() != null) cp.getConnection().close();
                if(pst != null) pst.close();
                if(rs != null) rs.close();
            } catch(Exception ex) { System.err.println("Error: " + ex   ); }
        }
        return null;
    }
    
    public Usuario insert(String correo, String password, String nombre, String nacimiento, String genero, 
                            String pais, String estado, String ciudad){
        ConnectionPool cp = new ConnectionPool();  
        PreparedStatement pst = null;
        ResultSet rs = null;
       
        try{
                String query = "call proc_inUsuario(?, ?, ?, ?, ?, ?, ?, ?)"; // EL MD5 se usa para encriptar la contraseña!
            pst = cp.getConnection().prepareStatement(query);
            pst.setString(1, correo);
            pst.setString(2, password);
            pst.setString(3, nombre);
            pst.setString(4, nacimiento);
            pst.setString(5, genero);
            pst.setString(6, pais);
            pst.setString(7, estado);
            pst.setString(8, ciudad);
            
            rs = pst.executeQuery();
                
        } catch(SQLException se){
            if(se.getErrorCode() == 1062){
                throw new RuntimeException("Lo sentimos, el correo y/o nombre de usuario se encuentra en uso.");
            }
            
            
        } finally{
            try{
                if(cp.getConnection() != null) cp.getConnection().close();
                if(pst != null) pst.close();
                if(rs != null) rs.close();
            } catch(Exception ex) { System.err.println("Error: " + ex   ); }
        }
        return null;
    }
    
    public static void main(String[] args){
        UsuarioDao ud = new UsuarioDao();
        ud.insert("admin", "admin", "admin", "2017-11-14", "H", "Mexico", "Nuevo Leon", "Monterrey");
   
    }
}
