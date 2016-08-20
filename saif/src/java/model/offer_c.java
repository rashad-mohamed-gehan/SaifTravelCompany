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

/**
 *
 * @author r4ad
 */
public class offer_c {
         Connection con;
    
     public  Object [][] return_offer(){
     
     Statement st;
     ResultSet res;
     Object ar[][]=null;
            
      try {
         db_manager m=new db_manager();
            m.connect();
            con= m.getCon();
          //offer_id, offer_title, start_date, end_date, offer_details, price_before, price_after, offer_image
        //    offer
            
         String sql="select offer_id,offer_title,offer_details,price_before,price_after,offer_image from offer";
           st=(Statement) con.createStatement();
          
          res =st.executeQuery(sql);
          res.last();
          int n=res.getRow();
          res.beforeFirst();
                                     
        ar=new Object[n][7];
          int x=0;
          
          while(res.next())
          {
              ar[x][0]=(x+1);
              ar[x][1]=res.getInt("offer_id");
              ar[x][2]=res.getString("offer_title");
              ar[x][3]=res.getString("offer_details");
              ar[x][4]=res.getString("price_before");
              ar[x][5]=res.getString("price_after");
              ar[x][6]=res.getString("offer_image");
          x++;    
           
          }
        } catch (SQLException ex) {
            System.out.print("error in sql");
        
       }
      
      return ar;
      }    
     
     
     public int apply_offer(model.variables_offer o){
     //id, visa_num, user_id, offer_id
         int x=0;
         Statement st;
          try {
         db_manager m=new db_manager();
            m.connect();
            con= m.getCon();
      
            
         String sql="insert into reservition_offer (visa_num, user_id, offer_id) values ('"+o.getVisa_num()+"','"+o.getUser_id()+"','"+o.getOffer_id()+"')";
           st=(Statement) con.createStatement();
          
         x=st.executeUpdate(sql);
          
         
          }
         catch (SQLException ex) {
            System.out.print("error in sql");
           return x;
       }
        return x;
     }
}
