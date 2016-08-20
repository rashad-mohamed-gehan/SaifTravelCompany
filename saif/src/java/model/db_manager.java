/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.swing.JOptionPane;

/**
 *
 * @author khalid
 */
public class db_manager {
    Connection con;
    ResultSet res;
    Statement st;

    public void connect() throws SQLException{
        try {
            Class.forName("com.mysql.jdbc.Driver");
            
                    con = DriverManager.getConnection("jdbc:mysql://localhost/saif1?autoReconnect=true","saif1","12345");
            System.out.println("connected successfullly");
        } catch (ClassNotFoundException ex) {
         
        }
    }
    
    
  
    
    /**
     * @return the con
     */
    public Connection getCon() {
        return con;
    }

    /**
     * @param con the con to set
     */
    public void setCon(Connection con) {
        this.con = con;
    }
    
    
    
    
}
