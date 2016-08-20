<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html>
<html>
    <head><title>Saif company</title></head>
    <link rel="stylesheet" href="css/styleAdmin.css"/>
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="shortcut icon" href="images/tabIcon.png">
    <body>
        
        <div class="masterLeft">
            <div class="logo">
                <a href="#"><h1>S a i f</h1></a>
                <span>Tourism company</span>
            </div> 
        </div>
        
        <div class="my-container">
            
            <!--Start navigation tab-->
            <ul id="my-tabs">
                <li id="tab1">Add Hotel</li>
                <li id="tab2" class="inactive">Add Travel</li>
                <li id="tab3" class="inactive">Add Offers</li>
              <!--  <li id="tab4" class="inactive">Add Room</li>-->
                <li id="tab5" class="inactive">Hotel reservations</li>
                <li id="tab6" class="inactive">Travel reservations</li>
                <li id="tab7" class="inactive">Offer reservations</li>
                <li id="tab8" class="inactive">Messages</li>
            </ul>
            <!--End navigation tab-->
            
            <!----Start Add Hotel---->
            <div id="tab1-content">
                <form name="addHotel" action="c_addHotel" method="post">
                    <input type="text" name="hotelName" required="required" class="input-lg addInputs" placeholder="enter hotel name">
                    <input type="text" name="hotelAddress" required="required" class="input-lg addInputs" placeholder="enter hotel address">                           <br>
                    <select class="selectStars" name="hotelStars" required>
                        <option>one star</option>
                        <option>two stars</option>
                        <option>three stars</option>
                        <option>four stars</option>
                        <option>fivestars</option>
                        <option>sex stars</option>
                        <option>seven stars</option>
                    </select>
                    
                    <%
                    //get hotel name from database and fill dropdown list 
                    try {
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection  con = DriverManager.getConnection("jdbc:mysql://localhost/saif1?autoReconnect=true","saif1","12345");
                    Statement st = con.createStatement();
                    ResultSet rst = st.executeQuery("select city_name,city_id from city");
                    %>
                   
                    <select name="hotelCity" class="selectStars" required>
                    <option value="">select hotel city</option>
                     
                    <%  while (rst.next()) {%>
                    <option value="<%= rst.getString("city_id")%>"><%= rst.getString("city_name")%></option>
                    <%}%>
                    
                    </select>
                    
                    <%} catch (Exception ex) {
                    }
                    %>
                    
                    <textarea class="desc input-lg" placeholder="enter hotel description" name="description"></textarea><br>
                    <span style="margin-left:50px;color:#ccc">upload image <input type="file" class="input-lg" id="imageChooser"></span><br>
                    <input type="submit" class="btn btn-primary sendHotelData" value="Enter data">
                </form>
            </div>
            <!----End Add Hotel---->
            
            <!----Start Add travel---->
            <div id="tab2-content">
                <form name="addTravel" action="c_addTravel" method="post">
                    <input type="text" name="travelTitle" required="required" class="input-lg addInputs" placeholder="enter travel title">
                    <input type="text" name="travelPrice" required="required" class="input-lg addInputs" placeholder="enter travel price"><br>
                    <table><tr style="font-weight: bold;"><td>Start date</td><td>End date</td></tr></table>
                    <input type="date" name="travelStart" required="required" class="input-lg travelDate">
                    <input type="date" name="travelEnd" required="required" class="input-lg travelDate"><br><br>
                    <p id="enterPlaces">Enter places to visit ...at least one place</p>
                    <input type="text" name="travelPlace1" required="required" class="input-lg addInputs" placeholder="enter first place">
                    <input type="text" name="travelPlace2" class="input-lg addInputs" placeholder="enter second place"><br><br>
                    <input type="text" name="travelPlace3" class="input-lg addInputs" placeholder="enter third place">
                    <input type="text" name="travelPlace4" class="input-lg addInputs" placeholder="enter forth place"><br><br>
                    <textarea class="desc input-lg" placeholder="enter travel description" required  name="travelDescription"></textarea><br>
                    <span style="margin-left:50px;color:#ccc">upload image <input type="file" class="input-lg" id="imageChooser"></span><br>
                    <input type="submit" class="btn btn-primary sendHotelData" value="Enter data">
                </form>
            </div>
            <!----End Add travel---->
            
            <!--Start Add offer-->
            <div id="tab3-content">
                <form name="addOffer" action="c_addOffer" method="post">
                    <input type="text" name="offerTitle" required="required" class="input-lg addInputs offerName" placeholder="enter offer title">
                    <input type="text" name="priceBefore" required="required" class="input-lg addInputs offerPrice"
                           placeholder="enter normal price">
                    <input type="text" name="priceAfter" required="required" class="input-lg addInputs offerPrice"
                           placeholder="enter offer price">
                    <table><tr><td>Start date</td><td>End date</td></tr></table>
                    <input type="date" name="offerStart" required="required" class="input-lg travelDate">
                    <input type="date" name="offerlEnd" required="required" class="input-lg travelDate">
                    <textarea class="desc input-lg" placeholder="enter offer description" name="description" required></textarea><br>
                    <span style="margin-left:50px;color:#ccc">upload image <input type="file" class="input-lg" id="imageChooser"></span><br>
                    <input type="submit" class="btn btn-primary sendHotelData" value="Enter data">
                </form>
            </div>
            <!--End Add offer-->
            
            <!--Start add room-->
            <div id="tab4-content">
                <form name="addRoom" action="c_addRoom" method="post">
                    
                    <%
                    try {
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection con = DriverManager.getConnection("jdbc:mysql://localhost/saif1?autoReconnect=true","saif1","12345");
                    Statement st = con.createStatement();
                    ResultSet rst = st.executeQuery("select hotel_name from hotel");
                    %>
                   
                    <select class="selectHotel" name="hotelName" style="margin-top:0;padding:0;margin-bottom:10px" required>
                    <option value="">please select hotel</option>
                    
                    <%  while (rst.next()) {%>
                    <option><%= rst.getString("hotel_name")%></option>
                    <% } %>
                    
                    </select>
                    
                    <%} catch (Exception ex) {
                    }%>    
                   
                    <input type="text" name="roomNumber" required="required" class="input-lg addInputs offerName"
                            placeholder="enter room number">
                    <input type="text" name="position" required="required" class="input-lg addInputs offerPrice"
                           placeholder="enter room position">
                    <input type="text" name="capacity" required="required" class="input-lg addInputs offerPrice"
                           placeholder="enter room capacity">
                    <textarea class="desc input-lg" placeholder="enter room description" name="description" required></textarea><br>
                    <input type="submit" class="btn btn-primary sendHotelData" value="Enter data">
                </form>
            </div>
            <!--end add room-->
            
            <!--Start Hotel Reservations-->
            <div id="tab5-content">
                <form name="searchHotelReservations" method="post" action="hotelReservations.jsp">
                    <h2 style="margin-left:50px;color:#FFF;margin-bottom:0">select hotel</h2>
                    
                    <%
                    //get hotel name from database and fill dropdown list 
                    try {
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection con = DriverManager.getConnection("jdbc:mysql://localhost/saif1?autoReconnect=true","saif1","12345");
                    Statement st = con.createStatement();
                    ResultSet rst = st.executeQuery("select hotel_name,hotel_id from hotel");
                    %>
                    
                    <select class="selectHotel" name="hotelName" required>
                    
                    <%  while (rst.next()) {%>
                    <option value="<%= rst.getInt("hotel_id")%>"><%= rst.getString("hotel_name")%></option>
                    <%}%>
                    
                    </select><br><br>
                    
                    <%} catch (Exception ex) {
                    }%>
                    
                    <input type="submit" class="btn btn-primary sendHotelData" value="S e a r c h">
                </form>
            </div>
            <!--End Hotel Reservations-->
            
            <!--Start travel Reservations-->
            <div id="tab6-content">
                <form name="searchTravelReservations" method="post" action="travelReservations.jsp">
                    <h2 style="margin-left:50px;color:#FFF;margin-bottom:0">select travel</h2>
                    
                    <%
                    //get travel name from database and fill dropdown list 
                    try {
                    Class.forName("com.mysql.jdbc.Driver");
                                        Connection con = DriverManager.getConnection("jdbc:mysql://localhost/saif1?autoReconnect=true","saif1","12345");
                    Statement st = con.createStatement();
                    ResultSet rst = st.executeQuery("select travel_title,travel_id from travel");
                    %>
                    
                    <select name="travelName" class="selectHotel" required>
                    
                    <%  while (rst.next()) {%>
                    <option value="<%= rst.getInt("travel_id")%>"><%= rst.getString("travel_title")%></option>
                    <%}%>
                   
                    </select>
                    
                    <%} catch (Exception ex) {
                    }%>
                    
                    <br><br>
                    <input type="submit" class="btn btn-primary sendHotelData" value="S e a r c h">
                </form>
            </div>
            <!--End travel Reservations-->
            
            <!--start offer Reservations-->
            <div id="tab7-content">
            <form name="searchOfferReservations" method="post" action="offerReservations.jsp">
                    <h2 style="margin-left:50px;color:#FFF;margin-bottom:0">select offer</h2>
                    
                    <%
                    //get hotel name from database and fill dropdown list 
                    try {
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection con = DriverManager.getConnection("jdbc:mysql://localhost/saif1?autoReconnect=true","saif1","12345");
                    Statement st = con.createStatement();
                    ResultSet rst = st.executeQuery("select offer_title,offer_id from offer");
                    %>
                    
                    <select name="offerName" class="selectHotel" required>
                    
                    <%  while (rst.next()) {%>
                    <option value="<%= rst.getInt("offer_id")%>"><%= rst.getString("offer_title")%></option>
                    <%}%>
                    
                    </select><br><br>
                    
                    <%} catch (Exception ex) {
                    }%>
                    -->
                    <input type="submit" class="btn btn-primary sendHotelData" value="S e a r c h">
                </form>
            </div>
            <!--end offer reservations-->
            
            <!--start messages-->
            <div id="tab8-content">
              <form name="messages" action="messages.jsp" method="post">
                  <input type="submit" value="view messages" class="btn btn-primary">
              </form>
            </div>
            <!--End messages-->
            
        </div>
    </body>
    <script src="js/jquery-1.11.2.min.js"></script>
    <script src="plugins/jqueryAdmin.js"></script>
</html>