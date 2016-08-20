<%-- 
    Document   : apply_offer
    Created on : Apr 16, 2015, 2:20:04 AM
    Author     : r4ad
--%>

<%@page import="java.util.Enumeration"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
        <title>offer reservation</title>
        <meta charset="utf-8"/>
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <link rel="stylesheet" href="css/templatemo_style.css"/>
        <link rel="shortcut icon" href="images/tabIcon.png">
    </head>
    
    <body>
        <div class="masterLeft">
            <div class="logo">
                <a href="#"><h1>S a i f</h1></a>
                <span>Tourism company</span>
            </div> 
        </div>
        <%

            session = request.getSession();

            if (null == session.getAttribute("name")) {
                Enumeration enum1 = request.getParameterNames();
                while (enum1.hasMoreElements()) {
                    String paramName = (String) enum1.nextElement();
                    String paramValue = request.getParameter(paramName);
                    session.setAttribute("Apply offer", paramName);
                }
                response.sendRedirect("account.jsp?a=login_apply_offer");
            } else {
                if (null == session.getAttribute("Apply offer")) {
                    Enumeration enum1 = request.getParameterNames();
                    while (enum1.hasMoreElements()) {
                        String paramName = (String) enum1.nextElement();
                        String paramValue = request.getParameter(paramName);
                        session.setAttribute("Apply offer", paramName);
                        //out.print(paramName);
//connect

                    }
                } else {
 //connect   
        //            out.print(session.getAttribute("Apply offer"));

                }
                
           // offer 
                
           //     out.print(session.getAttribute("u_id"));
                
                %>
                
          
                   <div class="reserveTr">
                <form name="travelReservation" action="offer_ap_servlet" method="post">
                    <input type="text" class="input-lg" name="visa_num"  placeholder="Enter your visa number" required /><br>
                    <input type="submit" value="apply" class="input-lg  subBut btn btn-primary" value="R e s e r v e"/>
                   <br> <a href="home.jsp">back to home</a>
                </form>
                       </div>
                
                
<%
            }


        %>
    </body>
</html>
