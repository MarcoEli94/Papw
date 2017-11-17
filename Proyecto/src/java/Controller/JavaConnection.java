/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class JavaConnection {
    private String username = "root";
    private String password = "";
    private String host = "localhost";
    private String port = "3306";
    private String database = "login";
    private String classname = "com.mysql.jdbc.Driver";
    private String url = "jdbc:mysql://" + host + ":" + port + "/" + database;
    
    private Connection conn;
    
    public JavaConnection(){
        try{
            Class.forName(classname);
            conn = DriverManager.getConnection(url, username, password);
        } catch(ClassNotFoundException ex){
            System.err.println("Error1: " + ex);
        } catch(SQLException ex){
            System.err.println("Error2: " + ex);
        }
    }
    
    public Connection getConnection(){
        return conn;
    }
    
    public static void main(String[] args){
        JavaConnection con = new JavaConnection();
        
    }
    
}
