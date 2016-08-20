<!DOCTYPE html>
<html>
<head>
    <title>Saif company</title>
	<meta name="keywords" content="" />
	<meta name="description" content="" />
	<meta charset="utf-8">
	<meta name="viewport" content="initial-scale=1">
	<link href='http://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,700italic,800italic,400,300,600,700,800' rel='stylesheet'               type='text/css'>
	<link rel="stylesheet" href="css/bootstrap.min.css">
	<link rel="stylesheet" href="css/font-awesome.min.css">
	<link rel="stylesheet" href="css/templatemo_misc.css">
	<link rel="stylesheet" href="css/templatemo_style.css">
    <link rel="stylesheet" href="css/animate.css">
    <link rel="shortcut icon" href="images/tabIcon.png">
    <link rel="stylesheet" href="css/animate.css">
</head>
<body>
	<!-- This one in here is responsive menu for tablet and mobiles -->
    <div class="responsive-navigation visible-sm visible-xs">
            <a href="#" class="menu-toggle-btn"><i class="fa fa-bars fa-2x"></i></a>
        <div class="navigation responsive-menu">
            <ul>
                <li class="home lead"><a href="#templatemo">HOME</a></li>
	            <li class="about lead"><a href="#about">ABOUT US</a></li>
	            <li class="services lead"><a href="#services">SERVICES</a></li>
                <li class="search lead"><a href="#possibilities">POSSIBILITIES</a></li>
	            <li class="portfolio lead"><a href="#portfolio">HOTELS</a></li>
                <li class="hotels lead"><a href="#travels">TRAVELS</a></li>
                <li class="offers lead"><a href="#offers">OFFERS</a></li>
	            <li class="contact lead"><a href="#contact">CONTACT</a></li>
            </ul><!-- /.main_menu -->
        </div> <!-- /.responsive_menu -->
    </div> <!-- /responsive_navigation -->

	<div id="main-sidebar" class="hidden-xs hidden-sm">
                 <div >

<style>.applyOfferZ1{background:#5BC0DE;width: 150px;display: inline-block;margin-left: 40px;text-align: center;color:#fff;font-size: 20px;padding: 5px;border-radius: 5px;margin-top: 20px;}</style> 
<%
      session=request.getSession();
      
   if(null == session.getAttribute("name")){
                                                 %>
                <a href="account.jsp?a=login" >sign in</a>
                <a href="account.jsp?a=register"  >register</a>
                  <style>
                    .admin-buttons1{
                        visibility: hidden;
                    }
                    .applyOfferZ1{
                         visibility: visible; 
                    }
                </style>
                <%
                                            }
   else{
    String name = (String) session.getAttribute("name");
    String role = (String) session.getAttribute("role");
   out.print(" Welcome " + name);
   if(role.equals("a")){
       %>
                <a class="admin-buttons1" href="indexAdmin.jsp" target="_blank">Add data</a>
                <style>
                    .admin-buttons1{
                        visibility: visible;
                    }
                    .applyOfferZ1{
                         visibility: hidden; 
                    }
                </style>
                        
                <a href="signout_servlet" >signout</a>
                <%
   }
   else {
       %>
                <a href="signout_servlet" >signout</a>
                  <style>
                    .admin-buttons1{
                        visibility: hidden;
                    }
                    .applyOfferZ1{
                         visibility: visible; 
                    }
                </style>
                
                
     <%
   }
      }
   
   %>
                
                
                
               


            </div>
   
		<div class="logo">
			<a href="#"><h1>S a i f</h1></a>
			<span>Tourism company</span>
		</div> <!-- /.logo -->
		<div class="navigation">
	        <ul class="main-menu">
	            <li class="home lead"><a href="#templatemo">HOME</a></li>
	            <li class="about lead"><a href="#about">ABOUT US</a></li>
	            <li class="services lead"><a href="#services">SERVICES</a></li>
                <li class="search lead"><a href="#possibilities">POSSIBILITIES</a></li>
	            <li class="portfolio lead"><a href="#portfolio">HOTELS</a></li>
                <li class="hotels lead"><a href="#travels">TRAVELS</a></li>
                <li class="offers"><a href="#offers">OFFERS</a></li>
	            <li class="contact"><a href="#contact">CONTACT</a></li>
	        </ul>
		</div> <!-- /.navigation -->
	</div> <!-- /#main-sidebar -->

	<div id="main-content">
		<div id="templatemo">
			<div class="main-slider">
				<div class="flexslider">
                    <!--slider-->
					<ul class="slides">
						<li>
							<div class="slider-caption">
								<h2>Pure views</h2>
								<p class="lead">Our hotels have views of the sea and the magician unique breathtaking views</p>
								<a href="#" class="largeButton homeBgColor">Read More</a>
							</div>
							     <img src="images/slide1.jpg" alt="Slide 1">
						</li>
						<li>
							<div class="slider-caption">
								<h2>Comfortable rooms</h2>
								<p class="lead">All rooms have luck and a multitude of comfort, tranquility and breadth of space</p>
								<a href="#" class="largeButton homeBgColor">Read More</a>
							</div>
							<img src="images/slide2.jpg" alt="Slide 2">
						</li>
                        <li>
							<div class="slider-caption">
								<h2>Play and entertainment</h2>
								<p class="lead">Our hotel has a small special places to play, recreation and also swim</p>
								<a href="#" class="largeButton homeBgColor">Read More</a>
							</div>
							<img src="images/slide3.jpg" alt="Slide 3">
						</li>
                        <li>
							<div class="slider-caption">
								<h2>Comfortable Suite </h2>
								<p class="lead">We have a wonderful especially Suites also characterized by expansion of space and tranquility</p>
								<a href="#" class="largeButton homeBgColor">Read More</a>
							</div>
							<img src="images/slide4.jpg" alt="Slide 3">
						</li>
                        <li>
							<div class="slider-caption">
								<h2>Restaurants</h2>
								<p class="lead">Featuring our restaurants largest international restaurants in terms of being the best workers and                                                 cuisine and the best services</p>
								<a href="#" class="largeButton homeBgColor">Read More</a>
							</div>
							     <img src="images/slide5.jpg" alt="Slide 3">
						</li>
					</ul>
				</div>
			 </div>
            </div>
            <!--end of slider-->
        
			<div class="container-fluid">
                <!--start about us-->
				<div class="row">
					<div class="col-md-12">
						<div class="welcome-text">
				            <h2 class="wow bounceInRight" style="font-weight:400">Welcome to SAIF</h2>
							<p class="lead wow bounceInRight"  data-wow-offset="100" data-wow-duration="2s">SAIF is a <a href="#">
                                tourism company </a>of the largest companies located in our time
                                Where it supports your travels entertainment inside and outside Egypt in terms of the right
                                <a href="#portfolio">hotel booking</a>
                                Choose suitable prices fit your capabilities
                                Our company offers a lot of offers and discounts for you throughout the year
                            </p>
						</div>
					</div>
				</div>
			</div>
		 <!-- /#sTop -->
        
        
		<div class="container-fluid">
			<div id="about" class="section-content">
				<div class="row">
					<div class="col-md-12">
						<div class="section-title">
							<h2>About Us</h2>
						</div>
					</div>
				</div>
                
				<div class="row">
                    <div class="Ourbranches">
                        Our Branches
                    </div>
					<div class="col-md-4">
						<div class="member-item wow bounceInDown" data-wow-offset="120" data-wow-duration="2s">
							<div class="member-thumb">
								<img width="100%" height="270px" src="images/team.jpg" alt="girl 1">
								<div class="overlay">
									<ul class="social-member">
										<li><a href="#" class="fa fa-facebook"></a></li>
										<li><a href="#" class="fa fa-twitter"></a></li>
										<li><a href="#" class="fa fa-linkedin"></a></li>
									</ul>
								</div>
							</div>
							<div class="member-content">
								<h4>Shebin Al-kom</h4>
								<p>Company Address</p>
							</div>
						</div>
					</div> <!-- /.col-md-4 -->
                    
					<div class="col-md-4">
						<div class="member-item wow zoomIn" data-wow-offset="120" data-wow-duration="2s">
							<div class="member-thumb">
								<img width="189px" height="270px" src="images/tt.jpg" alt="girl 2">
								<div class="overlay">
									<ul class="social-member">
										<li><a href="#" class="fa fa-facebook"></a></li>
										<li><a href="#" class="fa fa-twitter"></a></li>
										<li><a href="#" class="fa fa-linkedin"></a></li>
									</ul>
								</div>
							</div>
							<div class="member-content">
								<h4>Tanta</h4>
								<p>Company Address</p>
							</div>
						</div>
					</div> <!-- /.col-md-4 -->
                    
					<div class="col-md-4">
						<div class="member-item wow bounceInUp" data-wow-offset="120" data-wow-duration="2s">
							<div class="member-thumb">
								<img width="100%" height="270px" src="images/tt2.jpg" alt="girl 3">
								<div class="overlay">
									<ul class="social-member">
										<li><a href="#" class="fa fa-facebook"></a></li>
										<li><a href="#" class="fa fa-twitter"></a></li>
										<li><a href="#" class="fa fa-linkedin"></a></li>
									</ul>
								</div>
							</div>
                            
							<div class="member-content">
								<h4>Banha</h4>
								<p>Company Address</p>
							</div>
						</div>
					</div> <!-- /.col-md-4 -->
				</div> <!-- /.row -->
                
				<div class="row our-story">
					<div class="col-md-8">
						<h3>About Saif</h3>
					  	<p class="lead">
                        Saif company is one of the best companies in egypt and arab world. saif has lots of branches all-over arab countries 
                        and it's travels is all-over the world. it have hundreds hotels and tourism places all-over the world<br>
						with our website you can find your hotel, find your comfartable room to be your's for any time you want.
                        also you can search about your hotel which you exactly want with your own styles.<br>
                        our company every week will give you an offer of hotels or travel to any place and also comfartable tourism places.
                        </p>
					</div>
					<div class="col-md-4">
						<div class="story-image">
							<img src="images/responsive-design.jpg" alt="">
						</div>
					</div>
				</div> <!-- /.row -->
                
			</div> <!-- /#about -->
            
			<div id="services" class="section-content">
                
				<div class="row">
					<div class="col-md-12">
						<div class="section-title">
							<h2>Services</h2>
						</div> <!-- /.section-title -->
					</div> <!-- /.col-md-12 -->
				</div> <!-- /.row -->
                
				<div class="row">
					<div class="col-md-4">
						<div class="service-item clearfix  wow zoomInDown" data-wow-offset="150">
							<div class="service-icon"><i class="fa fa-bolt fa-2x"></i></div>
							<div class="service-content"><h3>The Best<br>Support Ever</h3></div>
						</div> <!-- /.service-item -->
					</div> <!-- /.col-md-4 -->
					<div class="col-md-4">
						<div class="service-item wow zoomInDown" data-wow-delay=".5s" data-wow-offset="150">
							<div class="service-icon"><i class="fa fa-laptop fa-2x"></i></div>
							<div class="service-content"><h3>Convenience and comfort</h3></div>
						</div> <!-- /.service-item -->
					</div> <!-- /.col-md-4 -->
					<div class="col-md-4">
						<div class="service-item wow zoomInDown" data-wow-delay="1s" data-wow-offset="150">
							<div class="service-icon"><i class="fa fa-pencil fa-2x"></i></div>
							<div class="service-content"><h3>Unlimited<br>Offers</h3></div>
						</div> <!-- /.service-item -->
					</div> <!-- /.col-md-4 -->
				</div> <!-- /.row -->
                
				<div class="row our-skills">
					<div class="col-md-8">
						<h3>Our Skills</h3>
						<p class="lead">
                        Our company is one of the best companies to possess those with experience staff very large.<br>
                        we have high trained staff of comfortable services. also we have the ability of solving any problem that will happen to                           you at any one of our hotels or at any travel or any visits.<br>
                        also we have full qualified tourguides to be with you at any time.
                        <br><br>all of these people exist to serve you
                        </p>
					</div>
                    
					<div class="col-md-4">
						<ul class="progess-bars">
							<li>
								<div class="progress">
									<div class="progress-bar" role="progressbar" aria-valuenow="90" aria-valuemin="0" aria-valuemax="100"                                              style="width: 90%;">
                                        Managment 90%
                                    </div>
								</div>
							</li>
							<li>
								<div class="progress">
									<div class="progress-bar" role="progressbar" aria-valuenow="75" aria-valuemin="0" aria-valuemax="100"                                              style="width: 75%;">places to visit 95%</div>
								</div>
							</li>
							<li>
								<div class="progress">
									<div class="progress-bar" role="progressbar" aria-valuenow="66" aria-valuemin="0" aria-valuemax="100"                                              style="width: 66%;">daily, weekly offers 70%</div>
								</div>
							</li>
							<li>
								<div class="progress">
									<div class="progress-bar" role="progressbar" aria-valuenow="88" aria-valuemin="0" aria-valuemax="100"                                               style="width: 88%;">Marketing 88%</div>
								</div>
							</li>
						</ul>
					</div>
				</div>
			</div> <!-- /#services -->
            
            <div class="posible" id="possibilities">
                <hr id="hrPosibil">
                <h2>possibilities</h2>
                <div class="posibleContents">
                    <form name="search"  action="search_servlet">
                      <% 
   
model.search_methods n=new model.search_methods();
Object d[][]=n.return_places();
%>
                    <select name="selected_place" id="select" required= class="col-md-12 searchXD">
                        <option>Select place</option>
                        <%
                        for(int it=0;it<d.length;it++){%>
                            <option><%=d[it][0]%></option>
                       <% }
                        
                        %>
                    </select>
                    
                   
                    
                    <input type="text" name="cost" placeholder="Enter expected cost" class="input-md-12 searchXD"  class="col-md-12">
                    <input type="text" name="period" placeholder="Enter period" class="input-md-12 searchXD" class="col-md-12">
                    <input type="submit" class="btn btn-danger wow rotateIn" data-wow-offset="100" value="S e a r c h" col-md-12>
                    </form>
                </div>
            
            
            </div>
			
            <!--------------------------start portofolio--------------------------------------------------->
                                                                                                                                      <!--start hotel  -->
                                                                                                                               
   
                                                                                                                                      
                                                                                                                                      
                                                                                                                                      
                                                                                                                                      
                                                                                                                                      
                                                                                                                                      
                                                                                                                                      
                                                                                                                                      
                                                                                                                                      
                                                                                                                                      
                                                                                                                                      
                                                                                                                                      
                                                                                                                                      
                                                                                                                                      
                                                                                                                                      
                                                                                                                                      
                                                                                                                                      
                                                                                                                                      
                 <%--
                 session.setAttribute("search_result");
              
--%>                                                                                                                    
                                                                                                                                      
                                                                                                                                      
                                                                                                                                      
                                                                                                                                      
                                                                                                                                      
                                                                                                                                      
                                                                                                                                      
                                                                                                                                      
                                                                                                                                      
                                                                                                                                      
                                                                                                                                      <% Object arr[][]=null;
        int counter=0; 
 try{  
      
                      session = request.getSession();
                    if (session == null) {
                       model.hotel_c m=new model.hotel_c();
                       arr=m.return_hotels();
                       counter=arr.length;
                       
                                     } 
                                       else {
               
                   
if(session.getAttribute("var").equals(null)){}
else{
    model.search_Vars hh=(model.search_Vars)session.getAttribute("search_result");
    if(hh.getArr_h().equals(null)){
          model.variables_hotel obj=(model.variables_hotel)session.getAttribute("obj_arr");
       arr=obj.getArr();
               counter=Integer.parseInt(String.valueOf(session.getAttribute("var")));
    
}
    else {
        arr=hh.getArr_h();
          counter=hh.getArr_h().length;
         }
     
        
        
   }
                    
    }}
   catch(Exception e){
                  model.hotel_c m=new model.hotel_c();
                  arr=m.return_hotels();
                       counter=arr.length;
 
                      }%>                        
 
	<div id="portfolio" class="section-content">
          
				<div class="row">
					<div class="col-md-12">
						<div class="section-title">
							<h2>Hotels</h2>
						</div> <!-- /.section-title -->
					</div> <!-- /.col-md-12 -->
				</div> <!-- /.row -->
      
                       <%
      
       if (arr.length<1){%>
       <div class="row"><h1>&nbsp;&nbsp;sorry !! there are no hotels yet</h1> </div>
                  <%}
       else {
           if(counter>=3){
                  if(counter==3){%>
                       <div class="row">
                 <%for(int i=0;i<3;i++){ %><!--1,2,3 complete-->
                 
                 <!-- /.row -->
                  
                        <div class="col-md-4">
                            <div class="portfolio-item">
                                <div class="portfolio-thumb">                               
         <!--hdiv1-->                              <img src="images/portfolio/<%=arr[counter-1][3] %>.jpg" alt="Fantasy"/>
                                    <div class="overlay-p">
                                        <a href="images/portfolio/<%=arr[counter-1][3] %>.jpg" data-gal="prettyPhoto">
                                            <i class="fa fa-arrows-alt fa-2x"></i>
                                        </a>
                                    </div>
                                </div> <!-- /.portfolio-thumb -->
                    <h3 class="portfolio-title"><a href="#"><%=arr[counter-1][2] %></a></h3>
                                <div><a id="hotel1" href="hotelDetails.jsp?id=<%=arr[counter-1][1] %>" >more details</a></div>

                                <div class="admin-buttons1">
                                    <form  method="get">
                                        <button class="btn btn-success" name="delete_h" formaction="delete_depart" value=<%=String.valueOf(arr[counter-1][1])%>>Delete</button> &nbsp;
                                        <button class="btn btn-success" name="update_h" formaction="update_hotel.jsp" value=<%=String.valueOf(arr[counter-1][1])%>>Update</button>
                                     </form>
                                   
                                   
                                </div>

                            </div> <!-- /.portfolio-item -->
                        </div> <!-- /.col-md-4 -->
                      
                
                                    
                                    
           
                     <%  counter--;
                 }%>    </div> <!-- /.row --><%
                  }
                  else if(counter > 3 &&counter < 6)
                  {
           if(counter==4){
                
          %>  <div class="row"><%
 for(int i=0;i<3;i++){%><!--4-->
                              <!-- /.row -->
                  
                        <div class="col-md-4">
                            <div class="portfolio-item">
                                <div class="portfolio-thumb">                               
         <!--hdiv1-->                              <img src="images/portfolio/<%=arr[counter-1][3] %>.jpg" alt="Fantasy"/>
                                    <div class="overlay-p">
                                        <a href="images/portfolio/<%=arr[counter-1][3] %>.jpg" data-gal="prettyPhoto">
                                            <i class="fa fa-arrows-alt fa-2x"></i>
                                        </a>
                                    </div>
                                </div> <!-- /.portfolio-thumb -->
                    <h3 class="portfolio-title"><a href="#"><%=arr[counter-1][2] %></a></h3>
                                <div><a id="hotel1" href="hotelDetails.jsp?id=<%=arr[counter-1][1] %>" >more details</a></div>

                                <div class="admin-buttons1">
                           <form  method="get">
                                        <button class="btn btn-success" name="delete_h" formaction="delete_depart" value=<%=String.valueOf(arr[counter-1][1])%>>Delete</button> &nbsp;
                                        <button class="btn btn-success" name="update_h" formaction="update_hotel.jsp" value=<%=String.valueOf(arr[counter-1][1])%>>Update</button>
                                     </form>
                                </div>

                            </div> <!-- /.portfolio-item -->
                        </div> <!-- /.col-md-4 -->
                      
            
                                    
                                                  <%     counter--;
                  }%>
                   </div> <!-- /.row -->
               <div class="row">
                   
                                 
                        <div class="col-md-4">
                            <div class="portfolio-item">
                                <div class="portfolio-thumb">                               
         <!--hdiv1-->                              <img src="images/portfolio/<%=arr[counter-1][3] %>.jpg" alt="Fantasy"/>
                                    <div class="overlay-p">
                                        <a href="images/portfolio/<%=arr[counter-1][3] %>.jpg" data-gal="prettyPhoto">
                                            <i class="fa fa-arrows-alt fa-2x"></i>
                                        </a>
                                    </div>
                                </div> <!-- /.portfolio-thumb -->
                    <h3 class="portfolio-title"><a href="#"><%=arr[counter-1][2] %></a></h3>
                                <div><a id="hotel1" href="hotelDetails.jsp?id=<%=arr[counter-1][1] %>" >more details</a></div>

                                <div class="admin-buttons1">
                               <form  method="get">
                                        <button class="btn btn-success" name="delete_h" formaction="delete_depart" value=<%=String.valueOf(arr[counter-1][1])%>>Delete</button> &nbsp;
                                        <button class="btn btn-success" name="update_h" formaction="update_hotel.jsp" value=<%=String.valueOf(arr[counter-1][1])%>>Update</button>
                                     </form>

                            </div> <!-- /.portfolio-item -->
                        </div> <!-- /.col-md-4 -->
                      
            
                                    
                                                  <%     counter--;
               
               
               %>
  </div> <!-- /.row -->
                   
           <%
           }
           if(counter==5){
             %>   <div class="row"> <%
                 for(int i=0;i<3;i++){%><!--5-->
                              <!-- /.row -->
                  
                        <div class="col-md-4">
                            <div class="portfolio-item">
                                <div class="portfolio-thumb">                               
         <!--hdiv1-->                              <img src="images/portfolio/<%=arr[counter-1][3] %>.jpg" alt="Fantasy"/>
                                    <div class="overlay-p">
                                        <a href="images/portfolio/<%=arr[counter-1][3] %>.jpg" data-gal="prettyPhoto">
                                            <i class="fa fa-arrows-alt fa-2x"></i>
                                        </a>
                                    </div>
                                </div> <!-- /.portfolio-thumb -->
                    <h3 class="portfolio-title"><a href="#"><%=arr[counter-1][2] %></a></h3>
                                <div><a id="hotel1" href="hotelDetails.jsp?id=<%=arr[counter-1][1] %>" >more details</a></div>

                                <div class="admin-buttons1">
                            <form  method="get">
                                        <button class="btn btn-success" name="delete_h" formaction="delete_depart" value=<%=String.valueOf(arr[counter-1][1])%>>Delete</button> &nbsp;
                                        <button class="btn btn-success" name="update_h" formaction="update_hotel.jsp" value=<%=String.valueOf(arr[counter-1][1])%>>Update</button>
                                     </form>
                                </div>

                            </div> <!-- /.portfolio-item -->
                        </div> <!-- /.col-md-4 -->
                      
           
                                    
                                                  <%     counter--;
                  }%>         </div> <!-- /.row -->
                   %>   <div class="row"> <%
                 for(int i=0;i<2;i++){%><!--5-->
                              <!-- /.row -->
                  
                        <div class="col-md-4">
                            <div class="portfolio-item">
                                <div class="portfolio-thumb">                               
         <!--hdiv1-->                              <img src="images/portfolio/<%=arr[counter-1][3] %>.jpg" alt="Fantasy"/>
                                    <div class="overlay-p">
                                        <a href="images/portfolio/<%=arr[counter-1][3] %>.jpg" data-gal="prettyPhoto">
                                            <i class="fa fa-arrows-alt fa-2x"></i>
                                        </a>
                                    </div>
                                </div> <!-- /.portfolio-thumb -->
                    <h3 class="portfolio-title"><a href="#"><%=arr[counter-1][2] %></a></h3>
                                <div><a id="hotel1" href="hotelDetails.jsp?id=<%=arr[counter-1][1] %>" >more details</a></div>

                                <div class="admin-buttons1">
                               <form  method="get">
                                        <button class="btn btn-success" name="delete_h" formaction="delete_depart" value=<%=String.valueOf(arr[counter-1][1])%>>Delete</button> &nbsp;
                                        <button class="btn btn-success" name="update_h" formaction="update_hotel.jsp" value=<%=String.valueOf(arr[counter-1][1])%>>Update</button>
                                     </form>
                                </div>

                            </div> <!-- /.portfolio-item -->
                        </div> <!-- /.col-md-4 -->
                      
           
                                    
                                                  <%     counter--;
                  }%>         </div> <!-- /.row -->
                  
                  
                  
                  
                  
                  
                  <% }
                  
                  } 
                  else if(counter >= 6){
                %>   <div class="row"> <%
                 for(int i=0;i<3;i++){%><!--5-->
                              <!-- /.row -->
                  
                        <div class="col-md-4">
                            <div class="portfolio-item">
                                <div class="portfolio-thumb">                               
         <!--hdiv1-->                              <img src="images/portfolio/<%=arr[counter-1][3] %>.jpg" alt="Fantasy"/>
                                    <div class="overlay-p">
                                        <a href="images/portfolio/<%=arr[counter-1][3] %>.jpg" data-gal="prettyPhoto">
                                            <i class="fa fa-arrows-alt fa-2x"></i>
                                        </a>
                                    </div>
                                </div> <!-- /.portfolio-thumb -->
                    <h3 class="portfolio-title"><a href="#"><%=arr[counter-1][2] %></a></h3>
                                <div><a id="hotel1" href="hotelDetails.jsp?id=<%=arr[counter-1][1] %>" >more details</a></div>

                                <div class="admin-buttons1">
                                     <form  method="get">
                                        <button class="btn btn-success" name="delete_h" formaction="delete_depart" value=<%=String.valueOf(arr[counter-1][1])%>>Delete</button> &nbsp;
                                        <button class="btn btn-success" name="update_h" formaction="update_hotel.jsp" value=<%=String.valueOf(arr[counter-1][1])%>>Update</button>
                                     </form>
                                </div>

                            </div> <!-- /.portfolio-item -->
                        </div> <!-- /.col-md-4 -->
                      
           
                                    
                                                  <%     counter--;
                  }%>         </div> <!-- /.row -->
                              <div class="row"> 
                                  <%
                 for(int i=0;i<3;i++){%><!--5-->
                              <!-- /.row -->
                  
                        <div class="col-md-4">
                            <div class="portfolio-item">
                                <div class="portfolio-thumb">                               
         <!--hdiv1-->                              <img src="images/portfolio/<%=arr[counter-1][3] %>.jpg" alt="Fantasy"/>
                                    <div class="overlay-p">
                                        <a href="images/portfolio/<%=arr[counter-1][3] %>.jpg" data-gal="prettyPhoto">
                                            <i class="fa fa-arrows-alt fa-2x"></i>
                                        </a>
                                    </div>
                                </div> <!-- /.portfolio-thumb -->
                    <h3 class="portfolio-title"><a href="#"><%=arr[counter-1][2] %></a></h3>
                                <div><a id="hotel1" href="hotelDetails.jsp?id=<%=arr[counter-1][1] %>" >more details</a></div>

                                <div class="admin-buttons1">
                                <form  method="get">
                                        <button class="btn btn-success" name="delete_h" formaction="delete_depart" value=<%=String.valueOf(arr[counter-1][1])%>>Delete</button> &nbsp;
                                        <button class="btn btn-success" name="update_h" formaction="update_hotel.jsp" value=<%=String.valueOf(arr[counter-1][1])%>>Update</button>
                                     </form>
                                </div>

                            </div> <!-- /.portfolio-item -->
                        </div> <!-- /.col-md-4 -->
                      
           
                                    
                                                  <%     counter--;
                  }%>         </div> <!-- /.row -->
                <%  }
                         
           
           }
           else{
               if(counter==1){%>
                         <div class="row">
                        <div class="col-md-4">
                            <div class="portfolio-item">
                                <div class="portfolio-thumb">                               
         <!--hdiv1-->                              <img src="images/portfolio/<%=arr[counter-1][3]%>.jpg" alt="Fantasy"/>
                                    <div class="overlay-p">
                                        <a href="images/portfolio/<%=arr[counter-1][3] %>.jpg" data-gal="prettyPhoto">
                                            <i class="fa fa-arrows-alt fa-2x"></i>
                                        </a>
                                    </div>
                                </div> <!-- /.portfolio-thumb -->
                    <h3 class="portfolio-title"><a href="#"><%=arr[counter-1][2]%></a></h3>
                                <div><a id="hotel1" href="hotelDetails.jsp?id=<%=arr[counter-1][1]%>" >more details</a></div>

                                <div class="admin-buttons1">
                                   <form  method="get">
                                        <button class="btn btn-success" name="delete_h" formaction="delete_depart" value=<%=String.valueOf(arr[counter-1][1])%>>Delete</button> &nbsp;
                                        <button class="btn btn-success" name="update_h" formaction="update_hotel.jsp" value=<%=String.valueOf(arr[counter-1][1])%>>Update</button>
                                     </form>
                                </div>

                            </div> <!-- /.portfolio-item -->
                       </div> <!-- /.col-md-4 -->
                      
                    </div> <!-- /.row -->
                   
             <%counter--;  }
               
               else if(counter==2){
                  %> <div class="row">
            <%  for(int i=0;i<2;i++){%>
                         
                        <div class="col-md-4">
                            <div class="portfolio-item">
                                <div class="portfolio-thumb">                               
         <!--hdiv1-->                              <img src="images/portfolio/<%=arr[counter-1][3] %>.jpg" alt="Fantasy"/>
                                    <div class="overlay-p">
                                        <a href="images/portfolio/<%=arr[counter-1][3] %>.jpg" data-gal="prettyPhoto">
                                            <i class="fa fa-arrows-alt fa-2x"></i>
                                        </a>
                                    </div>
                                </div> <!-- /.portfolio-thumb -->
                    <h3 class="portfolio-title"><a href="#"><%=arr[counter-1][2] %></a></h3>
                                <div><a id="hotel1" href="hotelDetails.jsp?id=<%=arr[counter-1][1] %>" >more details</a></div>

                                <div class="admin-buttons1">
                                      < <form  method="get">
                                        <button class="btn btn-success" name="delete_h" formaction="delete_depart" value=<%=String.valueOf(arr[counter-1][1])%>>Delete</button> &nbsp;
                                        <button class="btn btn-success" name="update_h" formaction="update_hotel.jsp" value=<%=String.valueOf(arr[counter-1][1])%>>Update</button>
                                     </form>
                                </div>

                            </div> <!-- /.portfolio-item -->
                        </div> <!-- /.col-md-4 -->
                      
               
             <%  counter--;}
               %>
                  </div></div></div>  <!-- /.row -->
               <%
               }

           }
           
           
       } 
       try{  
                      session = request.getSession();
                    if (session == null) {
                         session=request.getSession();
                       session.setAttribute("var", counter);
                       model.variables_hotel obj_arr=new  model.variables_hotel();
                       obj_arr.setArr(arr);
                     session.setAttribute("obj_arr",obj_arr);
                       
                                          } 
                                       else {
                       
                       session.setAttribute("var", counter);

                    
                                    }
       }
   catch(Exception e){
                     
                      }
               %> 

  
                
                
                <!--%@include file="data_info\hotel_info.jsp" %-->
                                                                                                                                       <!--end hotel -->
                
                
                <!--------------------------end portofolio--------------------------------------------------->
         <!--                                                                                                                          start tavel -->
          
     
  <% 
          Object arr2[][]=null;
        int counter2=0;
        
        try{  
      
                      session = request.getSession();
               
                    if (session == null||request.getParameter("res_h").equals(null)) {
                       model.travel_c m=new model.travel_c();
                       arr2=m.return_travel();
                       counter2=arr2.length;
                       
                                     } 
                                       else {
               
    model.search_Vars hh=(model.search_Vars)session.getAttribute("search_result");
    if(hh.getArr_t().equals(null)){
        if(session.getAttribute("var").equals(null)){}
else{
       model.variables_travel obj=(model.variables_travel)session.getAttribute("obj_arr");
       arr2=obj.getArr();
               counter2=Integer.parseInt(String.valueOf(session.getAttribute("var")));
        
        
   }
}
    else {
       arr2=hh.getArr_t();
       counter2=hh.getArr_t().length;
        }                 

                    
                                                     }}
   catch(Exception e){
                   model.travel_c m=new model.travel_c();
                   arr2=m.return_travel();
                       counter2=arr2.length;
 
                      }%>       
                      <style>
                          #move_button{
                              
                              margin-left:   250px;
                          }
                          
                          
                      </style>
     
                   <!--   <div id="portfolio" class="section-content">
				<div class="row">
					<div class="col-md-12">
						<div class="section-title">
							<h2>Hotels</h2>
						</div> 
					</div> 
				</div>  
                   
                   
                    <span id="travels-link">#travels</span>
            <section id="travels" class="travels col-md-12"> 
            <div class="travels-content">
                <div class="row">
					<div class="col-md-12">
                        <div class="travelsHeader">
                            <h2 >Travels</h2>
                        </div>
                                -->
                              
                                
        <span id="travels-link">#travels</span>
            <section id="travels" class="travels col-md-12"> 
            <div   class="travels-content">
                <div class="row">
					<div class="col-md-12">
                        <div class="travelsHeader">
                            <h2 >Travels</h2>
                        </div>
                    
                     
                                
                 <!--
                 ar[x][0]=(x+1);
              ar[x][1]=res.getInt("travel_id");
              ar[x][2]=res.getString("travel_title");
              ar[x][3]=res.getString("travel_details");
              ar[x][4]=res.getString("travel_price");
              ar[x][5]=res.getString("travel_image");
                 -->        
             
                 
             
                 
                   <%
      
  if(arr2.length>=1){
      if(counter2>=4){
          for(int i=0;i<4;i++){%>
            
           
                <%
              if (i==0){%>
                     <div class="travel wow fadeInRight">
             <% }
              else if (i==3){%>
                 <div class="travel wow fadeInRight" data-wow-offset="100" data-wow-delay=".1s">
              <%}
                
                
                else{%>
                 <div class="travel wow fadeInRight" data-wow-offset="100" data-wow-delay=".5s">
              <%}
                %>
        
                            <div class="travel-left">
                            <img width="100%" height="180px" src="images/travels/HongKongLantauIsland.jpg" alt="travel">
                            </div>
                            
                            <div class="travel-right">
                                        <h4><%=arr2[counter2-1][2] %></h4>
                                        <p>
                                         <%=arr2[counter2-1][3]%>
                                        </p>
                                        <span><%=arr2[counter2-1][4] %></span>
                                       
                                                 <form action="apply_travel.jsp" >
                                                    
                                             <input  id="move_button" class="applyOfferZ1" type="submit" name=<%=String.valueOf(arr2[counter2-1][1])%> value="Applytravel">
                                                </form>
                                      
                                        <div class="admin-buttons1"  >
                                            <form  method="get">
                                                
                                                <button class="btn btn-success" formaction="delete_depart" name="delete_t" value=<%=String.valueOf(arr2[counter2-1][1])%>>Delete</button> &nbsp;
                                                <button class="btn btn-warning" formaction="updateTravel.jsp" name="update_t" value=<%=String.valueOf(arr2[counter2-1][1])%>>update</button>

                                     </form>
                                        </div>
                                    </div>
                        </div>
          
            
            
                                    
              
        <% counter2--;  }
          
      }
      else {
          if(counter2==1){
              %>
              
           
                     <div class="travel wow fadeInRight">
           
                            <div class="travel-left">
                            <img width="100%" height="180px" src="images/travels/HongKongLantauIsland.jpg" alt="travel">
                            </div>
                            
                            <div class="travel-right">
                                        <h4><%=arr2[counter2-1][2] %></h4>
                                        <p>
                                         <%=arr2[counter2-1][3]%>
                                        </p>
                                        <span><%=arr2[counter2-1][4] %></span>
                                       
                                                 <form action="apply_travel.jsp" >
                                                    
                                             <input  id="move_button" class="applyOfferZ1" type="submit" name=<%=String.valueOf(arr2[counter2-1][1])%> value="Applytravel">
                                                </form>
                                      
                                        <div class="admin-buttons1">
                                           <form  method="get">
                                                
                                                <button class="btn btn-success" formaction="delete_depart" name="delete_t" value=<%=String.valueOf(arr2[counter2-1][1])%>>Delete</button> &nbsp;
                                                <button class="btn btn-warning" formaction="updateTravel.jsp" name="update_t" value=<%=String.valueOf(arr2[counter2-1][1])%>>update</button>

                                     </form>
                                        </div>
                                    </div>
                        </div>
          
            
            
                                    
              
              
        <% counter2--;  
              
          }
          else if(counter2==2){
              for(int i=0;i<2;i++){%>
              
              <%
              if (i==0){%>
                     <div class="travel wow fadeInRight">
             <% }
              else if (i==1){%>
                 <div class="travel wow fadeInRight" data-wow-offset="100" data-wow-delay=".1s">
              <%}
                
                
                else{%>
                 <div class="travel wow fadeInRight" data-wow-offset="100" data-wow-delay=".5s">
              <%}
                %>
        
                            <div class="travel-left">
                            <img width="100%" height="180px" src="images/travels/HongKongLantauIsland.jpg" alt="travel">
                            </div>
                            
                            <div class="travel-right">
                                        <h4><%=arr2[counter2-1][2] %></h4>
                                        <p>
                                         <%=arr2[counter2-1][3]%>
                                        </p>
                                        <span><%=arr2[counter2-1][4] %></span>
                                       
                                                 <form action="apply_travel.jsp" >
                                                    
                                             <input  id="move_button" class="applyOfferZ1" type="submit" name=<%=String.valueOf(arr2[counter2-1][1])%> value="Applytravel">
                                                </form>
                                      
                                        <div class="admin-buttons1">
                                <form  method="get">
                                                
                                                <button class="btn btn-success" formaction="delete_depart" name="delete_t" value=<%=String.valueOf(arr2[counter2-1][1])%>>Delete</button> &nbsp;
                                                <button class="btn btn-warning" formaction="updateTravel.jsp" name="update_t" value=<%=String.valueOf(arr2[counter2-1][1])%>>update</button>

                                     </form>
                                        </div>
                                    </div>
                        </div>
          
            
            
                                    
              
              
        <% counter2--;  }
          }
          else if(counter2==3){
              for(int i=0;i<3;i++){%>
              
             <%
              if (i==0){%>
                     <div class="travel wow fadeInRight">
             <% }
              else if (i==2){%>
                 <div class="travel wow fadeInRight" data-wow-offset="100" data-wow-delay=".1s">
              <%}
                
                
                else{%>
                 <div class="travel wow fadeInRight" data-wow-offset="100" data-wow-delay=".5s">
              <%}
                %>
        
                            <div class="travel-left">
                            <img width="100%" height="180px" src="images/travels/HongKongLantauIsland.jpg" alt="travel">
                            </div>
                            
                            <div class="travel-right">
                                        <h4><%=arr2[counter2-1][2] %></h4>
                                        <p>
                                         <%=arr2[counter2-1][3]%>
                                        </p>
                                        <span><%=arr2[counter2-1][4] %></span>
                                       
                                                 <form action="apply_travel.jsp" >
                                                    
                                             <input  id="move_button" class="applyOfferZ1" type="submit" name=<%=String.valueOf(arr2[counter2-1][1])%> value="Applytravel">
                                                </form>
                                      
                                        <div class="admin-buttons1">
                            <form  method="get">
                                                
                                                <button class="btn btn-success" formaction="delete_depart" name="delete_t" value=<%=String.valueOf(arr2[counter2-1][1])%>>Delete</button> &nbsp;
                                                <button class="btn btn-warning" formaction="updateTravel.jsp" name="update_t" value=<%=String.valueOf(arr2[counter2-1][1])%>>update</button>

                                     </form>
                                        </div>
                                    </div>
                        </div>
          
            
            
                                    
              
        <% counter2--;  }
          }
          
      }
      
      
      
      
  }
  else {
      %>
      
      <div class="row"><h1>&nbsp;&nbsp;sorry !! there is no result<form class="applyOfferZ1"><button formaction="home.jsp"></button></form></h1> </div>
      <br>
  <%}
  
  
                   %>  				</div> 
				</div>
              
               
                                </section>
        
                                                                                                                    <!-------------------start  offers----------------------------------------------------->
          
                    
  <% 
          Object arr3[][]=null;
        int counter3=0;
        
        try{  
      
                      session = request.getSession();
                    if (session == null) {
                       model.offer_c m=new model.offer_c();
                       arr3=m.return_offer();
                       counter3=arr3.length;
                       
                                     } 
                                       else {
               
                   
if(session.getAttribute("var").equals(null)){}
else{
       model.variables_offer obj=(model.variables_offer)session.getAttribute("obj_arr");
       arr3=obj.getArr();
               counter3=Integer.parseInt(String.valueOf(session.getAttribute("var")));
        
        
   }
                    
                                                     }}
   catch(Exception e){
                   model.offer_c m=new model.offer_c();
                   arr3=m.return_offer();
                       counter3=arr3.length;
 
                      }%>           
   <section id="offers" class="offersContent col-md-12">
             <div class="row">
					<div class="col-md-12">
                        <div class="offersHeader">
                            <h2>Offers</h2>
                        </div>
                        <div class="offers-container">
      
        <%
      
  if(arr3.length >=1){
      if(counter3>=6){  %>
        
          <% for (int i=0;i<6;i++){%>
            <div class="offers-container"><%
           if(i==0){%>
               
                                           <div class="offer wow fadeInRight" data-wow-offset="100">

      <%     }
           else if(i==5){%>
                              <div class="offer wow fadeInRight" data-wow-offset="100" data-wow-delay=".1s">

           <%}else {%>
                              <div class="offer wow fadeInRight" data-wow-offset="100" data-wow-delay=".5s">

         <%  }
           %>
          
          
                                <div class="offerIcon" style="width:30px;">
                                    <img src="images/icons/offers.png" width="30px" alt="icon">
                                </div>
                                    <div><a class="offerAncore" href="#"><%=arr3[counter3-1][2] %></a></div>
                                <div>2880 Las Vegas Blvd S Las Vegas, NV, 89109 United States, 0044 203 564 5228</div>
                                   <div class="offerLeft"><img class="offerImage" src="images/offers/<%=arr3[counter3-1][6]%>.jpg"></div>
                                <div class="offerRight">
                                    <div class="offerStars">
                                        &#9733;&nbsp;&#9733;&nbsp;&#9733;&nbsp;&#9733;&nbsp;
                                    </div>
                                </div>
                                <div>
                                    <div>
                                        <img class="offerIcon2" src="images/offers/ic1.png" alt="icon">
                                    </div>
                                    <div class="offerP">
                                     <p>
                                              <%=arr3[counter3-1][3] %>
                                            </p>
                                   <p class="lead" style="display:inline">from <del> <%=arr3[counter3-1][4] %>&#36;</del> to 
                                                <span style="color:red"><%=arr3[counter3-1][5]%>&#36;</span>
                                            </p>
                                         <form action="apply_offer.jsp" >
                                                    
                                             <input class="applyOfferZ1" type="submit" name=<%=String.valueOf(arr3[counter3-1][1])%> value="Apply offer">
                                         
                                         </form>                                    
                                        </span>
                                     <div class="admin-buttons1">
                                             <div class="adminOffers">
                                                    <form action="delete_depart" method="get">
                                        <button class="btn btn-success" name="delete_o" value=<%=String.valueOf(arr3[counter3-1][1])%>>Delete</button> &nbsp;
                                     </form>
              
                                                <button class="btn btn-info">update</button>
                                             </div>
                                    </div>
                                    </div>
                                </div>
                            </div>
          </div>
          
                <%  counter3--;
              } 
      
      }
      else{
          if(counter3==1){%>
          
          
          <div class="offers-container">
                            <div class="offer wow fadeInRight" data-wow-offset="100">
                                <div class="offerIcon" style="width:30px;">
                                    <img src="images/icons/offers.png" width="30px" alt="icon">
                                </div>
                                    <div><a class="offerAncore" href="#"><%=arr3[counter3-1][2] %></a></div>
                                <div>2880 Las Vegas Blvd S Las Vegas, NV, 89109 United States, 0044 203 564 5228</div>
                                   <div class="offerLeft"><img class="offerImage" src="images/offers/<%=arr3[counter3-1][6]%>.jpg"></div>
                                <div class="offerRight">
                                    <div class="offerStars">
                                        &#9733;&nbsp;&#9733;&nbsp;&#9733;&nbsp;&#9733;&nbsp;
                                    </div>
                                </div>
                                <div>
                                    <div>
                                        <img class="offerIcon2" src="images/offers/ic1.png" alt="icon">
                                    </div>
                                    <div class="offerP">
                                     <p>
                                              <%=arr3[counter3-1][3] %>
                                            </p>
                                   <p class="lead" style="display:inline">from <del> <%=arr3[counter3-1][4] %>&#36;</del> to 
                                                <span style="color:red"><%=arr3[counter3-1][5]%>&#36;</span>
                                            </p>
                                         <form action="apply_offer.jsp" >
                                                    
                                             <input class="applyOfferZ1" type="submit" name=<%=String.valueOf(arr3[counter3-1][1])%> value="Apply offer">
                                         
                                         </form>                                    
                                        </span>
                                     <div class="admin-buttons1">
                                             <div class="adminOffers">
                                                      <form action="delete_depart" method="get">
                                        <button class="btn btn-success" name="delete_o" value=<%=String.valueOf(arr3[counter3-1][1])%>>Delete</button> &nbsp;
                                     </form>
              
                                                <button class="btn btn-info">update</button>
                                             </div>
                                    </div>
                                    </div>
                                </div>
                            </div>
          </div>
          

                                            
                      <%   counter3--;}
          else if(counter3==2){%>
                    
             <% 
for (int i=0;i<2;i++){%>
                 
                         <div class="offers-container">

         <%  if(i==0){%>
               
                                           <div class="offer wow fadeInRight" data-wow-offset="100">

      <%     }
           else if(i==1){%>
                              <div class="offer wow fadeInRight" data-wow-offset="100" data-wow-delay=".1s">

          
          <%}%>
          
          
                                <div class="offerIcon" style="width:30px;">
                                    <img src="images/icons/offers.png" width="30px" alt="icon">
                                </div>
                                    <div><a class="offerAncore" href="#"><%=arr3[counter3-1][2] %></a></div>
                                <div>2880 Las Vegas Blvd S Las Vegas, NV, 89109 United States, 0044 203 564 5228</div>
                                   <div class="offerLeft"><img class="offerImage" src="images/offers/<%=arr3[counter3-1][6]%>.jpg"></div>
                                <div class="offerRight">
                                    <div class="offerStars">
                                        &#9733;&nbsp;&#9733;&nbsp;&#9733;&nbsp;&#9733;&nbsp;
                                    </div>
                                </div>
                                <div>
                                    <div>
                                        <img class="offerIcon2" src="images/offers/ic1.png" alt="icon">
                                    </div>
                                    <div class="offerP">
                                     <p>
                                              <%=arr3[counter3-1][3] %>
                                            </p>
                                   <p class="lead" style="display:inline">from <del> <%=arr3[counter3-1][4] %>&#36;</del> to 
                                                <span style="color:red"><%=arr3[counter3-1][5]%>&#36;</span>
                                            </p>
                                         <form action="apply_offer.jsp" >
                                                    
                                             <input class="applyOfferZ1" type="submit" name=<%=String.valueOf(arr3[counter3-1][1])%> value="Apply offer">
                                         
                                         </form>                                    
                                        </span>
                                     <div class="admin-buttons1">
                                             <div class="adminOffers">
                                                <form action="delete_depart" method="get">
                                        <button class="btn btn-success" name="delete_o" value=<%=String.valueOf(arr3[counter3-1][1])%>>Delete</button> &nbsp;
                                     </form>
              
                                                <button class="btn btn-info">update</button>
                                             </div>
                                    </div>
                                    </div>
                                </div>
                            </div>
          </div>
                <%  counter3--;
              }
              
          }
          else if(counter3==3){%>
              
              <% for (int i=0;i<3;i++){%>
            <div class="offers-container"><%
                
                    
                     if(i==0){%>
               
                                           <div class="offer wow fadeInRight" data-wow-offset="100">

                              <%     }
           else if(i==2){%>
                              <div class="offer wow fadeInRight" data-wow-offset="100" data-wow-delay=".1s">

           <%}else {%>
                              <div class="offer wow fadeInRight" data-wow-offset="100" data-wow-delay=".5s">

         <%  }
           %>
          
          
                                <div class="offerIcon" style="width:30px;">
                                    <img src="images/icons/offers.png" width="30px" alt="icon">
                                </div>
                                    <div><a class="offerAncore" href="#"><%=arr3[counter3-1][2] %></a></div>
                                <div>2880 Las Vegas Blvd S Las Vegas, NV, 89109 United States, 0044 203 564 5228</div>
                                   <div class="offerLeft"><img class="offerImage" src="images/offers/<%=arr3[counter3-1][6]%>.jpg"></div>
                                <div class="offerRight">
                                    <div class="offerStars">
                                        &#9733;&nbsp;&#9733;&nbsp;&#9733;&nbsp;&#9733;&nbsp;
                                    </div>
                                </div>
                                <div>
                                    <div>
                                        <img class="offerIcon2" src="images/offers/ic1.png" alt="icon">
                                    </div>
                                    <div class="offerP">
                                     <p>
                                              <%=arr3[counter3-1][3] %>
                                            </p>
                                   <p class="lead" style="display:inline">from <del> <%=arr3[counter3-1][4] %>&#36;</del> to 
                                                <span style="color:red"><%=arr3[counter3-1][5]%>&#36;</span>
                                            </p>
                                         <form action="apply_offer.jsp" >
                                                    
                                             <input class="applyOfferZ1" type="submit" name=<%=String.valueOf(arr3[counter3-1][1])%> value="Apply offer">
                                         
                                         </form>                                    
                                        </span>
                                     <div class="admin-buttons1">
                                             <div class="adminOffers">
                                                    <form action="delete_depart" method="get">
                                        <button class="btn btn-success" name="delete_o" value=<%=String.valueOf(arr3[counter3-1][1])%>>Delete</button> &nbsp;
                                     </form>
              
                                                <button class="btn btn-info">update</button>
                                             </div>
                                    </div>
                                    </div>
                                </div>
                            </div>
          </div>
                    
                    
                <%  counter3--;
              }
          }
          else if(counter3==4){
               for (int i=0;i<4;i++){%>
              %>
            <div class="offers-container"><%
                
                    
                     if(i==0){%>
               
                                           <div class="offer wow fadeInRight" data-wow-offset="100">

                              <%     }
           else if(i==3){%>
                              <div class="offer wow fadeInRight" data-wow-offset="100" data-wow-delay=".1s">

           <%}else {%>
                              <div class="offer wow fadeInRight" data-wow-offset="100" data-wow-delay=".5s">

         <%  }
           %>
          
          
                                <div class="offerIcon" style="width:30px;">
                                    <img src="images/icons/offers.png" width="30px" alt="icon">
                                </div>
                                    <div><a class="offerAncore" href="#"><%=arr3[counter3-1][2] %></a></div>
                                <div>2880 Las Vegas Blvd S Las Vegas, NV, 89109 United States, 0044 203 564 5228</div>
                                   <div class="offerLeft"><img class="offerImage" src="images/offers/<%=arr3[counter3-1][6]%>.jpg"></div>
                                <div class="offerRight">
                                    <div class="offerStars">
                                        &#9733;&nbsp;&#9733;&nbsp;&#9733;&nbsp;&#9733;&nbsp;
                                    </div>
                                </div>
                                <div>
                                    <div>
                                        <img class="offerIcon2" src="images/offers/ic1.png" alt="icon">
                                    </div>
                                    <div class="offerP">
                                     <p>
                                              <%=arr3[counter3-1][3] %>
                                            </p>
                                   <p class="lead" style="display:inline">from <del> <%=arr3[counter3-1][4] %>&#36;</del> to 
                                                <span style="color:red"><%=arr3[counter3-1][5]%>&#36;</span>
                                            </p>
                                         <form action="apply_offer.jsp" >
                                                    
                                             <input class="applyOfferZ1" type="submit" name=<%=String.valueOf(arr3[counter3-1][1])%> value="Apply offer">
                                         
                                         </form>                                    
                                        </span>
                                     <div class="admin-buttons1">
                                             <div class="adminOffers">
                                         <form action="delete_depart" method="get">
                                        <button class="btn btn-success" name="delete_o" value=<%=String.valueOf(arr3[counter3-1][1])%>>Delete</button> &nbsp;
                                     </form>
              
                                                <button class="btn btn-info">update</button>
                                             </div>
                                    </div>
                                    </div>
                                </div>
                            </div>
          </div>
					</div> 
				</div>
                                     </section>
                    
                <%  counter3--;
              }
              
          }
          else if(counter3==5){
               for (int i=0;i<5;i++){%>
                 
            <div class="offers-container"><%
                
                    
                     if(i==0){%>
               
                                           <div class="offer wow fadeInRight" data-wow-offset="100">

                              <%     }
           else if(i==4){%>
                              <div class="offer wow fadeInRight" data-wow-offset="100" data-wow-delay=".1s">

           <%}else {%>
                              <div class="offer wow fadeInRight" data-wow-offset="100" data-wow-delay=".5s">

         <%  }
           %>
          
          
                                <div class="offerIcon" style="width:30px;">
                                    <img src="images/icons/offers.png" width="30px" alt="icon">
                                </div>
                                    <div><a class="offerAncore" href="#"><%=arr3[counter3-1][2] %></a></div>
                                <div>2880 Las Vegas Blvd S Las Vegas, NV, 89109 United States, 0044 203 564 5228</div>
                                   <div class="offerLeft"><img class="offerImage" src="images/offers/<%=arr3[counter3-1][6]%>.jpg"></div>
                                <div class="offerRight">
                                    <div class="offerStars">
                                        &#9733;&nbsp;&#9733;&nbsp;&#9733;&nbsp;&#9733;&nbsp;
                                    </div>
                                </div>
                                <div>
                                    <div>
                                        <img class="offerIcon2" src="images/offers/ic1.png" alt="icon">
                                    </div>
                                    <div class="offerP">
                                     <p>
                                              <%=arr3[counter3-1][3] %>
                                            </p>
                                   <p class="lead" style="display:inline">from <del> <%=arr3[counter3-1][4] %>&#36;</del> to 
                                                <span style="color:red"><%=arr3[counter3-1][5]%>&#36;</span>
                                            </p>
                                         <form action="apply_offer.jsp" >
                                                    
                                             <input class="applyOfferZ1" type="submit" name=<%=String.valueOf(arr3[counter3-1][1])%> value="Apply offer">
                                         
                                         </form>                                    
                                        </span>
                                     <div class="admin-buttons1">
                                             <div class="adminOffers">
                                                     <form action="delete_depart" method="get">
                                        <button class="btn btn-success" name="delete_o" value=<%=String.valueOf(arr3[counter3-1][1])%>>Delete</button> &nbsp;
                                     </form>
              
                                                <button class="btn btn-info">update</button>
                                             </div>
                                    </div>
                                    </div>
                                </div>
                            </div>
          </div>
                    
                <%  counter3--;
              }
              
          }
          
      
      }}
else {%>
    <div class="row"><h1>&nbsp;&nbsp;sorry !! there are no offers yet</h1> </div>  
<%    }  
                      
                      
                      %>           
                      
                      
           <!--
             ar[x][0]=(x+1);
              ar[x][1]=res.getInt("offer_id");
              ar[x][2]=res.getString("offer_title");
              ar[x][3]=res.getString("offer_details");
              ar[x][4]=res.getString("price_before");
              ar[x][5]=res.getString("price_after");
              ar[x][6]=res.getString("offer_image");
           -->
         
        
 
                         
                        </div> 
                    </div>
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       

                   
                    <!--End pop up reservation div-->
                </section>
                      
                          <% try{  
                      session = request.getSession();
                    if (session == null) {
                         session=request.getSession();
                       session.setAttribute("var", counter3);
                       model.variables_offer obj_arr=new  model.variables_offer();
                       obj_arr.setArr(arr3);
                       session.setAttribute("obj_arr",obj_arr);
                       
                                          } 
                                       else {
                       
                       session.setAttribute("var", counter3);

                    
                                    }
       }
   catch(Exception e){
                     
                      }
               %>
                
                
                
               <!--include file="data_info\offer_info.jsp" -->     
                                                                                                                     <!-------------------end  offers-------------------------------------------------------------->
            
    
           <section  class="contact-footer">
                         <span id="contactLink">
               #contact
               </span>
			<div id="contact" class="section-content">
				<div class="row">
					<div class="col-md-12">
						<div class="section-title">
							<h2>Contact Us</h2>
						</div> <!-- /.section-title -->
					</div> <!-- /.col-md-12 -->
				</div> <!-- /.row -->
				<div class="row">
					<div class="col-md-12">
						<div class="map-holder">
							<div class="google-map-canvas" id="map-canvas">
                    		</div>
						</div> <!-- /.map-holder -->
					</div> <!-- /.col-md-12 -->
				</div> <!-- /.row -->
                
				<div class="row contact-form">
                                    <form action="c_sendMessage" method="post">
					<div class="col-md-4 wow bounceInUp" data-wow-delay="">
						<input name="userName" type="text" id="name-id" class="form-control input-lg" maxlength="40" placeholder="Your name"                                  required="required">
					</div> <!-- /.col-md-4 -->
					<div class="col-md-4 wow bounceInUp" data-wow-delay=".5s">
						<input name="email" type="text" class="form-control input-lg" id="email-id" maxlength="40" placeholder="Your email"                                   required="required">
					</div> <!-- /.col-md-4 -->
					<div class="col-md-4 wow bounceInUp" data-wow-delay="1s">
						<input name="subject" type="text" class="form-control input-lg" id="subject-id" maxlength="60" placeholder="Subject">
					</div> <!-- /.col-md-4 -->
					<div class="col-md-12 wow bounceInUp" data-wow-delay="1.5s">
						<textarea name="message" id="message-id" class="form-control input-lg" rows="6" placeholder="Your message here" required="required"></textarea>
					</div> <!-- /.col-md-12 -->
					<div class="col-md-12 wow bounceInUp" data-wow-delay="1.8s">
						<div class="submit-btn">
                            <input type="submit" class="btn-primary" value="S E N D - - M E S S A G E ">
						</div> <!-- /.submit-btn -->
					</div> <!-- /.col-md-12 -->
                        </form>
				</div>
			</div> <!-- /#contact --> 

		</div> <!-- /.container-fluid -->

		<div class="site-footer">
			<div class="first-footer">
				<div class="container-fluid">
					<div class="row">
						<div class="col-md-12">
							<div class="social-footer">
								<ul>
									<li><a href="#" class="fa fa-facebook"></a></li>
									<li><a href="#" class="fa fa-twitter"></a></li>
									<li><a href="#" class="fa fa-dribbble"></a></li>
									<li><a href="#" class="fa fa-linkedin"></a></li>
									<li><a href="#" class="fa fa-rss"></a></li>
								</ul>
							</div> <!-- /.social-footer -->
						</div> <!-- /.col-md-12 -->
					</div> <!-- /.row -->
				</div> <!-- /.container-fluid -->
			</div> <!-- /.first-footer -->
			<div class="bottom-footer">
				<div class="container-fluid">
					<div class="row">
						<div class="col-md-6">
							<p class="copyright">Copyright © 2015 <a href="#">&nbsp;&nbsp;Khalid mahmoud</a>
                            </p>
                          
						</div> <!-- /.col-md-6 -->
					</div> 
				</div> 
			</div> 
    </div> 
            </section> 
            <div id="scroll-to-top">
                <i class="fa fa-chevron-up fa-2x"></i>
            </div>
</div> <!-- /#main-content -->
        

	<!-- JavaScripts -->
    <script src="js/jquery-1.11.2.js"></script>
    <script src="js/jquery-1.11.2.min.js"></script>
    <script src="plugins.js"></script>
    <script src="JQuery.js"></script>
	<script src="js/jquery-1.10.2.min.js"></script>
	<script src="js/jquery.singlePageNav.js"></script>
	<script src="js/jquery.flexslider.js"></script>
	<script src="js/jquery.prettyPhoto.js"></script>
	<script src="js/custom.js"></script>
    <script src="js/jquery.nicescroll.min.js"></script>
    <script src="js/wow.min.js"></script>
    <script>new WOW().init();</script>

	<script>
		$(document).ready(function(){
			$("a[data-gal^='prettyPhoto']").prettyPhoto({hook: 'data-gal'});
        });
        function initialize() {
          var mapOptions = {
            zoom: 13,
            center: new google.maps.LatLng(40.7809919,-73.9665273)
          };
          var map = new google.maps.Map(document.getElementById('map-canvas'),
              mapOptions);
        }
        function loadScript() {
          var script = document.createElement('script');
          script.type = 'text/javascript';
          script.src = 'https://maps.googleapis.com/maps/api/js?v=3.exp&sensor=false&' +
              'callback=initialize';
          document.body.appendChild(script);
        }
        window.onload = loadScript;
    </script>

</body>
</html>