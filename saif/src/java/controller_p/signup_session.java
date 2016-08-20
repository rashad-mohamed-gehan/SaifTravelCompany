/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller_p;

import com.sun.xml.rpc.processor.modeler.j2ee.xml.string;
import java.io.IOException;
import java.io.PrintStream;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.util.ArrayList;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
/**
 *
 * @author r4ad
 */
public class signup_session implements Filter {
    
    private static final boolean debug = true;

    // The filter configuration object we are associated with.  If
    // this value is null, this filter instance is not currently
    // configured. 
    private FilterConfig filterConfig = null;
    
    public signup_session() {
    }    
    
    private void doBeforeProcessing(ServletRequest request, ServletResponse response)
            throws IOException, ServletException {
        if (debug) {
            log("signup_session:DoBeforeProcessing");
        }

	// Write code here to process the request and/or response before
        // the rest of the filter chain is invoked.
	// For example, a logging filter might log items on the request object,
        // such as the parameters.
	/*
         for (Enumeration en = request.getParameterNames(); en.hasMoreElements(); ) {
         String name = (String)en.nextElement();
         String values[] = request.getParameterValues(name);
         int n = values.length;
         StringBuffer buf = new StringBuffer();
         buf.append(name);
         buf.append("=");
         for(int i=0; i < n; i++) {
         buf.append(values[i]);
         if (i < n-1)
         buf.append(",");
         }
         log(buf.toString());
         }
         */
    }    
    
    private void doAfterProcessing(ServletRequest request, ServletResponse response)
            throws IOException, ServletException {
        if (debug) {
            log("signup_session:DoAfterProcessing");
        }

	// Write code here to process the request and/or response after
        // the rest of the filter chain is invoked.
	// For example, a logging filter might log the attributes on the
        // request object after the request has been processed. 
	/*
         for (Enumeration en = request.getAttributeNames(); en.hasMoreElements(); ) {
         String name = (String)en.nextElement();
         Object value = request.getAttribute(name);
         log("attribute: " + name + "=" + value.toString());

         }
         */
	// For example, a filter might append something to the response.
	/*
         PrintWriter respOut = new PrintWriter(response.getWriter());
         respOut.println("<P><B>This has been appended by an intrusive filter.</B>");
         */
    }

    /**
     *
     * @param request The servlet request we are processing
     * @param response The servlet response we are creating
     * @param chain The filter chain we are processing
     *
     * @exception IOException if an input/output error occurs
     * @exception ServletException if a servlet error occurs
     */
  public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException
  {
          
        PrintWriter out=response.getWriter();
  
          
               
              
String content="<!DOCTYPE html>\n" +
"<html>\n" +
"    <head>\n" +
"        <title>Saif company</title>\n" +
"        <meta name=\"keywords\" content=\"\" />\n" +
"        <meta name=\"description\" content=\"\" />\n" +
"        <!-- \n" +
"        Sonic Template \n" +
"        http://www.templatemo.com/preview/templatemo_394_sonic \n" +
"        -->\n" +
"        <meta charset=\"utf-8\">\n" +
"        <meta name=\"viewport\" content=\"initial-scale=1\">\n" +
"        <link href='http://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,700italic,800italic,400,300,600,700,800' rel='stylesheet'             type='text/css'>\n" +
"        <link rel=\"stylesheet\" href=\"css/bootstrap.min.css\">\n" +
"        <link rel=\"stylesheet\" href=\"css/font-awesome.min.css\">\n" +
"        <link rel=\"stylesheet\" href=\"css/templatemo_misc.css\">\n" +
"        <link rel=\"stylesheet\" href=\"css/templatemo_style.css\">\n" +
"        <link rel=\"stylesheet\" href=\"css/animate.css\">\n" +
"        <link rel=\"shortcut icon\" href=\"images/tabIcon.png\">\n" +
"        <script src=\"js/wow.min.js\">new WOW().init();</script>\n" +
"    </head>\n" +
"    <body>";
    String tail="<body></html>";
    out.print(content);
    String type=request.getParameter("a");
    String redirect="account.jsp?a=login";
     if (type.equals("signup_apply_offer"))   {
     redirect="account.jsp?a=signup_apply_offer";
     
     }
     else if (type.equals("signup_apply_travel"))   {
     redirect="account.jsp?a=signup_apply_travel";
     
     }
      else if (type.equals("signup_apply_hotel"))   {
     redirect="account.jsp?a=signup_apply_hotel";
     
     }
        RequestDispatcher rd=request.getRequestDispatcher(redirect);
        model.validator v=new model.validator();
        if(v.validate_name(request.getParameter("f_name"))){
                 if(v.validate_name(request.getParameter("l_name"))){
                       if(v.validate_email(request.getParameter("email"))){
                             if(v.validate_password(request.getParameter("password"))){ 
                                 
                                 chain.doFilter(request, response);
                             }
                             else {
                                 out.print("sorry invalid  password it should contains capital , smale character,digit and other symbols like #$@%^&  ");
                                 rd.include(request, response);
                             }
                       }
                       else {
                           
                           out.print("sorry invalid email");
                           rd.include(request, response);
                       }
                 }
                 else {
                     out.print("sorry invalid last name");
                     rd.include(request, response);
                 }
        }
        else {
            out.print("sorry invalid first name");
            out.print(request.getParameter("f_name"));
            rd.include(request, response);
            
        }


        

    out.print(tail);
           }
    
/*public void doFilter(ServletRequest req, ServletResponse res, FilterChain chain) throws IOException, ServletException
	{
 ArrayList<string> urlList = null;
 
		HttpServletRequest request = (HttpServletRequest) req;
		HttpServletResponse response = (HttpServletResponse) res;
		String url = request.getServletPath();
		
		if (urlList.contains(url))
		{
			chain.doFilter(req, res);
		}
		else
		{
			HttpSession session = request.getSession(false);
			
			if (session == null )
			{
				response.sendRedirect(request.getContextPath());
			}
			else
			{
				chain.doFilter(req, res);
			}
		}	
	}
    /**
     * Return the filter configuration object for this filter.
     */
    public FilterConfig getFilterConfig() {
        return (this.filterConfig);
    }

    /**
     * Set the filter configuration object for this filter.
     *
     * @param filterConfig The filter configuration object
     */
    public void setFilterConfig(FilterConfig filterConfig) {
        this.filterConfig = filterConfig;
    }

    /**
     * Destroy method for this filter
     */
    public void destroy() {        
    }

    /**
     * Init method for this filter
     */
    public void init(FilterConfig filterConfig) {        
        this.filterConfig = filterConfig;
        if (filterConfig != null) {
            if (debug) {                
                log("signup_session:Initializing filter");
            }
        }
    }

    /**
     * Return a String representation of this object.
     */
    @Override
    public String toString() {
        if (filterConfig == null) {
            return ("signup_session()");
        }
        StringBuffer sb = new StringBuffer("signup_session(");
        sb.append(filterConfig);
        sb.append(")");
        return (sb.toString());
    }
    
    private void sendProcessingError(Throwable t, ServletResponse response) {
        String stackTrace = getStackTrace(t);        
        
        if (stackTrace != null && !stackTrace.equals("")) {
            try {
                response.setContentType("text/html");
                PrintStream ps = new PrintStream(response.getOutputStream());
                PrintWriter pw = new PrintWriter(ps);                
                pw.print("<html>\n<head>\n<title>Error</title>\n</head>\n<body>\n"); //NOI18N

                // PENDING! Localize this for next official release
                pw.print("<h1>The resource did not process correctly</h1>\n<pre>\n");                
                pw.print(stackTrace);                
                pw.print("</pre></body>\n</html>"); //NOI18N
                pw.close();
                ps.close();
                response.getOutputStream().close();
            } catch (Exception ex) {
            }
        } else {
            try {
                PrintStream ps = new PrintStream(response.getOutputStream());
                t.printStackTrace(ps);
                ps.close();
                response.getOutputStream().close();
            } catch (Exception ex) {
            }
        }
    }
    
    public static String getStackTrace(Throwable t) {
        String stackTrace = null;
        try {
            StringWriter sw = new StringWriter();
            PrintWriter pw = new PrintWriter(sw);
            t.printStackTrace(pw);
            pw.close();
            sw.close();
            stackTrace = sw.getBuffer().toString();
        } catch (Exception ex) {
        }
        return stackTrace;
    }
    
    public void log(String msg) {
        filterConfig.getServletContext().log(msg);        
    }
    
}
