<%--
  Created by IntelliJ IDEA.
  User: koweratus
  Date: 4/13/2020
  Time: 8:55 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="kova" uri="kova/tlds" %>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Logs</title>
    <link rel="stylesheet" type="text/css" href="css/logs.css">
</head>
<body>
<kova:navbar></kova:navbar>
<div id="row">
    <table class="table-log">
        <thead>
        <th>User ID</th>
        <th></th>
        <th>IP Address</th>
        <th></th>
        <th>Date</th>
        </thead>
        <c:forEach items="${logs}" var="log">
            <tr>
                <td>${log.customerId}</td>
                </br>
                <td> </td>
                <td>${log.IPAdress}</td>
                <td></td>
                <td>${log.logDate}</td>
            </tr>
        </c:forEach>
    </table>
</div>

</body>
</html>
