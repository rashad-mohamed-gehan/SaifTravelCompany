<%-- 
    Document   : apply_travel
    Created on : Apr 18, 2015, 1:31:48 AM
    Author     : r4ad
--%>

<%@page import="java.util.Enumeration"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
 <head>
        <title>Travel reservation</title>
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
out.print("hi1");
            session = request.getSession();

            if (null == session.getAttribute("name")) {
                out.print("hi2");
                Enumeration enum1 = request.getParameterNames();
                while (enum1.hasMoreElements()) {
                    String paramName = (String) enum1.nextElement();
                    String paramValue = request.getParameter(paramName);
                    session.setAttribute("Applytravel", paramName);
                }
                response.sendRedirect("account.jsp?a=login_apply_travel");
            } else {
                out.print("hi2");
                if (null == session.getAttribute("Applytravel")) {
                    Enumeration enum1 = request.getParameterNames();
                    while (enum1.hasMoreElements()) {
                        String paramName = (String) enum1.nextElement();
                        String paramValue = request.getParameter(paramName);
                        session.setAttribute("Applytravel", paramName);
                        //out.print(paramName);
//connect

                    }
                } else {
                    out.print("hi3");
 //connect   
                  //  out.print(session.getAttribute("Apply travel"));

                }
                
           // offer 
                
             //   out.print(session.getAttribute("u_id"));
                
                %>
                
                
                     <div class="reserveTr">
             <form name="travelReservation" action="travel_ap_servlet" method="post">
                <input type="text" class="input-lg" placeholder="Enter your visa number " name="visa_num" required/><br>
                <input type="submit" class="input-lg subBut btn btn-primary" value="R e s e r v e"/><br>
                <a href="home.jsp">back to home</a>
            </form>
              </div>
             
                
                
<%
            }


        %>
    </body>
</html>
