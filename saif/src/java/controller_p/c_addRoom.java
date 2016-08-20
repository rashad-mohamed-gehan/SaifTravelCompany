
package controller_p;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.addHotelVariables;
import model.addRoomVariables;
import model.m_addHotel;
import model.m_addRoom;

@WebServlet(name = "c_addRoom", urlPatterns = {"/c_addRoom"})
public class c_addRoom extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {}
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        PrintWriter out = response.getWriter();
        m_addRoom add = new m_addRoom();
        addRoomVariables h = new addRoomVariables();
        h.setHotelName(request.getParameter("hotelName"));
        h.setRoomNumber(request.getParameter("roomNumber"));
        h.setRoomPosition(request.getParameter("position"));
        h.setRoomCapacity(request.getParameter("capacity"));
        h.setRoomPrice(request.getParameter("description"));
        try {
            if (add.check(h)) {
                out.print("room is exist");
            } else {
                int result = add.addRoom(h);
                if (result > 0) {
                    out.print("done adding");
                } else {
                    System.out.print("error");
                    out.print("error adding");
                }
            }
        } catch (Exception ex) {
        }
    }
    @Override
    public String getServletInfo() {
        return "Short description";
    }

}
