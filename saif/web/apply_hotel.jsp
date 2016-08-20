<%-- 
    Document   : apply_hotel
    Created on : May 15, 2015, 5:24:59 AM
    Author     : r4ad
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
     <head>
        <title>Hotels</title>
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <link rel="shortcut icon" href="images/tabIcon.png" />
        <link rel="stylesheet" href="css/hotelDetailsStyle.css" />
        
    </head>
    <body> <div class="masterLeft">
                <div class="logo">
                    <a href="#"><h1>S a i f</h1></a>
                    <span>Tourism company</span>
                </div> 
            </div>

            <div class="row">
                <div class="hotelRight">

    
                    <div class="reserveHotel">
                        <h2 style=" margin-bottom: 50px; margin-left: 20px; color:#38a9e3"> H o t e l - r e s e r v a t i o n</h2>
                        <%
                            if(null == session.getAttribute("name")){

 response.sendRedirect("account.jsp?a=login_apply_hotel");
                                                                    }
                                                                   
                            
                  
                       
                        %>
                        <form name="reservationHotel" method="post" action="hotel_ap_servlet" class="reservationHotelForm">
                       <!--     <input type="text" name="userName" placeholder="enter your name" class="input-lg sel" required="required"/><br>-->
                 
                          <!--  <input type="email" name="email" placeholder="enter your email" class="input-lg sel" required="required"/><br> -->
                            <input type="text" name="visa" placeholder="enter visa number" class="input-lg sel" required="required"/><br>
                            <p>Start date</p>
                            <input type="date" name="startDate" class="reservationHotelForm input-lg sel" required="required"/><br>
                            <p>End date</p>
                            <input type="date" name="endDate" class="reservationHotelForm input-lg sel" required="required"/><br>
                            <input type="text" id="mob" name="phone" placeholder="enter mobile number"
                                   class="reservationHotelForm input-lg sel" required="required"/><br>
                            <select name="kids" class="input-lg sel">
                                <option value="">select number of kids</option>
                                <option>1</option>
                                <option>2</option>
                                <option>3</option>
                                <option>4</option>
                                <option>5</option>
                            </select><br>
                            <select name="adults" class="input-lg sel">
                                <option value="">select number of adults</option>
                                <option>1</option>
                                <option>2</option>
                                <option>3</option>
                                <option>4</option>
                                <option>5</option>
                            </select><br>
                            <input type="submit" class="btn btn-primary sel" value="R e s e r v e"/>
                    </form>
                
                        </div>
      </div>
                </div>
    </body>
</html>
