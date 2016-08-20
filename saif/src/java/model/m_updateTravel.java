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
public class m_updateTravel {
      Connection con;
    int x;

    public int update(updateTravelVariables v) {
        try {
            jdbcManager jdbc = new jdbcManager();

            jdbc.connect();
            con = jdbc.get_connection();
            Statement st = con.createStatement();
            x= st.executeUpdate("update travel set travel_title='"+v.getTravel_title()+"',travel_details='"+v.getTravel_details()+"',start_date='"+v.getStart_date()+"',end_date='"+v.getEnd_date()+"',travel_price='"+v.getTavel_price()+"',travel_image='"+v.getTravel_image()+"' where travel_id='"+v.getTravel_id()+"'");

            return x;
        } catch (SQLException ex) {
            Logger.getLogger(m_updateTravel.class.getName()).log(Level.SEVERE, null, ex);
        }
        return x;
    }
    
    
}
