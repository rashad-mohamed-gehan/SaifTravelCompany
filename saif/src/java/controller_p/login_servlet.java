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
public class login_servlet extends HttpServlet {

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
        PrintWriter out = response.getWriter();
        
          String type=request.getParameter("a"); 
          String redirect1="home.jsp";
            String redirect2="account.jsp?a=login";
          if(type.equals("login_apply_offer")){
              redirect1="apply_offer.jsp";
              redirect2="account.jsp?a=login_apply_offer";

          }
          else if(type.equals("login_apply_travel")){
              redirect1="apply_travel.jsp";
              redirect2="account.jsp?a=login_apply_travel";

          }
           else if(type.equals("login_apply_hotel")){
              redirect1="apply_hotel.jsp";
              redirect2="account.jsp?a=login_apply_hotel";

          }
        model.variables_login v=new model.variables_login();
        model.login_c m=new model.login_c();
            String email=request.getParameter("email");
        String password=request.getParameter("password");
            v.setEmail (email);
            v.setPassword(password);
            
           
          
              if(m.check(v)){
                  String arr[]=null;
                  arr=m.return_data(v);
                  if(arr!=null){
                   HttpSession session=request.getSession();
                   
                   session.setAttribute("name",arr[0]);
                   session.setAttribute("role",arr[1]);
                   session.setAttribute("u_id",arr[2]);
                  }
               
                  
    /*if(type.equals("login")){  
response.setHeader("Cache-Control","no-cache");
response.setHeader("Cache-Control","no-store");
response.setHeader("Pragma","no-cache");
response.setDateHeader ("Expires", 0);
                  }*/
                  
   
response.sendRedirect(redirect1);
               

                            }
              else {
                      
             RequestDispatcher rd=request.getRequestDispatcher(redirect2);
          out.print("sorry can't find this user name or password");
                  rd.include(request, response);
            }
        
        
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
