
package model;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class m_addRoom {
    
    int x;
    Connection con;
    
     public int addRoom(model.addRoomVariables obj) throws SQLException {
        jdbcManager jdbc = new jdbcManager();
        jdbc.connect();
        con = jdbc.get_connection();
        Statement st = con.createStatement();
        x = st.executeUpdate("insert into room (hotel_name,room_number,position,capacity,price) values('"+obj.getHotelName()+"','"+obj.getRoomNumber()+"','"+obj.getRoomPosition()+"','"+obj.getRoomCapacity()+"','"+obj.getRoomPrice()+"')");
        return x;
    }

    public boolean check(model.addRoomVariables obj) throws SQLException {
        boolean result = false;
        jdbcManager jdbc = new jdbcManager();
        jdbc.connect();
        con = jdbc.get_connection();
        Statement st = con.createStatement();
        ResultSet rs = st.executeQuery("select hotel_name,room_number from  room where hotel_name='"+obj.getHotelName()+"' and number='"+obj.getRoomNumber()+"'");
        if (rs.next()) {
            result = true;
        } else {
            result = false;
        }
        return result;
    }
}
