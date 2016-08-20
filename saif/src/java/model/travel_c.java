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
public class travel_c {
    
     Connection con;
    
     public  Object [][] return_travel(){
     
     Statement st;
     ResultSet res;
     Object ar[][]=null;
            
      try {
         db_manager m=new db_manager();
            m.connect();
            con= m.getCon();
          //travel_id, travel_title, travel_details, start_date, end_date, travel_price, travel_image
        //    travel
         String sql="select travel_id,travel_title,travel_details,travel_price,travel_image from travel";
           st=(Statement) con.createStatement();
          
          res =st.executeQuery(sql);
          res.last();
          int n=res.getRow();
          res.beforeFirst();
                                     
        ar=new Object[n][6];
          int x=0;
          
          while(res.next())
          {
              ar[x][0]=(x+1);
              ar[x][1]=res.getInt("travel_id");
              ar[x][2]=res.getString("travel_title");
              ar[x][3]=res.getString("travel_details");
              ar[x][4]=res.getString("travel_price");
              ar[x][5]=res.getString("travel_image");
          x++;    
           
          }
        } catch (SQLException ex) {
            System.out.print("error in sql");
        
       }
      
      return ar;
      }               
 
     public int apply_travel(model.variables_travel o){
//id, visa_num, user_id, travel_id
         int x=0;
         Statement st;
          try {
         db_manager m=new db_manager();
            m.connect();
            con= m.getCon();
      
            
         String sql="insert into reservation_travel (visa_num, user_id, travel_id) values ('"+o.getVisa_num()+"','"+o.getUser_id()+"','"+o.getTravel_id()+"')";
           st=(Statement) con.createStatement();
          
         x=st.executeUpdate(sql);
          
         
          }
         catch (SQLException ex) {
            System.out.print("error in sql");
            System.out.print(ex.getCause());
                    
           return x;
       }
        return x;
     }
}

    
    

