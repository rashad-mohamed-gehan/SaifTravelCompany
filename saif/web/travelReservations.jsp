<%-- 
    Document   : travelReservations
    Created on : Apr 9, 2015, 5:51:29 AM
    Author     : khalid
--%>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            body,html{margin: 0;padding: 0}
            .logo { margin: 27px 0; background-color: #38a9e3; padding: 25px 40px; }
            .logo a { color: white; }
            .logo a h1 { text-transform: uppercase; font-size: 30px; margin: 0; font-weight: 800; }
            .logo span { color: #bee3f6; font-size: 13px; }
            .masterLeft{float: left; width: 23%; height: 100%; position: fixed; background-color: #495054; color: white;font-size: 20px;margin: 0;padding: 0}
            td{ border:1px solid  black;cellpadding:10px;font-size: 15px;}
            table,tr{max-width: 1000px}
            table th{background: #38a9e3;font-size:35px;border-radius: 40px;}
            th,tr,td{padding: 10px;border-radius: 10px;}
        </style>
    </head>
    <body>
        <div class="masterLeft">
            <div class="logo">
			<a href="#"><h1>S a i f</h1></a>
			<span>Tourism company</span>
		</div> 
            </div>
        <div style="margin-left: 350px;float: left;max-width:1000px;">
            <h2>Travel reservations</h2>
        <%String travelSelected=request.getParameter("travelName");%>
        <sql:setDataSource var="dataSourse" driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost/saif" user="root" password=""/>
        <sql:query var="reservations" dataSource="${dataSourse}">
            select * from reservation_travel where travel_id= <%=travelSelected%>
        </sql:query>
            <table>
                <tr>
                    <th>Visa</th>
                    <th>users number</th> <!--capacity-->
                    
                    <th>name</th>
                    <th>email</th>
                    
                </tr>
                <c:forEach var="reservationsView" items="${reservations.rows}">
                <tr>
                    <td><c:out value="${reservationsView.visa_num}"/></td>
                    <td><c:out value="${reservationsView.usersNumber}"/></td>
                    <sql:query var="reservations" dataSource="${dataSourse}">
                     select * from user_login where id=${reservationsView.user_id}
                    </sql:query>
                    <c:forEach var="s" items="${reservations.rows}">
                    <td><c:out value="${s.fname}"/></td>
                    <td><c:out value="${s.email}"/></td>
                    </c:forEach>
                </c:forEach>
                </tr>
            </table>
        </div>
    </body>
</html>
