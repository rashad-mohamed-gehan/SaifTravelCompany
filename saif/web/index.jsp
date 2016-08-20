<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Connection"%>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <title>TODO supply a title</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>
        <!-- start Add hotel -->
        <form name="addHotel" action="c_addHotel" method="post">
            <input type="text" name="hotelName" required="required" class="input-lg addInputs" placeholder="enter hotel name">
            <input type="text" name="hotelAddress" required="required" class="input-lg addInputs" placeholder="enter hotel address">
            <br>
            <select class="selectStars" name="hotelStars">
                <option>one star</option>
                <option>two stars</option>
                <option>three stars</option>
                <option>four stars</option>
                <option>five stars</option>
                <option>sex stars</option>
                <option>seven stars</option>
            </select>
            <%
            //get hotel name from database and fill dropdown list 
            try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection   con=DriverManager.getConnection("jdbc:mysql://localhost/saif","root",null);
            Statement st = con.createStatement();
            ResultSet rst = st.executeQuery("select city_name,city_id from city");
            %>
            <select name="hotelCity" class="selectStars">
                <option value="">select hotel city</option>
                <%  while (rst.next()) {%>
                <option value="<%= rst.getString("city_id")%>"><%= rst.getString("city_name")%></option>
                <%}%>
            </select>
            <%
            }catch (Exception ex) {}
            %>
            <textarea class="desc input-lg" placeholder="enter hotel description" name="description"></textarea><br>
            <span style="margin-left:50px;color:#ccc">upload image <input type="file" class="input-lg" id="imageChooser" name="hotelImage"></span><br>
            <input type="submit" class="btn btn-primary sendHotelData" value="Enter data">
        </form>
        <!-- End Add hotel -->
        <hr>
        <!-- start Add Offer -->
        <form name="addOffer" action="c_addOffer" method="post">
            <input type="text" name="offerTitle" required="required" class="input-lg addInputs offerName" placeholder="enter offer title">
            <input type="text" name="priceBefore" required="required" class="input-lg addInputs offerPrice" placeholder="enter normal price">
            <input type="text" name="priceAfter" required="required" class="input-lg addInputs offerPrice" placeholder="enter offer price">
            <table><tr><td>Start date</td><td>End date</td></tr></table>
            <input type="date" name="offerStart" required="required" class="input-lg travelDate">
            <input type="date" name="offerlEnd" required="required" class="input-lg travelDate">
            <textarea class="desc input-lg" placeholder="enter offer description" name="offerDescription"></textarea><br>
            <span style="margin-left:50px;color:#ccc">upload image <input type="file" class="input-lg" id="imageChooser" name="offerImage"></span><br>
            <input type="submit" class="btn btn-primary sendHotelData" value="Enter data">
        </form>
        <!-- end Add Offer -->
        <hr>
        <!-- start Add travel -->
        <form name="addTravel" action="c_addTravel" method="post">
            <input type="text" name="travelTitle" required="required" class="input-lg addInputs" placeholder="enter travel title">
            <input type="text" name="travelPrice" required="required" class="input-lg addInputs" placeholder="enter travel price"><br>
            <table><tr><td>Start date</td><td>End date</td></tr></table>
            <input type="date" name="travelStart" required="required" class="input-lg travelDate">
            <input type="date" name="travelEnd" required="required" class="input-lg travelDate">
            <textarea class="desc input-lg" placeholder="enter travel description" name="travelDescription"></textarea><br>
            <span style="margin-left:50px;color:#ccc">upload image <input type="file" class="input-lg" id="imageChooser" name="travelImage"></span><br>
            <input type="text" name="travelPlace1" required="required" class="input-lg addInputs" placeholder="enter travel first place">
            <input type="text" name="travelPlace2" class="input-lg addInputs" placeholder="enter travel second place">
            <input type="text" name="travelPlace3" class="input-lg addInputs" placeholder="enter travel third place">
            <input type="text" name="travelPlace4" class="input-lg addInputs" placeholder="enter travel forth place">
            <input type="submit" class="btn btn-primary sendHotelData" value="Enter data">
        </form>
        <!-- end Add travel -->
        <hr>
        <hr>
        add room
        <br>
        <form action="c_addRoom" method="post">
            <%
                try {
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection con = DriverManager.getConnection("jdbc:mysql://localhost/saif","root", null);
                    Statement st = con.createStatement();
                    ResultSet rst = st.executeQuery("select hotel_name from hotel");
            %>
            <select name="hotelName">
                <%  while (rst.next()) {%>
                <option><%= rst.getString("hotel_name")%></option>
                <% } %>
            </select><br>
            <%} catch (Exception ex) {
            }%>
            <input type="text" name="roomNumber" placeholder="room number"><br>
            <input type="text" name="position" placeholder="rom position"><br>
            <input type="text" name="capacity" placeholder="room capacity"><br>
            <textarea name="description" placeholder="room description"></textarea><br>
            <input type="submit" value="enter">
        </form>
        <hr>
        hotel reservations
        <br>
                <form name="searchHotelReservations" method="post" action="hotelReservations.jsp">
                    <h2 style="margin-left:50px;color:#FFF;margin-bottom:0">select hotel</h2>
                    <%
                    //get hotel name from database and fill dropdown list 
                    try {
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection con = DriverManager.getConnection("jdbc:mysql://localhost/user", "root", null);
                    Statement st = con.createStatement();
                    ResultSet rst = st.executeQuery("select name,id from hotel");
                    %>
                    <select name="hotelName" class="selectHotel" required>
                    <%  while (rst.next()) {%>
                    <option value="<%= rst.getString("id")%>"><%= rst.getString("name")%></option>
                    <%}%>
                    </select><br><br>
                    <%} catch (Exception ex) {
                    }%>
                    
                    <input type="submit" class="btn btn-primary sendHotelData" value="S e a r c h">
                </form>
                      <hr>
                      <br>
                <form name="searchTravelReservations" method="post" action="travelReservations.jsp">
                    <h2 style="margin-left:50px;color:#FFF;margin-bottom:0">select hotel</h2>
                    <%
                    //get travel name from database and fill dropdown list 
                    try {
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection con = DriverManager.getConnection("jdbc:mysql://localhost/user", "root", null);
                    Statement st = con.createStatement();
                    ResultSet rst = st.executeQuery("select title,id from travel");
                    %>
                    <select name="travelName" class="selectHotel" required>
                    <%  while (rst.next()) {%>
                    <option value="<%= rst.getString("id")%>"><%= rst.getString("title")%></option>
                    <%}%>
                    </select><br><br>
                    <%} catch (Exception ex) {
                      }%>
                    
                    <input type="submit" class="btn btn-primary sendHotelData" value="S e a r c h">
                    </form>
                      <br><hr>
                    <form name="searchOfferReservations" method="post" action="offerReservations.jsp">
                    <h2 style="margin-left:50px;color:#FFF;margin-bottom:0">select hotel</h2>
                    <%
                    //get hotel name from database and fill dropdown list 
                    try {
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection con = DriverManager.getConnection("jdbc:mysql://localhost/user", "root", null);
                    Statement st = con.createStatement();
                    ResultSet rst = st.executeQuery("select title,id from offer");
                    %>
                    <select name="offerName" class="selectHotel" required>
                    <%  while (rst.next()) {%>
                    <option value="<%= rst.getString("id")%>"><%= rst.getString("title")%></option>
                    <%}%>
                    </select><br><br>
                    <%} catch (Exception ex) {
                    }%>
                    
                    <input type="submit" class="btn btn-primary sendHotelData" value="S e a r c h">
                </form>
                      <br><hr>
                      <form name="messages" action="messages.jsp" method="post">
                          <input type="submit" value="view messages">
                      </form>
                      <BR><HR>
                <form action="c_sendMessage" method="post">
                    <div class="col-md-4">
                        <input name="userName" type="text" id="name-id" class="form-control input-lg" maxlength="40" placeholder="Your name" required="required">
                    </div> 
                    <div class="col-md-4">
                        <input name="email" type="text" class="form-control input-lg" id="email-id" maxlength="40" placeholder="Your email" required="required">
                    </div> 
                    <div class="col-md-4">
                        <input name="subject" type="text" class="form-control input-lg" id="subject-id" maxlength="60" placeholder="Subject">
                    </div> 
                    <div class="col-md-12">
                        <textarea name="message" id="message-id" class="form-control input-lg" rows="6" placeholder="Your message here" required="required"></textarea>
                    </div> 
                    <div class="col-md-12">
                        <div class="submit-btn">
                            <input type="submit" class="btn-primary" value="S E N D - - M E S S A G E ">
                        </div> 
                    </div> 
                </form>
                      <br><hr>
                      Reservation hotel
                      <form name="reservationHotel" method="post" action="" class="reservationHotelForm">
                            <input type="text" name="userName" placeholder="enter your name" class="input-lg sel" required="required"/><br>
                            <input type="email" name="email" placeholder="enter your email" class="input-lg sel" required="required"/><br>
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
    </body>
</html>
