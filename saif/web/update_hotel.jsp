<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8"/>
        <title>Update hotel</title>
        <link rel="stylesheet" href="css/bootstrap.min.css"/>
        <link rel="shortcut icon" href="images/tabIcon.png"/>
        <link rel="stylesheet" href="css/templatemo_style.css"/>
        <link rel="stylesheet" href="css/styleAdmin.css"/>
    </head>
    <body>
        <%Object arr[][]=null;
            int id=Integer.parseInt(request.getParameter("update_h").trim());
            model.hotel_c h=new model.hotel_c();
           arr= h.return_hotels2(id);
           if(arr==null){
               response.sendRedirect("home.jsp");
           }
          
            
            %>
            
            
        
        <!--  ar[x][0]=res.getString("hotel_name");
              ar[x][1]=res.getString("hotel_address");
              ar[x][2]=res.getString("hotel_description");
              ar[x][3]=res.getString("hotel_stars");
              ar[x][4]=res.getString("hotel_image");-->
       
       
       
        <div class="masterLeft">
            <div class="logo">
                <a href="index.html"><h1>S a i f</h1></a>
                <span>Tourism company</span>
            </div> 
        </div>
        <div class="updateHotelSection">
            <br>
            <p class="lead"><span style="color:#38a9e3;margin-left:50px;">Edit hotel's  data..!</span></p>
            <form name="addHotel" action="update_hotel"   enctype="multipart/form-data" >
                <input type="text" value=<%=arr[0][0]%> name="hotelName" required="required" class="input-lg addInputs" placeholder="enter hotel name">
                <input type="text"value="<%=arr[0][1]%>" name="hotelAddress" required="required" class="input-lg addInputs" placeholder="enter hotel address"><br>
              
                <%
                
                String v=(String) arr[0][3];
             
                if(v.equals("one star")){%>
                   <select class="selectStars" name="hotelStars" required>
                    <option selected="selected">one star</option>
                    <option>two stars</option>
                    <option>three stars</option>
                    <option>four stars</option>
                    <option>fivestars</option>
                    <option>sex stars</option>
                    <option>seven stars</option>
                     </select>
              <%  }
                else if(v.equals("two stars")){
                    %>
                     <select class="selectStars" name="hotelStars" required>
                    <option >one star</option>
                    <option selected="selected">two stars</option>
                    <option>three stars</option>
                    <option>four stars</option>
                    <option>fivestars</option>
                    <option>sex stars</option>
                    <option>seven stars</option>
                     </select>
                    <%}
                
                else if(v.equals("three stars")){%>
             <select class="selectStars" name="hotelStars" required>
                    <option >one star</option>
                    <option>two stars</option>
                    <option selected="selected">three stars</option>
                    <option>four stars</option>
                    <option>fivestars</option>
                    <option>sex stars</option>
                    <option>seven stars</option>
                     </select>
               <% }
                else if(v.equals("four stars")){
                 %>
                     <select class="selectStars" name="hotelStars" required>
                    <option >one star</option>
                    <option>two stars</option>
                    <option>three stars</option>
                    <option selected="selected">four stars</option>
                    <option>fivestars</option>
                    <option>sex stars</option>
                    <option>seven stars</option>
                     </select>
                    <%
                }
                else if(v.equals("fivestars")){
                    %>
                     <select class="selectStars" name="hotelStars" required>
                    <option >one star</option>
                    <option>two stars</option>
                    <option>three stars</option>
                    <option>four stars</option>
                    <option selected="selected" >fivestars</option>
                    <option>sex stars</option>
                    <option>seven stars</option>
                     </select>
                    <%
                }
                else if(v.equals("sex stars")){
            %>
                     <select class="selectStars" name="hotelStars" required>
                    <option >one star</option>
                    <option>two stars</option>
                    <option>three stars</option>
                    <option>four stars</option>
                    <option >fivestars</option>
                    <option selected="selected">sex stars</option>
                    <option>seven stars</option>
                     </select>
                    <%
                }
                 else if(v.equals("seven stars")){
                  %>
                     <select class="selectStars" name="hotelStars" required>
                    <option >one star</option>
                    <option>two stars</option>
                    <option>three stars</option>
                    <option>four stars</option>
                    <option>fivestars</option>
                    <option>sex stars</option>
                    <option selected="selected">seven stars</option>
                     </select>
                    <%
                }
       
             try{
                Class.forName("com.mysql.jdbc.Driver");
                
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost/saif", "root", null);
                Statement st = con.createStatement();
                ResultSet rst = st.executeQuery("select city_name,city_id from city");
                %>
               
                <select name="hotelCity" class="selectStars" required>
                     <option value="">select hotel city</option>
                  <%
           
                while (rst.next()) {
                  
                String p1=(String)rst.getString("city_name");
                String p2=(String)arr[0][5];
              
                
if(p1.trim().equals(p2.trim())){%>
                                <option selected="selected" value="<%= rst.getInt("city_id")%>"><%= rst.getString("city_name")%></option>

                <%  }
                  else{%>
                                <option  value="<%= rst.getInt("city_id")%>"><%= rst.getString("city_name")%></option>


                 <%}} %>
                     
</select>
                
             <%   }
                catch (Exception ex) {
                  }
            %>
               
                <br>
                <textarea class="input-lg hotDescUpdate" placeholder="Enter hotel description here" name="desc"><%=arr[0][2]%></textarea>
                <br>
                <span style="margin-left:50px;color:#ccc">upload image <input type="file" class="input-lg" id="imageChooser" name="file" size="60" value="images/portfolio/<%=arr[0][4]%>.jpg" ></span><br>
             <!--   <input type="submit" class="btn btn-primary sendHotelData" value="S A V E"  >-->
             <button class="btn btn-primary sendHotelData" name="update_h" value=<%=id%>>S A V E</button>
             
            </form>
            </div>
    </body>
</html>
              