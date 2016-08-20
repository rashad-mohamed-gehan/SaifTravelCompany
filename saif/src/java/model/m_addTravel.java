package model;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class m_addTravel {
 
    int x;
    Connection con;
    
     public int addTravel(model.addTravelVariables obj) throws SQLException {
        jdbcManager jdbc = new jdbcManager();
        jdbc.connect();
        con = jdbc.get_connection();
        Statement st = con.createStatement();
        x = st.executeUpdate("insert into travel (travel_title,travel_details,start_date,end_date,travel_price,travel_image) values('"+obj.get_travelTitle()+"','"+obj.get_travelDescription()+"','"+obj.get_travelStartDate()+"','"+obj.get_travelEndDate()+"','"+obj.get_travelPrice()+"','"+obj.get_travelImage()+"')");
        return x;
    }

    public boolean check(model.addTravelVariables obj) throws SQLException {
        boolean result = false;
        jdbcManager jdbc = new jdbcManager();
        jdbc.connect();
        con = jdbc.get_connection();
        Statement st = con.createStatement();
        ResultSet rs = st.executeQuery("select travel_title from  travel where travel_title='" + obj.get_travelTitle()+"'");
        if (rs.next()) {
            result = true;
        } else {
            result = false;
        }
        return result;
    }
    
     public int selectById(String travelName) throws SQLException{
        int result=0;
        Statement statement=con.createStatement();
        ResultSet res=statement.executeQuery("select travel_id from travel where travel_title='"+travelName+"'");
        if(res.next()){
            result=res.getInt("travel_id");
        }
        return result;
     }
     
     public int addTravelPlace(model.addTravelVariables obj) throws SQLException {
        jdbcManager jdbc = new jdbcManager();
        jdbc.connect();
        con = jdbc.get_connection();
        Statement st = con.createStatement();
        x = st.executeUpdate("insert into travel_places (place,travel_id) values('"+obj.getPlace()+"','"+obj.getFk_travel()+"')");
        return x;
    }
     public int addTravelPlace2(model.addTravelVariables obj) throws SQLException {
        jdbcManager jdbc = new jdbcManager();
        jdbc.connect();
        con = jdbc.get_connection();
        Statement st = con.createStatement();
        x = st.executeUpdate("insert into travel_places (place,travel_id) values('"+obj.getPlace2()+"','"+obj.getFk_travel()+"')");
        return x;
    }
     public int addTravelPlace3(model.addTravelVariables obj) throws SQLException {
        jdbcManager jdbc = new jdbcManager();
        jdbc.connect();
        con = jdbc.get_connection();
        Statement st = con.createStatement();
        x = st.executeUpdate("insert into travel_places (place,travel_id) values('"+obj.getPlace3()+"','"+obj.getFk_travel()+"')");
        return x;
    }
     public int addTravelPlace4(model.addTravelVariables obj) throws SQLException {
        jdbcManager jdbc = new jdbcManager();
        jdbc.connect();
        con = jdbc.get_connection();
        Statement st = con.createStatement();
        x = st.executeUpdate("insert into travel_places (place,travel_id) values('"+obj.getPlace4()+"','"+obj.getFk_travel()+"')");
        return x;
    }
}
