package model;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
public class m_addOffer {
    
    int x;
    Connection con;
    
     public int addOffer(model.addOfferVariables obj) throws SQLException {
        jdbcManager jdbc = new jdbcManager();
        jdbc.connect();
        con = jdbc.get_connection();
        Statement st = con.createStatement();
        x = st.executeUpdate("insert into offer (offer_title,start_date,end_date,offer_details,price_before,price_after,offer_image) values('"+obj.get_offerTitle()+"','"+obj.get_offerStartDate()+"','"+obj.get_offerEndDate()+"','"+obj.get_offerDescription()+"','"+obj.get_offerPriceBefor()+"','"+obj.get_offerPriceAfter()+"','"+obj.get_offerImage()+"')");
        return x;
    }

    public boolean check(model.addOfferVariables obj) throws SQLException {
        boolean result = false;
        jdbcManager jdbc = new jdbcManager();
        jdbc.connect();
        con = jdbc.get_connection();
        Statement st = con.createStatement();
        ResultSet rs = st.executeQuery("select offer_title from  offer where offer_title='" + obj.get_offerTitle()+"'");
        if (rs.next()) {
            result = true;
        } else {
            result = false;
        }
        return result;
    }
}
