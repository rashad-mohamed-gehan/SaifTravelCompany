/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author r4ad
 */

import java.util.regex.Matcher;
import java.util.regex.Pattern;
 
public class validator {

         public boolean validate_email(String email)  {
           
             Pattern pattern;
	     Matcher matcher;
 
	final String EMAIL_PATTERN = 
		"^[_A-Za-z0-9-\\+]+(\\.[_A-Za-z0-9-]+)*@"
		+ "[A-Za-z0-9-]+(\\.[A-Za-z0-9]+)*(\\.[A-Za-z]{2,})$";
 

		pattern = Pattern.compile(EMAIL_PATTERN);
	
 
	
 
		matcher = pattern.matcher(email);
		return matcher.matches();
 
	}

       



        
       public boolean validate_name(String name)  {
            String expression = "^[a-zA-Z\\s]+"; 
            if(name.matches(expression))
           {
               return true;
           } 
         else{
             expression="\\p{InArabic}+";
         if(name.matches(expression)){
                 return true;
                 }
                 else{
                 return false;
                 }
             }   
               
  
           }
   
      
                         
            
            

        
        public boolean validate_password(String password){

    
          Pattern pattern;
	     Matcher matcher;
 
	final String pass_pat =	 "((?=.*\\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[@#$%]).{6,20})";
 

		pattern = Pattern.compile(pass_pat);
	        matcher = pattern.matcher(password);
		return matcher.matches();
        
        }}