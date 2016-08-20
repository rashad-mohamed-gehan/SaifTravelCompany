/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.awt.event.MouseEvent;
import java.awt.event.MouseListener;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author ascom
 */
public class m_deleteHotel {
    Connection con ; 
       
    public boolean  delete(deleteVariables v){
        int x=0;
        try {
         
         jdbcManager jdbc = new jdbcManager();
         
            jdbc.connect();
            con = jdbc.get_connection();
             Statement st = con.createStatement();
            x = st.executeUpdate("delete from hotel  where hotel_id='"+v.getHotel_id()+"'");
           
        } catch (SQLException ex) {
            Logger.getLogger(m_deleteHotel.class.getName()).log(Level.SEVERE, null, ex);
          
        }
 if(x==1){
                return true;
            }  
 return false;
    }
    



    
}
