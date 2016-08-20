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
import model.addHotelVariables;
import model.m_addHotel;
@WebServlet(name = "c_addHotel", urlPatterns = {"/c_addHotel"})
public class c_addHotel extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        PrintWriter out = response.getWriter();
        m_addHotel add = new m_addHotel();
        addHotelVariables h = new addHotelVariables();
        h.set_hotelName(request.getParameter("hotelName"));
        h.set_hotelAddress(request.getParameter("hotelAddress"));
        h.set_hotelStars(request.getParameter("hotelStars"));
        h.set_hotelDescription(request.getParameter("description"));
     //   h.set_hotelImage(request.getParameter("hotelImage"));
        h.set_hotelCity(Integer.parseInt(request.getParameter("hotelCity")));
        try {
            if (add.check(h)) {
            
                    response.sendRedirect("done_or_not_admin.jsp?done_h=found_h");
                
            } else {
                int result = add.addHotel(h);
                  if(result > 0){
           response.sendRedirect("done_or_not_admin.jsp?done_h=done_h");
           }
           else {
         response.sendRedirect("done_or_not_admin.jsp?done_h=not_h");
           }
              
            }
        } catch (Exception ex) {
        }
    }
}
