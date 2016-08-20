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
public class hotel_c {
    Connection con;
    
     public  Object [][] return_hotels(){
     
     Statement st;
     ResultSet res;
     Object ar[][]=null;
            
      try {
         db_manager m=new db_manager();
            m.connect();
            con= m.getCon();
          //hotel_id, hotel_name, hotel_address, hotel_description, hotel_stars, hotel_image, city_id
        //    hotel
         String sql="select hotel_id,hotel_name,hotel_image from hotel";
           st=(Statement) con.createStatement();
          
          res =st.executeQuery(sql);
          res.last();
          int n=res.getRow();
          res.beforeFirst();
                                     
        ar=new Object[n][4];
          int x=0;
          
          while(res.next())
          {
              ar[x][0]=(x+1);
              ar[x][1]=res.getInt("hotel_id");
              ar[x][2]=res.getString("hotel_name");
              ar[x][3]=res.getString("hotel_image");
   
             
              
          x++;    
          }
              
        } catch (SQLException ex) {
            System.out.print("error in sql");
        
       }
      
      return ar;
      }               
     
       
       public  Object [][] return_hotels22(int id){
     
     Statement st;
     ResultSet res;
     Object ar[][]=null;
            
      try {
         db_manager m=new db_manager();
            m.connect();
            con= m.getCon();
          //hotel_id, hotel_name, hotel_address, hotel_description, hotel_stars, hotel_image, city_id
        //    hotel
         String sql="select hotel_name,hotel_address,hotel_description, hotel_stars,hotel_image from hotel where  hotel.hotel_id='"+id+"'";
           st=(Statement) con.createStatement();
          
          res =st.executeQuery(sql);
          res.last();
          int n=res.getRow();
          res.beforeFirst();
                                     
        ar=new Object[1][5];
          int x=0;
          
         if(res.next())
          {
             
              ar[x][0]=res.getString("hotel_name");
              ar[x][1]=res.getString("hotel_address");
              ar[x][2]=res.getString("hotel_description");
              ar[x][3]=res.getString("hotel_stars");
              ar[x][4]=res.getString("hotel_image");
   
              
              
   
             
              
          x++;    
          }
              
        } catch (SQLException ex) {
            System.out.print("error in sql");
        
       }
      
      return ar;
      }         
     
       public  Object [][] return_hotels2(int id){
     
     Statement st;
     ResultSet res;
     Object ar[][]=null;
            
      try {
         db_manager m=new db_manager();
            m.connect();
            con= m.getCon();
          //hotel_id, hotel_name, hotel_address, hotel_description, hotel_stars, hotel_image, city_id
        //    hotel
         String sql="select hotel.hotel_name, hotel.hotel_address,hotel.hotel_description, hotel.hotel_stars,hotel.hotel_image,city.city_name from hotel inner join city on hotel.city_id=city.city_id and  hotel.hotel_id='"+id+"'";
           st=(Statement) con.createStatement();
          
          res =st.executeQuery(sql);
         
                                     
        ar=new Object[1][6];
          int x=0;
          
         if(res.next())
          {
             
              ar[x][0]=res.getString("hotel_name");
              ar[x][1]=res.getString("hotel_address");
              ar[x][2]=res.getString("hotel_description");
              ar[x][3]=res.getString("hotel_stars");
              ar[x][4]=res.getString("hotel_image");
              ar[x][5]=res.getString("city_name");
        
              
              
   
             
              
          
          }
              
        } catch (SQLException ex) {
            System.out.print("error in sql");
        
       }
      
      return ar;
      }               
 
         public int apply_hotel(model.variables_hotel o){
     //id, visa_num, user_id, offer_id
         int x=0;
         Statement st;
          try {
         db_manager m=new db_manager();
            m.connect();
            con= m.getCon();
      
                                                   // username, email, visa, start_date, end_date, phone, cost, kids, adults, hotel_id
         String sql="insert into reservation_hotel (username, email, visa, start_date, end_date, phone, cost, kids, adults, hotel_id) values ('"+o.getUsername()+"','"+o.getEmail()+"','"+o.getVisa()+"','"+o.getStart_date()+"','"+o.getEnd_date()+"','"+o.getPhone()+"','"+o.getCost()+"','"+o.getKids()+"','"+o.getAdults()+"','"+Integer.parseInt(o.getHotel_id().trim())+"')";
           st=(Statement) con.createStatement();
          
         x=st.executeUpdate(sql);
          
         
          }
         catch (SQLException ex) {
            System.out.print("error in sql");
           return x;
       }
        return x;
     }
       
         
         
         public  String return_city(int x){
  String result=null;
       
        try {
            db_manager m=new db_manager();
            m.connect();
            con= m.getCon();
     Statement st=con.createStatement();
     ResultSet rs=st.executeQuery("select city_name from  city where cityid='"+x+"'"); 
     
    if(rs.next()){
           result=rs.getString("city_name");
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
