
package model;

import java.sql.Connection;
import java.sql.Date;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Locale;
import java.util.logging.Level;
import java.util.logging.Logger;
import sun.java2d.pipe.SpanShapeRenderer;


public class search_methods {
     
    Connection con;
    //-------------------search by place------------------------------------------//
    public Object[][] search_place(model.search_Vars obj,String table_name){
            System.out.print("hi1");
         Object[][] result=null;
        try {
            jdbcManager jdbc = new jdbcManager();
            jdbc.connect();
            con = jdbc.get_connection();
            Statement st = con.createStatement();
            ResultSet r = null;
           System.out.print("hi2");
            if(table_name.equals("travel")){
                System.out.print(obj.getPlace());
                //'%" + emp_name + "%'
                r=st.executeQuery("select * from travel where travel_title like '%"+obj.getPlace()+"%' or travel_details like '%"+obj.getPlace()+"%' ");
                r.last();
                
                int n=r.getRow();
                r.beforeFirst();
                System.out.print("hi3");
                result=new Object[n][6];
                int x=0;
                /*ar[x][0]=(x+1);
              ar[x][1]=res.getInt("travel_id");
              ar[x][2]=res.getString("travel_title");
              ar[x][3]=res.getString("travel_details");
              ar[x][4]=res.getString("travel_price");
              ar[x][5]=res.getString("travel_image");*/
                while(r.next()){
                   
             result[x][0]=(x+1);
             result[x][1]=r.getInt("travel_id");
             result[x][2]=r.getString("travel_title");
             result[x][3]=r.getString("travel_details");
             result[x][4]=r.getString("travel_price");
             result[x][5]=r.getString("travel_image");
            
                    
                    x++;
                }
            }
            else if(table_name.equals("offer")){
                r=st.executeQuery("select * from offer where offer_title like '%"+obj.getPlace()+"% or offer_detail like '%"+obj.getPlace()+"%' ");
                r.last();
                int n=r.getRow();
                r.beforeFirst();
                result=new Object[n][6];
                int x=0;
                
                while(r.next()){
                    result[x][0]=r.getString("offer_title");
                    result[x][1]=r.getString("offer_details");
                    result[x][2]=r.getString("offer_price");
                    result[x][3]=r.getString("offer_image");
                    result[x][4]=r.getString("start_date");
                    result[x][5]=r.getString("end_date");
                }
            }
           
        } catch (SQLException ex) {
            Logger.getLogger(search_methods.class.getName()).log(Level.SEVERE, null, ex);
        }
     return result;
}
    
    //-------------------search by cost------------------------------------------//
    public Object[][] search_cost (model.search_Vars obj,String table_name) throws SQLException{
         jdbcManager jdbc = new jdbcManager();
        jdbc.connect();
        con = jdbc.get_connection();
        Statement st = con.createStatement();
        ResultSet r = null;
        Object[][] result=null; 
        if(table_name.equals("travel")){
            
             r=st.executeQuery("select * from travel where travel_price <= '"+obj.getCost()+"' ");
             r.last();
             int n=r.getRow();
             r.beforeFirst();
             result=new Object[n][6];
             int x=0;

             while(r.next()){
                
                result[x][0]=r.getString("travel_title");
                result[x][1]=r.getString("travel_details");
                result[x][2]=r.getString("travel_price");
                result[x][3]=r.getString("travel_image");
                result[x][4]=r.getString("start_date");
                result[x][5]=r.getString("end_date");
                x++;
             }
        }
        else if(table_name.equals("offer")){
             r=st.executeQuery("select * from offer where price_after <= '"+obj.getCost()+"' ");
             r.last();
             int n=r.getRow();
             r.beforeFirst();
             result=new Object[n][6];
             int x=0;

                while(r.next()){
                result[x][0]=r.getString("offer_title");
                result[x][1]=r.getString("offer_details");
                result[x][2]=r.getString("offer_price");
                result[x][3]=r.getString("offer_image");
                result[x][4]=r.getString("start_date");
                result[x][5]=r.getString("end_date");
                }
        }
        return result;
      
    }
    
    //-------------------search by period------------------------------------------//
    
     public Object[][] search_period (model.search_Vars obj,String table_name) throws SQLException{
       
            jdbcManager jdbc = new jdbcManager();
            jdbc.connect();
            con = jdbc.get_connection();
            Statement st = con.createStatement();
            ResultSet r = null;
            Object[][] result=null;
            
            
             String date1=obj.getPeriod();
             SimpleDateFormat sdf= new SimpleDateFormat("dd mm yy");
             Calendar c=Calendar.getInstance();
        try {
            c.setTime(sdf.parse(date1));
        } catch (ParseException ex) {
            Logger.getLogger(search_methods.class.getName()).log(Level.SEVERE, null, ex);
        }
             c.add(Calendar.DATE,7);
             date1=sdf.format(c.getTime());
             
             String date2=obj.getPeriod();
             SimpleDateFormat sdf2= new SimpleDateFormat("dd mm yy");
             Calendar c2=Calendar.getInstance();
        try {
            c2.setTime(sdf.parse(date2));
        } catch (ParseException ex) {
            Logger.getLogger(search_methods.class.getName()).log(Level.SEVERE, null, ex);
        }
             c2.add(Calendar.DATE,-7);
             date2=sdf2.format(c.getTime());
             
             
            
            if(table_name.equals("travel")){
                
                 r=st.executeQuery("select * from travel where  start_date BETWEEN '"+date1+"' and '"+date2+"' ");
                 r.last();
                 int n=r.getRow();
                 r.beforeFirst();
                 result=new Object[n][6];
                 int x=0;

                    while(r.next()){

                       result[x][0]=r.getString("travel_title");
                       result[x][1]=r.getString("travel_details");
                       result[x][2]=r.getString("travel_price");
                       result[x][3]=r.getString("travel_image");
                       result[x][4]=r.getString("start_date");
                       result[x][5]=r.getString("end_date");
                       x++;
                    }
            }
            else if(table_name.equals("offer")){
                 r=st.executeQuery("select * from offer where start_date BETWEEN '"+date1+"' and '"+date2+"' ");
                 r.last();
                 int n=r.getRow();
                 r.beforeFirst();
                 result=new Object[n][6];
                 int x=0;

                    while(r.next()){
                    result[x][0]=r.getString("offer_title");
                    result[x][1]=r.getString("offer_details");
                    result[x][2]=r.getString("offer_price");
                    result[x][3]=r.getString("offer_image");
                    result[x][4]=r.getString("start_date");
                    result[x][5]=r.getString("end_date");
                    }
            }
            return result;
       
      
    }
     //------------------------search by place and cost--------------------------------//
     
      public Object[][] search_place_cost(model.search_Vars obj,String table_name) throws SQLException{
        jdbcManager jdbc = new jdbcManager();
        jdbc.connect();
        con = jdbc.get_connection();
        Statement st = con.createStatement();
        ResultSet r = null;
        Object[][] result=null; 
        if(table_name.equals("travel")){
            
             r=st.executeQuery("select * from travel where (travel_title like '%'"+obj.getPlace()+"'%'or travel_detail like '%'"+obj.getPlace()+"'%')and (travel_price <= '"+obj.getCost()+"') ");
             r.last();
             int n=r.getRow();
             r.beforeFirst();
             result=new Object[n][6];
             int x=0;

             while(r.next()){
                
                result[x][0]=r.getString("travel_title");
                result[x][1]=r.getString("travel_details");
                result[x][2]=r.getString("travel_price");
                result[x][3]=r.getString("travel_image");
                result[x][4]=r.getString("start_date");
                result[x][5]=r.getString("end_date");
                x++;
             }
        }
        else if(table_name.equals("offer")){
             r=st.executeQuery("select * from offer where (offer_title like '%'"+obj.getPlace()+"'%' or offer_detail like '%'"+obj.getPlace()+"'%')and (price_after <= '"+obj.getCost()+"') ");
             r.last();
             int n=r.getRow();
             r.beforeFirst();
             result=new Object[n][6];
             int x=0;

                while(r.next()){
                result[x][0]=r.getString("offer_title");
                result[x][1]=r.getString("offer_details");
                result[x][2]=r.getString("offer_price");
                result[x][3]=r.getString("offer_image");
                result[x][4]=r.getString("start_date");
                result[x][5]=r.getString("end_date");
                }
        }
        return result;
    
}
      //---------------------------------search by cost and period------------------------------------//
    public Object[][] search_cost_period(model.search_Vars obj,String table_name) throws SQLException{
        jdbcManager jdbc = new jdbcManager();
        jdbc.connect();
        con = jdbc.get_connection();
        Statement st = con.createStatement();
        ResultSet r = null;
        Object[][] result=null;
        
         
             String date1=obj.getPeriod();
             SimpleDateFormat sdf= new SimpleDateFormat("dd mm yy");
             Calendar c=Calendar.getInstance();
        try {
            c.setTime(sdf.parse(date1));
        } catch (ParseException ex) {
            Logger.getLogger(search_methods.class.getName()).log(Level.SEVERE, null, ex);
        }
             c.add(Calendar.DATE,7);
             date1=sdf.format(c.getTime());
             
             String date2=obj.getPeriod();
             SimpleDateFormat sdf2= new SimpleDateFormat("dd mm yy");
             Calendar c2=Calendar.getInstance();
        try {
            c2.setTime(sdf.parse(date2));
        } catch (ParseException ex) {
            Logger.getLogger(search_methods.class.getName()).log(Level.SEVERE, null, ex);
        }
             c2.add(Calendar.DATE,-7);
             date2=sdf2.format(c.getTime());
             
        
        
        if(table_name.equals("travel")){
            
             r=st.executeQuery("select * from travel where (start_date BETWEEN '"+date1+"' and '"+date2+"')and (travel_price <= '"+obj.getCost()+"') ");
             r.last();
             int n=r.getRow();
             r.beforeFirst();
             result=new Object[n][6];
             int x=0;

             while(r.next()){
                
                result[x][0]=r.getString("travel_title");
                result[x][1]=r.getString("travel_details");
                result[x][2]=r.getString("travel_price");
                result[x][3]=r.getString("travel_image");
                result[x][4]=r.getString("start_date");
                result[x][5]=r.getString("end_date");
                x++;
             }
        }
        else if(table_name.equals("offer")){
             r=st.executeQuery("select * from offer where (start_date BETWEEN '"+date1+"' and '"+date2+"')and (price_after <= '"+obj.getCost()+"') ");
             r.last();
             int n=r.getRow();
             r.beforeFirst();
             result=new Object[n][6];
             int x=0;

                while(r.next()){
                result[x][0]=r.getString("offer_title");
                result[x][1]=r.getString("offer_details");
                result[x][2]=r.getString("offer_price");
                result[x][3]=r.getString("offer_image");
                result[x][4]=r.getString("start_date");
                result[x][5]=r.getString("end_date");
                }
        }
        return result;
    
} 
    //--------------------------------search by place and period----------------------------//
    
     public Object[][] search_place_period(model.search_Vars obj,String table_name) throws SQLException{
        jdbcManager jdbc = new jdbcManager();
        jdbc.connect();
        con = jdbc.get_connection();
        Statement st = con.createStatement();
        ResultSet r = null;
        Object[][] result=null;
        
         
             String date1=obj.getPeriod();
             SimpleDateFormat sdf= new SimpleDateFormat("dd mm yy");
             Calendar c=Calendar.getInstance();
        try {
            c.setTime(sdf.parse(date1));
        } catch (ParseException ex) {
            Logger.getLogger(search_methods.class.getName()).log(Level.SEVERE, null, ex);
        }
             c.add(Calendar.DATE,7);
             date1=sdf.format(c.getTime());
             
             String date2=obj.getPeriod();
             SimpleDateFormat sdf2= new SimpleDateFormat("dd mm yy");
             Calendar c2=Calendar.getInstance();
        try {
            c2.setTime(sdf.parse(date2));
        } catch (ParseException ex) {
            Logger.getLogger(search_methods.class.getName()).log(Level.SEVERE, null, ex);
        }
             c2.add(Calendar.DATE,-7);
             date2=sdf2.format(c.getTime());
             
        
        
        if(table_name.equals("travel")){
            
             r=st.executeQuery("select * from travel where (start_date BETWEEN '"+date1+"' and '"+date2+"')and (travel_title like '%'"+obj.getPlace()+"'%' or travel_detail like '%'"+obj.getPlace()+"'%') ");
             r.last();
             int n=r.getRow();
             r.beforeFirst();
             result=new Object[n][6];
             int x=0;

             while(r.next()){
                
                result[x][0]=r.getString("travel_title");
                result[x][1]=r.getString("travel_details");
                result[x][2]=r.getString("travel_price");
                result[x][3]=r.getString("travel_image");
                result[x][4]=r.getString("start_date");
                result[x][5]=r.getString("end_date");
                x++;
             }
        }
        else if(table_name.equals("offer")){
             r=st.executeQuery("select * from offer where (start_date BETWEEN '"+date1+"' and '"+date2+"')and (offer_title like '%'"+obj.getPlace()+"'%' or offer_detail like '%'"+obj.getPlace()+"'%') ");
             r.last();
             int n=r.getRow();
             r.beforeFirst();
             result=new Object[n][6];
             int x=0;

                while(r.next()){
                result[x][0]=r.getString("offer_title");
                result[x][1]=r.getString("offer_details");
                result[x][2]=r.getString("offer_price");
                result[x][3]=r.getString("offer_image");
                result[x][4]=r.getString("start_date");
                result[x][5]=r.getString("end_date");
                }
        }
        return result;
    
} 
     //---------------------search by cost , place and period--------------------------------//
    public Object[][] search_cost_place_period(model.search_Vars obj,String table_name) throws SQLException{
        jdbcManager jdbc = new jdbcManager();
        jdbc.connect();
        con = jdbc.get_connection();
        Statement st = con.createStatement();
        ResultSet r = null;
        Object[][] result=null;
        
         
             String date1=obj.getPeriod();
             SimpleDateFormat sdf= new SimpleDateFormat("dd mm yy");
             Calendar c=Calendar.getInstance();
        try {
            c.setTime(sdf.parse(date1));
        } catch (ParseException ex) {
            Logger.getLogger(search_methods.class.getName()).log(Level.SEVERE, null, ex);
        }
             c.add(Calendar.DATE,7);
             date1=sdf.format(c.getTime());
             
             String date2=obj.getPeriod();
             SimpleDateFormat sdf2= new SimpleDateFormat("dd mm yy");
             Calendar c2=Calendar.getInstance();
        try {
            c2.setTime(sdf.parse(date2));
        } catch (ParseException ex) {
            Logger.getLogger(search_methods.class.getName()).log(Level.SEVERE, null, ex);
        }
             c2.add(Calendar.DATE,-7);
             date2=sdf2.format(c.getTime());
             
        
        
        if(table_name.equals("travel")){
            
             r=st.executeQuery("select * from travel where (start_date BETWEEN '"+date1+"' and '"+date2+"')and (travel_title like '%'"+obj.getPlace()+"'%' or travel_detail like '%'"+obj.getPlace()+"'%')and (travel_price <= '"+obj.getCost()+"') ");
             r.last();
             int n=r.getRow();
             r.beforeFirst();
             result=new Object[n][6];
             int x=0;

             while(r.next()){
                
                result[x][0]=r.getString("travel_title");
                result[x][1]=r.getString("travel_details");
                result[x][2]=r.getString("travel_price");
                result[x][3]=r.getString("travel_image");
                result[x][4]=r.getString("start_date");
                result[x][5]=r.getString("end_date");
                x++;
             }
        }
        else if(table_name.equals("offer")){
             r=st.executeQuery("select * from offer where (start_date BETWEEN '"+date1+"' and '"+date2+"')and (offer_title like '%'"+obj.getPlace()+"'%' or offer_detail like '%'"+obj.getPlace()+"'%')and (offer_price <= '"+obj.getCost()+"') ");
             r.last();
             int n=r.getRow();
             r.beforeFirst();
             result=new Object[n][6];
             int x=0;

                while(r.next()){
                result[x][0]=r.getString("offer_title");
                result[x][1]=r.getString("offer_details");
                result[x][2]=r.getString("offer_price");
                result[x][3]=r.getString("offer_image");
                result[x][4]=r.getString("start_date");
                result[x][5]=r.getString("end_date");
                }
        }
        return result;
    
}    
    
    /// for select dropdown list
    public  Object [][] return_places(){
     
     Statement st;
     ResultSet res;
     Object ar[][]=null;
            
      try {
         db_manager m=new db_manager();
            m.connect();
            con= m.getCon();
          //hotel_id, hotel_name, hotel_address, hotel_description, hotel_stars, hotel_image, city_id
        //    hotel
         String sql="select * from travel_places";
           st=(Statement) con.createStatement();
          
          res =st.executeQuery(sql);
          res.last();
          int n=res.getRow();
          res.beforeFirst();
                                     
        ar=new Object[n][1];
          int x=0;
          
        while(res.next())
          {
             
              ar[x][0]=res.getString("place");
        
         x++;
          }
              
        } catch (SQLException ex) {
            System.out.print("error in sql");
        
       }
      
      return ar;
      }               
    
    
    
}
