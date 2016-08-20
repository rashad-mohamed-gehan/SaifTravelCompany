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
public class m_updateOffer {
     Connection con;
    int x;

    public int update(updateOfferVariables v) {
        try {
            jdbcManager jdbc = new jdbcManager();

            jdbc.connect();
            con = jdbc.get_connection();
            Statement st = con.createStatement();
            x= st.executeUpdate("update offer set offer_title='"+v.getOffer_title()+"',start_date='"+v.getStart_date()+"',end_date='"+v.getEnd_date()+"',offer_details='"+v.getOffer_details()+"',price_before='"+v.getPrice_before()+"',price_after='"+v.getPrice_after()+"' ,offer_image='"+v.getOffer_image()+"'where offer_id='"+v.getOffer_id()+"'");

            return x;
        } catch (SQLException ex) {
            Logger.getLogger(m_updateOffer.class.getName()).log(Level.SEVERE, null, ex);
        }
        return x;
    }
    
}
