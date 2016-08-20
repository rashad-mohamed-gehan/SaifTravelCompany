package model;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;

public class jdbcManager {

    public Connection con;
    public ResultSet res;
    public Statement st;

    public void connect() {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost/saif1?autoReconnect=true","saif1","12345");

        } catch (Exception ex) {

        }
    }

    public Connection get_connection() {
        return con;
    }

    public void setConnection(Connection con) {
        this.con = con;
    }
}
