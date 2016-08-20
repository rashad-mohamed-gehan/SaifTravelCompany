package controller_p;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author r4ad
 */
public class update_hotel extends HttpServlet {

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
        try (PrintWriter out = response.getWriter()) {
            //hotel_id, hotel_name, hotel_address, hotel_description, hotel_stars, hotel_image, city_id
            String hotel_name=request.getParameter("hotelName");
            String hotel_address=request.getParameter("hotelAddress");
            String hotel_description=request.getParameter("desc");
            String hotel_stars=request.getParameter("hotelStars");
            String city_id=request.getParameter("hotelCity");
            String hotel_image=request.getParameter("hotel_image");
            int id=Integer.parseInt(request.getParameter("update_h").trim());
         
            
           
             
            model.updateHotelVariables v=new model.updateHotelVariables();
            model.m_updateHotel m=new model.m_updateHotel();
            v.setHotelName(hotel_name);
            v.setHotelAddress(hotel_address);
            v.setHotelDescription(hotel_description);
            v.setHotelStars(hotel_stars);
            v.setHotelCity(Integer.parseInt(city_id));
            v.setHotelImage(hotel_image);
            v.setHotel_id(id);
            if(m.update(v)>0){
                             

           response.sendRedirect("done_or_not.jsp?done_h=done_h");
           
         

          
            }
            else {
                         response.sendRedirect("done_or_not.jsp?done_h=not_h");
                
            }
            
            
            
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
