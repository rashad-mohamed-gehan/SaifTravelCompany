
package model;

import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;

public class m_sendMessage {
    int x;
    Connection con;
    
    public int addMessage(model.sendMessageVariables obj) throws SQLException{
        jdbcManager jdbc=new jdbcManager();
        jdbc.connect();
        con=jdbc.get_connection();
        Statement st=con.createStatement();
        x=st.executeUpdate("insert into message (name, email, message, subject) values ('"+obj.getUserName()+"','"+obj.getEmail()+"','"+obj.getMessage()+"','"+obj.getSubject()+"')");
        return x;
    }
}
