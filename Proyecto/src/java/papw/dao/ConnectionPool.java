/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package papw.dao;

import Controller.JavaConnection;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;


public class ConnectionPool {
    private String username = "root";
    private String password = "";
    private String host = "localhost";
    private String port = "3306";
    private String database = "myVideos";
    private String classname = "com.mysql.jdbc.Driver";
    private String url = "jdbc:mysql://" + host + ":" + port + "/" + database;
    
    private Connection conn;
    
    public ConnectionPool(){
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
        ConnectionPool con = new ConnectionPool();
        
    }
}
