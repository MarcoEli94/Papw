/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class JavaQuerys extends JavaConnection{
    
    public boolean autentificathion(String usuario, String password){
        PreparedStatement pst = null;
        ResultSet rs = null;
        
        try{
            String query = "select * from usuario where correoUsuario = ? and passwordUsuario = md5(?)"; // EL MD5 se usa para encriptar la contraseña!
            pst = getConnection().prepareStatement(query);
            pst.setString(1, usuario);
            pst.setString(2, password);
            rs = pst.executeQuery();
            
            if(rs.absolute(1)) return true;
            
        } catch(Exception ex){
            System.err.println("Error: " + ex);
        } finally{
            try{
                if(getConnection() != null) getConnection().close();
                if(pst != null) pst.close();
                if(rs != null) rs.close();
            } catch(Exception ex) { System.err.println("Error: " + ex   ); }
        }
        return false;
    }
    
    public static void main(String[] args){
        JavaQuerys jq = new JavaQuerys();
        System.out.println(jq.autentificathion("admin", "admin"));
    }
}
