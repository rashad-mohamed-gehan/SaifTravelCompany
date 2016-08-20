package model;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class m_addHotel {

    int x;
    Connection con;
    

    public int addHotel(model.addHotelVariables obj) throws SQLException {
        jdbcManager jdbc = new jdbcManager();
        jdbc.connect();
        con = jdbc.get_connection();
        Statement st = con.createStatement();
        x = st.executeUpdate("INSERT INTO hotel(hotel_name,hotel_address,hotel_description,hotel_stars,city_id) VALUES('"+obj.get_hotelName()+"','"+obj.get_hotelAddress()+"','"+obj.get_hotelDescription()+"','"+obj.get_hotelStars()+"','"+obj.get_hotelCity()+"')");
        return x;
    }

    public boolean check(model.addHotelVariables obj) throws SQLException {
        boolean result = false;
        jdbcManager jdbc = new jdbcManager();
        jdbc.connect();
        con = jdbc.get_connection();
        Statement st = con.createStatement();
        ResultSet rs = st.executeQuery("select hotel_name from  hotel where hotel_name= '" + obj.get_hotelName() + "'");
        if (rs.next()) {
            result = true;
        } else {
            result = false;
        }
        return result;
    }
    
}
