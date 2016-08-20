<%-- 
    Document   : messages
    Created on : Apr 9, 2015, 7:03:34 AM
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
    </head>
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
            <h2>Messages</h2>
        <sql:setDataSource var="dataSourse" driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost/saif" user="root" password=""/>
        <sql:query var="reservations" dataSource="${dataSourse}">
            select * from message 
        </sql:query>
            <table>
                <tr>
                    <th>name</th>
                    <th>email</th>
                    <th>subject</th>
                    <th>message</th>
                    <th>date</th>
                </tr>
                <c:forEach var="reservationsView" items="${reservations.rows}">
                <tr>
                    <td><c:out value="${reservationsView.name}"/></td>
                    <td><c:out value="${reservationsView.email}"/></td>
                    <td><c:out value="${reservationsView.subject}"/></td>
                    <td><c:out value="${reservationsView.message}"/></td>
                    <td><c:out value="${reservationsView.date}"/></td>
                </c:forEach>
                </tr>
            </table>
        </div>
    </body>
</html>
