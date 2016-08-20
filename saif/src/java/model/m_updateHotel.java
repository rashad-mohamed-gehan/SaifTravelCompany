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
public class m_updateHotel {

    Connection con;
    int x;

    public int update(updateHotelVariables v) {
        try {
            jdbcManager jdbc = new jdbcManager();

            jdbc.connect();
            con = jdbc.get_connection();
            Statement st = con.createStatement();
            x= st.executeUpdate("update hotel set hotel_name='"+v.getHotelName()+"',hotel_address='"+v.getHotelAddress()+"',hotel_stars='"+v.getHotelStars()+"',city_id='"+v.getHotelCity()+"',hotel_description='"+v.getHotelDescription()+"' where hotel_id='"+v.getHotel_id()+"'");

            return x;
        } catch (SQLException ex) {
            Logger.getLogger(m_updateHotel.class.getName()).log(Level.SEVERE, null, ex);
        }
        return x;
    }
}
