/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.swing.JOptionPane;

/**
 *
 * @author r4ad
 */
public class signup_c {
    Connection con;
    
    public  int sign_method(model.variables_signup v){
        int x=0;
        try {
            db_manager m=new db_manager();
            m.connect();
            con= m.getCon();
            
     Statement st=con.createStatement();
    
 //id, fname, lname, email, password, role
     
     x= st.executeUpdate("insert into user_login (fname,lname,email,password,role) values('"+v.getF_name()+"','"+v.getL_name()+"','"+v.getEmail()+"','"+v.getPassword()+"','u')");
       
        
        } catch (SQLException ex) {
      
        }
   return x;
        
        
    }
public  boolean check(model.variables_signup v){
        int x=0;
        boolean result=true;
        try {
            db_manager m=new db_manager();
            m.connect();
            con= m.getCon();
     Statement st=con.createStatement();
     ResultSet rs=st.executeQuery("select email from  user_login where email='"+v.getEmail()+"'");
     
    if(rs.next()){
       result= true;
    }
    else
    {
     result=false;
    }
        } catch (SQLException ex) {
            
        }
   
        
      return result;
    }

}
        
    
    
            
   