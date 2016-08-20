/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller_p;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author r4ad
 */
public class hotel_ap_servlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        HttpSession session =request.getSession();
     PrintWriter out=response.getWriter();
                  // username, email, visa, start_date, end_date, phone, cost, kids, adults, hotel_id
//u_id
      String u_id_
              =(String) session.getAttribute("u_id");
      
      
     int u_id=Integer.parseInt(u_id_.trim());
     model.login_c mo=new model.login_c();
      String []k= mo.return_data_(u_id);
   String username=k[0];
      
       
    String email=k[1];
         String visa=request.getParameter("visa");
                                  String startDate=request.getParameter("startDate");
                                           String endDate=request.getParameter("endDate");
                                                    String phone=request.getParameter("phone");
                                                             String cost="100$";
                                                                     String kids=request.getParameter("kids") ;
                                                                             String adults=request.getParameter("adults");
                                                                                  String hotel_id=(String) session.getAttribute("hot_id");
                                                                     
                                                                     
                                                                  
       out.print(u_id+" "+visa+" "+startDate+" "+endDate+" "+phone+" "+cost+" "+kids+" "+adults+" "+hotel_id);
         
      model.variables_hotel m=new model.variables_hotel();
       model.hotel_c h=new model.hotel_c();
       m.setUsername(username);
       m.setEmail(email);
       m.setVisa(visa);
       m.setStart_date(startDate);
       m.setEnd_date(endDate);
       m.setPhone(phone);
       m.setCost(cost);
       m.setKids(kids);
       m.setAdults(adults);
       m.setHotel_id(hotel_id);
        
    if(h.apply_hotel(m)>0){
        response.sendRedirect("reservationDone.html");
    }
   
        else {
     out.print("sorry there is an error !! just try again "); 
    RequestDispatcher rd=request.getRequestDispatcher("apply_hotel.jsp");
     rd.include(request, response);
      }
    
       
       
        
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
        PrintWriter out = response.getWriter();
        
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
     
       
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
