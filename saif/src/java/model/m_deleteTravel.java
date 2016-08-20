/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author ascom
 */
public class m_deleteTravel {
     Connection con ; 
    int x=0;
       
    public boolean  delete(deleteVariables v){
        try {
         
         jdbcManager jdbc = new jdbcManager();
         
            jdbc.connect();
            con = jdbc.get_connection();
             Statement st = con.createStatement();
            x = st.executeUpdate("delete from travel  where travel_id='"+v.getTravel_id()+"'");
         
        } catch (SQLException ex) {
            Logger.getLogger(m_deleteTravel.class.getName()).log(Level.SEVERE, null, ex);
        }
   if(x==1){
                return true;
            }  
 return false;
    }
    
}
