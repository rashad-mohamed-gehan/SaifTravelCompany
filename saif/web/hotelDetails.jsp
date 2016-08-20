<!DOCTYPE html>
<html>
    <head>
        <title>Hotels</title>
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <link rel="shortcut icon" href="images/tabIcon.png" />
        <link rel="stylesheet" href="css/hotelDetailsStyle.css" />
        
    </head>
    <body>
        <div>
                                                                                                                                                  
                                               
            <% Object arr[][]=null;
 try{  
                       model.hotel_c m=new model.hotel_c();
                       arr=m.return_hotels22(Integer.parseInt(request.getParameter("id")));
                       if(arr==null){
                            response.sendRedirect("home.jsp");
 
                       }
                       
             
   }
                    
   
   catch(Exception e){
             //   response.sendRedirect("home.jsp");
 
                      }%>  
            <div class="masterLeft">
                <div class="logo">
                    <a href="#"><h1>S a i f</h1></a>
                    <span>Tourism company</span>
                </div> 
            </div>

            <div class="row">
                <div class="hotelRight">
                    <img width="700px" height="400px" alt="hotel image" src="images/portfolio/<%=arr[0][4]%>.jpg" ><br>
                    
                        
                    </style>
                    <h2>Name : </h2> <div > <%=arr[0][0]%></div>
                    <p>
                    
                    </p>
                    <h2>address : </h2> <%=arr[0][1]%>
                    <p>
                    
                    </p>
                    <h2>description : </h2> <%=arr[0][2]%>
                    <p>
                    
                    </p>
                    <h2>stars : </h2>  <%=arr[0][3]%>
                    <p>
                    
                    </p>
                    
                     <!--        ar[x][0]=res.getInt("hotel_name");
              ar[x][1]=res.getString("hotel_address");
              ar[x][2]=res.getString("hotel_description");
              ar[x][3]=res.getString("hotel_stars");
              ar[x][4]=res.getString("hotel_image");
        
 -->
<style>.applyOfferZ1{margin-top: 150px;  margin-right:50px; margin-bottom: 50px; background:#5BC0DE; display: inline-block;margin-left: 40px;text-align: center;color:#fff;font-size: 20px;padding: 5px;border-radius: 5px;margin-top: 20px;}</style> 

   <form action="apply_hotel.jsp" >
   <button class="applyOfferZ1" name="id" >Reserve on this hotel</button> &nbsp;
      </form>
                 <%
                  session.setAttribute("hot_id", request.getParameter("id"));
                 %>                                 
                    
            </div>
            </div>
        </div>
    </body>
</html>

                                 <!--user name 	email 	visa 	start 	end 	phone 	cost 	kids 	adults-->