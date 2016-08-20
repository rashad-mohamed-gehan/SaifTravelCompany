package controller_p;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.addHotelVariables;
import model.addOfferVariables;
import model.m_addHotel;
import model.m_addOffer;

@WebServlet(name = "c_addOffer", urlPatterns = {"/c_addOffer"})
public class c_addOffer extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        PrintWriter out = response.getWriter();
        m_addOffer add = new m_addOffer();
        addOfferVariables h = new addOfferVariables();
        h.set_offerTitle(request.getParameter("offerTitle"));
        h.set_offerPriceBefor(Float.parseFloat(request.getParameter("priceBefore")));
        h.set_offerPriceAfter(Float.parseFloat(request.getParameter("priceAfter")));
        h.set_offerStartDate(request.getParameter("offerStart"));
        h.set_offerEndDate(request.getParameter("offerlEnd"));
        h.set_offerDescription(request.getParameter("offerDescription"));
        h.set_offerImage(request.getParameter("offerImage"));
        try {
                if (add.check(h)) {
                
                    response.sendRedirect("done_or_not_admin.jsp?done_h=found_h");
                
            } else {
                int result = add.addOffer(h);
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

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
