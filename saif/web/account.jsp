<%-- 
    Document   : account
    Created on : Apr 17, 2015, 9:59:22 AM
    Author     : r4ad
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <link rel="stylesheet" href="css/login.css">
        <link rel="shortcut icon" href="images/tabIcon.png">
      
    </head>
    
     <div class="masterLeft">
        <div class="logo">
            <a href="home.jsp"><h1>S a i f</h1></a>
            <span>Tourism company</span>
		</div> 
    </div>
    
    <body>
   <%  
  session=request.getSession();
 
   if(null == session.getAttribute("name")){

     }
   else{
     response.sendRedirect("home.jsp");
   
   }
   String type=request.getParameter("a");
       if(type.equals("login")){%>
     <div class="form">
      <ul class="tab-group">
        <li class="tab" ><a href="#signup">Sign Up</a></li>
        <li class="tab active"><a href="#login">Log In</a></li>
      </ul>
      
      <div class="tab-content">
          <!-----------------------register form--------------------->
        <div id="login">   
        <h1>Welcome Back!</h1>
          <form action="login_servlet?a=login" method="post">
            <div class="field-wrap">
            <label>
              Email Address<span class="req">*</span>
            </label>
            <input type="email"required autocomplete="off" name="email"/>
          </div>
          <div class="field-wrap">
            <label>
              Password<span class="req">*</span>
            </label>
            <input type="password"required autocomplete="off" name="password"/>
          </div>
          <p class="forgot"><a href="#">Forgot Password?</a></p>
          <button class="button button-block"/>Log In</button>
          </form>
        </div>
     
        <!---------------------Login Form------------------------->
        
              <div id="signup"> 
              <h1>Sign Up for Free</h1>
              <form action="signup_servlet?a=signup" method="post">
              <div class="top-row">
                    <div class="field-wrap">
                          <label>
                            First Name<span class="req">*</span>
                          </label>
                          <input type="text" required autocomplete="off" name="f_name" />
                    </div>
                    <div class="field-wrap">
                          <label>
                            Last Name<span class="req">*</span>
                          </label>
                          <input type="text"required autocomplete="off"  name="l_name"/>
                    </div>
              </div>
              <div class="field-wrap">
                    <label>
                      Email Address<span class="req">*</span>
                    </label>
                    <input type="email"required autocomplete="off"  name="email"/>
              </div>
              <div class="field-wrap">
                    <label>
                      Set A Password<span class="req">*</span>
                    </label>
                    <input type="password"required autocomplete="off" name="password"/>
              </div>
                     <button type="submit" class="button button-block"/>R e g i s t e r</button>
              </form>
          
      </div><!-- tab-content -->
      </div> <!-- /form -->
      <% }
       else if(type.equals("register")) {%>
  <div class="form">
      <ul class="tab-group">
        <li class="tab active"><a href="#signup">Sign Up</a></li>
        <li class="tab"><a href="#login">Log In</a></li>
      </ul>
      
      <div class="tab-content">
          <!-----------------------register form--------------------->
        <div id="signup">   
          <h1>Sign Up for Free</h1>
              <form action="signup_servlet?a=signup" method="post">
              <div class="top-row">
                    <div class="field-wrap">
                          <label>
                            First Name<span class="req">*</span>
                          </label>
                          <input type="text" required autocomplete="off" name="f_name" />
                    </div>
                    <div class="field-wrap">
                          <label>
                            Last Name<span class="req">*</span>
                          </label>
                          <input type="text"required autocomplete="off"  name="l_name"/>
                    </div>
              </div>
              <div class="field-wrap">
                    <label>
                      Email Address<span class="req">*</span>
                    </label>
                    <input type="email"required autocomplete="off"  name="email"/>
              </div>
              <div class="field-wrap">
                    <label>
                      Set A Password<span class="req">*</span>
                    </label>
                    <input type="password"required autocomplete="off" name="password"/>
              </div>
                  <input type="submit"  class="button button-block" value="R e g i s t e r"/>
         
              </form>
        </div>
        <!---------------------Login Form------------------------->
        <div id="login">   
          <h1>Welcome Back!</h1>
          <form action="login_servlet?a=login" method="post">
            <div class="field-wrap">
            <label>
              Email Address<span class="req">*</span>
            </label>
            <input type="email"required autocomplete="off" name="email"/>
          </div>
          <div class="field-wrap">
            <label>
              Password<span class="req">*</span>
            </label>
            <input type="password"required autocomplete="off" name="password"/>
          </div>
          <p class="forgot"><a href="#">Forgot Password?</a></p>
          <button class="button button-block"/>Log In</button>
          </form>
        </div>
      </div><!-- tab-content -->
      </div> <!-- /form -->
      <% }
       else if(type.equals("login_apply_offer")){%>
            <div class="form">
      <ul class="tab-group">
        <li class="tab" ><a href="#signup">Sign Up</a></li>
        <li class="tab active"><a href="#login">Log In</a></li>
      </ul>
      
      <div class="tab-content">
          <!-----------------------register form--------------------->
        <div id="login">   
        <h1>Welcome Back!</h1>
          <form action="login_servlet?a=login_apply_offer" method="post">
            <div class="field-wrap">
            <label>
              Email Address<span class="req">*</span>
            </label>
            <input type="email"required autocomplete="off" name="email"/>
          </div>
          <div class="field-wrap">
            <label>
              Password<span class="req">*</span>
            </label>
            <input type="password"required autocomplete="off" name="password"/>
          </div>
          <p class="forgot"><a href="#">Forgot Password?</a></p>
          <button class="button button-block"/>Log In</button>
          </form>
        </div>
     
        <!---------------------Login Form------------------------->
        
              <div id="signup"> 
              <h1>Sign Up for Free</h1>
              <form action="signup_servlet?a=signup_apply_offer" method="post">
              <div class="top-row">
                    <div class="field-wrap">
                          <label>
                            First Name<span class="req">*</span>
                          </label>
                          <input type="text" required autocomplete="off" name="f_name" />
                    </div>
                    <div class="field-wrap">
                          <label>
                            Last Name<span class="req">*</span>
                          </label>
                          <input type="text"required autocomplete="off"  name="l_name"/>
                    </div>
              </div>
              <div class="field-wrap">
                    <label>
                      Email Address<span class="req">*</span>
                    </label>
                    <input type="email"required autocomplete="off"  name="email"/>
              </div>
              <div class="field-wrap">
                    <label>
                      Set A Password<span class="req">*</span>
                    </label>
                    <input type="password"required autocomplete="off" name="password"/>
              </div>
                     <button type="submit" class="button button-block"/>R e g i s t e r</button>
              </form>
          
      </div><!-- tab-content -->
      </div> <!-- /form -->
     <%  }
        else if(type.equals("signup_apply_offer")){%>
          <div class="form">
      <ul class="tab-group">
        <li class="tab active"><a href="#signup">Sign Up</a></li>
        <li class="tab"><a href="#login">Log In</a></li>
      </ul>
      
      <div class="tab-content">
          <!-----------------------register form--------------------->
        <div id="signup">   
          <h1>Sign Up for Free</h1>
              <form action="signup_servlet?a=signup_apply_offer" method="post">
              <div class="top-row">
                    <div class="field-wrap">
                          <label>
                            First Name<span class="req">*</span>
                          </label>
                          <input type="text" required autocomplete="off" name="f_name" />
                    </div>
                    <div class="field-wrap">
                          <label>
                            Last Name<span class="req">*</span>
                          </label>
                          <input type="text"required autocomplete="off"  name="l_name"/>
                    </div>
              </div>
              <div class="field-wrap">
                    <label>
                      Email Address<span class="req">*</span>
                    </label>
                    <input type="email"required autocomplete="off"  name="email"/>
              </div>
              <div class="field-wrap">
                    <label>
                      Set A Password<span class="req">*</span>
                    </label>
                    <input type="password"required autocomplete="off" name="password"/>
              </div>
                  <input type="submit"  class="button button-block" value="R e g i s t e r"/>
         
              </form>
        </div>
        <!---------------------Login Form------------------------->
        <div id="login">   
          <h1>Welcome Back!</h1>
          <form action="login_servlet?a=login_apply_offer" method="post">
            <div class="field-wrap">
            <label>
              Email Address<span class="req">*</span>
            </label>
            <input type="email"required autocomplete="off" name="email"/>
          </div>
          <div class="field-wrap">
            <label>
              Password<span class="req">*</span>
            </label>
            <input type="password"required autocomplete="off" name="password"/>
          </div>
          <p class="forgot"><a href="#">Forgot Password?</a></p>
          <button class="button button-block"/>Log In</button>
          </form>
        </div>
      </div><!-- tab-content -->
      </div> <!-- /form -->
        
      
     <%  }
         else if(type.equals("login_apply_travel")){%>
            <div class="form">
      <ul class="tab-group">
        <li class="tab" ><a href="#signup">Sign Up</a></li>
        <li class="tab active"><a href="#login">Log In</a></li>
      </ul>
      
      <div class="tab-content">
          <!-----------------------register form--------------------->
        <div id="login">   
        <h1>Welcome Back!</h1>
          <form action="login_servlet?a=login_apply_travel" method="post">
            <div class="field-wrap">
            <label>
              Email Address<span class="req">*</span>
            </label>
            <input type="email"required autocomplete="off" name="email"/>
          </div>
          <div class="field-wrap">
            <label>
              Password<span class="req">*</span>
            </label>
            <input type="password"required autocomplete="off" name="password"/>
          </div>
          <p class="forgot"><a href="#">Forgot Password?</a></p>
          <button class="button button-block"/>Log In</button>
          </form>
        </div>
     
        <!---------------------Login Form------------------------->
        
              <div id="signup"> 
              <h1>Sign Up for Free</h1>
              <form action="signup_servlet?a=signup_apply_travel" method="post">
              <div class="top-row">
                    <div class="field-wrap">
                          <label>
                            First Name<span class="req">*</span>
                          </label>
                          <input type="text" required autocomplete="off" name="f_name" />
                    </div>
                    <div class="field-wrap">
                          <label>
                            Last Name<span class="req">*</span>
                          </label>
                          <input type="text"required autocomplete="off"  name="l_name"/>
                    </div>
              </div>
              <div class="field-wrap">
                    <label>
                      Email Address<span class="req">*</span>
                    </label>
                    <input type="email"required autocomplete="off"  name="email"/>
              </div>
              <div class="field-wrap">
                    <label>
                      Set A Password<span class="req">*</span>
                    </label>
                    <input type="password"required autocomplete="off" name="password"/>
              </div>
                     <button type="submit" class="button button-block"/>R e g i s t e r</button>
              </form>
          
      </div><!-- tab-content -->
      </div> <!-- /form -->
     <%  }
        else if(type.equals("signup_apply_travel")){%>
          <div class="form">
      <ul class="tab-group">
        <li class="tab active"><a href="#signup">Sign Up</a></li>
        <li class="tab"><a href="#login">Log In</a></li>
      </ul>
      
      <div class="tab-content">
          <!-----------------------register form--------------------->
        <div id="signup">   
          <h1>Sign Up for Free</h1>
              <form action="signup_servlet?a=signup_apply_travel" method="post">
              <div class="top-row">
                    <div class="field-wrap">
                          <label>
                            First Name<span class="req">*</span>
                          </label>
                          <input type="text" required autocomplete="off" name="f_name" />
                    </div>
                    <div class="field-wrap">
                          <label>
                            Last Name<span class="req">*</span>
                          </label>
                          <input type="text"required autocomplete="off"  name="l_name"/>
                    </div>
              </div>
              <div class="field-wrap">
                    <label>
                      Email Address<span class="req">*</span>
                    </label>
                    <input type="email"required autocomplete="off"  name="email"/>
              </div>
              <div class="field-wrap">
                    <label>
                      Set A Password<span class="req">*</span>
                    </label>
                    <input type="password"required autocomplete="off" name="password"/>
              </div>
                  <input type="submit"  class="button button-block" value="R e g i s t e r"/>
         
              </form>
        </div>
        <!---------------------Login Form------------------------->
        <div id="login">   
          <h1>Welcome Back!</h1>
          <form action="login_servlet?a=login_apply_travel" method="post">
            <div class="field-wrap">
            <label>
              Email Address<span class="req">*</span>
            </label>
            <input type="email"required autocomplete="off" name="email"/>
          </div>
          <div class="field-wrap">
            <label>
              Password<span class="req">*</span>
            </label>
            <input type="password"required autocomplete="off" name="password"/>
          </div>
          <p class="forgot"><a href="#">Forgot Password?</a></p>
          <button class="button button-block"/>Log In</button>
          </form>
        </div>
      </div><!-- tab-content -->
      </div> <!-- /form -->
        
                                                                                               <!--apply hotel -->
     <%  }
        
        
         else if(type.equals("login_apply_hotel")){%>
            <div class="form">
      <ul class="tab-group">
        <li class="tab" ><a href="#signup">Sign Up</a></li>
        <li class="tab active"><a href="#login">Log In</a></li>
      </ul>
      
      <div class="tab-content">
          <!-----------------------register form--------------------->
        <div id="login">   
        <h1>Welcome Back!</h1>
          <form action="login_servlet?a=login_apply_hotel" method="post">
            <div class="field-wrap">
            <label>
              Email Address<span class="req">*</span>
            </label>
            <input type="email"required autocomplete="off" name="email"/>
          </div>
          <div class="field-wrap">
            <label>
              Password<span class="req">*</span>
            </label>
            <input type="password"required autocomplete="off" name="password"/>
          </div>
          <p class="forgot"><a href="#">Forgot Password?</a></p>
          <button class="button button-block"/>Log In</button>
          </form>
        </div>
     
        <!---------------------Login Form------------------------->
        
              <div id="signup"> 
              <h1>Sign Up for Free</h1>
              <form action="signup_servlet?a=signup_apply_hotel" method="post">
              <div class="top-row">
                    <div class="field-wrap">
                          <label>
                            First Name<span class="req">*</span>
                          </label>
                          <input type="text" required autocomplete="off" name="f_name" />
                    </div>
                    <div class="field-wrap">
                          <label>
                            Last Name<span class="req">*</span>
                          </label>
                          <input type="text"required autocomplete="off"  name="l_name"/>
                    </div>
              </div>
              <div class="field-wrap">
                    <label>
                      Email Address<span class="req">*</span>
                    </label>
                    <input type="email"required autocomplete="off"  name="email"/>
              </div>
              <div class="field-wrap">
                    <label>
                      Set A Password<span class="req">*</span>
                    </label>
                    <input type="password"required autocomplete="off" name="password"/>
              </div>
                     <button type="submit" class="button button-block"/>R e g i s t e r</button>
              </form>
          
      </div><!-- tab-content -->
      </div> <!-- /form -->
     <%  }
        else if(type.equals("signup_apply_hotel")){%>
          <div class="form">
      <ul class="tab-group">
        <li class="tab active"><a href="#signup">Sign Up</a></li>
        <li class="tab"><a href="#login">Log In</a></li>
      </ul>
      
      <div class="tab-content">
          <!-----------------------register form--------------------->
        <div id="signup">   
          <h1>Sign Up for Free</h1>
              <form action="signup_servlet?a=signup_apply_hotel" method="post">
              <div class="top-row">
                    <div class="field-wrap">
                          <label>
                            First Name<span class="req">*</span>
                          </label>
                          <input type="text" required autocomplete="off" name="f_name" />
                    </div>
                    <div class="field-wrap">
                          <label>
                            Last Name<span class="req">*</span>
                          </label>
                          <input type="text"required autocomplete="off"  name="l_name"/>
                    </div>
              </div>
              <div class="field-wrap">
                    <label>
                      Email Address<span class="req">*</span>
                    </label>
                    <input type="email"required autocomplete="off"  name="email"/>
              </div>
              <div class="field-wrap">
                    <label>
                      Set A Password<span class="req">*</span>
                    </label>
                    <input type="password"required autocomplete="off" name="password"/>
              </div>
                  <input type="submit"  class="button button-block" value="R e g i s t e r"/>
         
              </form>
        </div>
        <!---------------------Login Form------------------------->
        <div id="login">   
          <h1>Welcome Back!</h1>
          <form action="login_servlet?a=login_apply_hotel" method="post">
            <div class="field-wrap">
            <label>
              Email Address<span class="req">*</span>
            </label>
            <input type="email"required autocomplete="off" name="email"/>
          </div>
          <div class="field-wrap">
            <label>
              Password<span class="req">*</span>
            </label>
            <input type="password"required autocomplete="off" name="password"/>
          </div>
          <p class="forgot"><a href="#">Forgot Password?</a></p>
          <button class="button button-block"/>Log In</button>
          </form>
        </div>
      </div><!-- tab-content -->
      </div> <!-- /form -->
        
      
     <%  }
        
       else {
           response.sendRedirect("home.jsp");
       }
       
   %>
   <script src="js/jquery-1.11.2.js"></script>
    <script src="js/jquery-1.11.2.min.js"></script>
    <script src="plugins.js"></script>
<script>
 $('.form').find('input, textarea').on('keyup blur focus', function (e) {
      var $this = $(this),
      label = $this.prev('label');
	  if (e.type === 'keyup') {
      if ($this.val() === '') {
      label.removeClass('active highlight');
      } else {label.addClass('active highlight');}
      } else if (e.type === 'blur') {
      if( $this.val() === '' ) {
      label.removeClass('active highlight'); 
      } else {
      label.removeClass('highlight');}}
      else if (e.type === 'focus') {
      if( $this.val() === '' ) {label.removeClass('highlight'); } 
      else if( $this.val() !== '' ) {label.addClass('highlight');}}
});

$('.tab a').on('click', function (e) {
  e.preventDefault();
  $(this).parent().addClass('active');
  $(this).parent().siblings().removeClass('active');
  target = $(this).attr('href');
  $('.tab-content > div').not(target).hide();
  $(target).fadeIn(600);});
</script>
    </body>
</html>
