<%--@elvariable id="customer" type="model.Customer"--%>
<%--
  Created by IntelliJ IDEA.
  User: koweratus
  Date: 4/13/2020
  Time: 8:55 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8"
         language="java" %>
<%@taglib prefix="c"
          uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="kova" uri="kova/tlds" %>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User</title>
    <link href="css/userStyle.css" rel="stylesheet" type="text/css"/>

</head>
<body>
<kova:navbar></kova:navbar>
<div id="row">
    <h2>Customer data</h2>
    <div class="customer-data">
        <h3>Customer info:</h3>
        <div class="customer">
            <p><b>First
                name:</b>&nbsp; ${customer.firstName}</p>
            <p><b>Last name:</b>&nbsp; ${customer.lastName}
            </p>
            <p><b>Address:</b>&nbsp; ${customer.address}</p>
            <p><b>Email:</b>&nbsp; ${customer.email}</p>
        </div>
    </div>
    <div >
        <h3>Bills</h3>
        <c:forEach items="${bills}" var="item">
            <li>
                <kova:bill bill="${item}"></kova:bill>
            </li>
        </c:forEach>
    </div>
</div>

</body>
</html>
