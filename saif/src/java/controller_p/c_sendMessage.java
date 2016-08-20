
package controller_p;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.ws.rs.core.Response;
import model.m_sendMessage;
import model.sendMessageVariables;

@WebServlet(name = "c_sendMessage", urlPatterns = {"/c_sendMessage"})
public class c_sendMessage extends HttpServlet {
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
    }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
            PrintWriter out = response.getWriter();
            m_sendMessage s=new m_sendMessage();
            sendMessageVariables sv=new sendMessageVariables();
            sv.setUserName(request.getParameter("userName"));
            sv.setEmail(request.getParameter("email"));
            sv.setSubject(request.getParameter("subject"));
            sv.setMessage(request.getParameter("message"));
            try {int result=s.addMessage(sv);
            
              if(result>0){
           response.sendRedirect("done_or_not.jsp?done_h=done_h");
           }
           else {
         response.sendRedirect("done_or_not.jsp?done_h=not_h");
           }
            
         
            }
            catch (SQLException ex) {}
            
    }
    @Override
    public String getServletInfo() {
        return "Short description";
    }

}
