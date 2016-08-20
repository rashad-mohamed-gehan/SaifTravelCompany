/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import javax.swing.JOptionPane;

/**
 *
 * @author r4ad
 */
public class login_c {
    Connection con;
    
 
public  boolean check(model.variables_login v){
        int x=0;
        boolean result=true;
        try {
            db_manager m=new db_manager();
            m.connect();
            con= m.getCon();
     Statement st=con.createStatement();
     ResultSet rs=st.executeQuery("select email,password from  user_login where email='"+v.getEmail()+"' and password='"+v.getPassword()+"'");
     
    if(rs.next()){
       result= true;
                 }
    
    else
    {
     result=false;
    }
        } catch (SQLException ex) {
            System.out.println("error in sql");
        }
   
        
      return result;
    }

public  String[] return_data(model.variables_login v){
       String  result[]=new String[3];
       
        try {
            db_manager m=new db_manager();
            m.connect();
            con= m.getCon();
     Statement st=con.createStatement();
     ResultSet rs=st.executeQuery("select id,fname,role from  user_login where email='"+v.getEmail()+"' and password='"+v.getPassword()+"'" );
     
    if(rs.next()){
           result[0]= rs.getString("fname");
           result[1]=rs.getString("role");
           result[2]=String.valueOf(rs.getInt("id"));
                 }
             
    else
    {
  
    }
        } catch (SQLException ex) {
            System.out.println("error in sql");
        }
   
        
      return result;
    }



public  String return_(int x){
  String result=null;
       
        try {
            db_manager m=new db_manager();
            m.connect();
            con= m.getCon();
     Statement st=con.createStatement();
     ResultSet rs=st.executeQuery("select fname from  user_login id='"+x+"'"); 
     
    if(rs.next()){
           result=rs.getString("fname");
                 }
             
    else
    {
  
    }
        } catch (SQLException ex) {
            System.out.println("error in sql");
        }
   
        
      return result;
    }


public  String[] return_data_(int id){
       String  result[]=new String[2];
       
        try {
            db_manager m=new db_manager();
            m.connect();
            con= m.getCon();
     Statement st=con.createStatement();
     ResultSet rs=st.executeQuery("select  fname,lname,email from  user_login where id='"+id+"'");
     
    if(rs.next()){
           result[0]= rs.getString("fname")+" "+rs.getString("lname");
           result[1]=rs.getString("email");

                 }
             
    else
    {
  
    }
        } catch (SQLException ex) {
            System.out.println("error in sql");
        }
   
        
      return result;
    }

}
    


/* ResultSet rs=st.executeQuery("select  fname,lname,email from  user_login where id='"+id+"'");
     
    if(rs.next()){
           result[0]= rs.getString("fname")+" "+rs.getString("lname");
           result[1]=rs.getString("email");

                 }*/