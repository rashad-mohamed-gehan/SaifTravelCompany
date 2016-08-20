package controller_p;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.addOfferVariables;
import model.addTravelVariables;
import model.m_addOffer;
import model.m_addTravel;

@WebServlet(name = "c_addTravel", urlPatterns = {"/c_addTravel"})
public class c_addTravel extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        PrintWriter out = response.getWriter();
        m_addTravel add = new m_addTravel();
        addTravelVariables h = new addTravelVariables();
        String travelTitle=request.getParameter("travelTitle");
        String Place2=request.getParameter("travelPlace2");
        String Place3=request.getParameter("travelPlace3");
        String Place4=request.getParameter("travelPlace4");
        h.set_travelTitle(travelTitle);
        h.set_travelPrice(Float.parseFloat(request.getParameter("travelPrice")));
        h.set_travelStartDate(request.getParameter("travelStart"));
        h.set_travelEndDate(request.getParameter("travelEnd"));
        h.set_travelDescription(request.getParameter("travelDescription"));
        h.set_travelImage(request.getParameter("travelImage"));
        
        try {
            
            if (add.check(h)) {
                
                    response.sendRedirect("done_or_not_admin.jsp?done_h=found_h");
                
            } else {
              int result = add.addTravel(h);
                  if(result > 0){
           response.sendRedirect("done_or_not_admin.jsp?done_h=done_h");
           }
           else {
         response.sendRedirect("done_or_not_admin.jsp?done_h=not_h");
           }
              
            
      
                
                int travelId=add.selectById(h.get_travelTitle());
                    h.setFk_travel(travelId);
                    h.setPlace(request.getParameter("travelPlace1"));
                    int result1=add.addTravelPlace(h);
                    if(!Place2.equals("")){
                        h.setPlace2(Place2);
                    int result2=add.addTravelPlace2(h);
                    }
                    if(!Place3.equals("")){
                        h.setPlace3(Place3);
                        int result3=add.addTravelPlace3(h);
                    }
                    if(!Place4.equals("")){
                        h.setPlace4(Place4);
                        int result4=add.addTravelPlace4(h);
                    }
            }
        } catch (Exception e) {

        }
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
