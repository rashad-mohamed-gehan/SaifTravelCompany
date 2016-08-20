<%-- 
    Document   : done_or_not
    Created on : May 14, 2015, 4:32:29 AM
    Author     : r4ad
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8"/>
        <title>Saif company</title>
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <link rel="shortcut icon" href="images/tabIcon.png">
        <link rel="stylesheet" href="css/templatemo_style.css"/>
    </head>
    <body>
        <div class="masterLeft">
            <div class="logo">
                <a href="#"><h1>S a i f</h1></a>
                <span>Tourism company</span>
            </div> 
        </div>
        <div class="Reservation-congrat">
            <br>
            <%
            if(request.getParameter("done_h").equals("done_h")){%>
                   <p class="lead">
        <span>done </span>...Your process performed successfully <br>
                      
            </p>
            <%}
            else {%>
                 <p class="lead">
                 <style>   #g{
                     color: red;
                     } </style>
                     <span id="g">sorry !</span>...Your process doesn't performed successfully try again<br>
                       
            </p>
                
           <% }
            %>
            
         
            <a href="home.jsp">back to home</a>
        </div>
    </body>
</html>