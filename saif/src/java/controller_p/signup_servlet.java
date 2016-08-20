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
public class signup_servlet extends HttpServlet {

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
         String redirect1="home.jsp";
        String redirect2="account.jsp?a=register";
        String type=request.getParameter("a");
        if (type.equals("signup_apply_offer"))   {
       redirect2="account.jsp?a=signup_apply_offer";
       redirect1="apply_offer.jsp";
     }
        else  if (type.equals("signup_apply_travel"))   {
       redirect2="account.jsp?a=signup_apply_travel";
       redirect1="apply_travel.jsp";
     }
          else  if (type.equals("signup_apply_hotel"))   {
       redirect2="account.jsp?a=signup_apply_hotel";
       redirect1="apply_hotel.jsp";
     }
        
        
          HttpSession session=request.getSession(false);
           if(null==session){
                response.sendRedirect(redirect2);
                                                              
           
                           }
           else {
               
                  String content="<!DOCTYPE html>\n" +
"<html>\n" +
"    <head>\n" +
"        <title>Saif company</title>\n" +
"        <meta name=\"keywords\" content=\"\" />\n" +
"        <meta name=\"description\" content=\"\" />\n" +
"        <!-- \n" +
"        Sonic Template \n" +
"        http://www.templatemo.com/preview/templatemo_394_sonic \n" +
"        -->\n" +
"        <meta charset=\"utf-8\">\n" +
"        <meta name=\"viewport\" content=\"initial-scale=1\">\n" +
"        <link href='http://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,700italic,800italic,400,300,600,700,800' rel='stylesheet'             type='text/css'>\n" +
"        <link rel=\"stylesheet\" href=\"css/bootstrap.min.css\">\n" +
"        <link rel=\"stylesheet\" href=\"css/font-awesome.min.css\">\n" +
"        <link rel=\"stylesheet\" href=\"css/templatemo_misc.css\">\n" +
"        <link rel=\"stylesheet\" href=\"css/templatemo_style.css\">\n" +
"        <link rel=\"stylesheet\" href=\"css/animate.css\">\n" +
"        <link rel=\"shortcut icon\" href=\"images/tabIcon.png\">\n" +
"        <script src=\"js/wow.min.js\">new WOW().init();</script>\n" +
"    </head>\n" +
"    <body>";
    String tail="<body></html>";   
    PrintWriter out = response.getWriter();
         

    out.print(content);
    
            model.variables_signup v=new model.variables_signup();
            model.signup_c m=new model.signup_c();
            String name=request.getParameter("f_name");
            String email=request.getParameter("email");
            String password=request.getParameter("password");
            v.setF_name(name);
            v.setL_name(request.getParameter("l_name"));
            v.setEmail (email);
            v.setPassword(password);
          
              if(m.check(v)){
                  
                 RequestDispatcher rd=request.getRequestDispatcher(redirect2);
                  out.print("sorry there is another email like this ");
                  rd.include(request, response);
                  
                            }
              else {
                
             int x =m.sign_method(v);
             out.print(x);
                
                     if(x>0){
                 
                    session=request.getSession();
                   
                   session.setAttribute("name",name);
                   session.setAttribute("role","u");
                   model.variables_login vi=new model.variables_login();
                   vi.setEmail(email);
                   vi.setPassword(password);
                 String arr2[]=null;
                 model.login_c obj=new model.login_c();
                  arr2=obj.return_data(vi);
                  if(arr2!=null){
              
                   session.setAttribute("u_id",arr2[2]);
                   
                   
                   response.sendRedirect(redirect1);
               
                     }}
                     else{
                         out.print("error check connection or query");
                     }             
                
                 }
         out.print(tail);  
    }}

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
