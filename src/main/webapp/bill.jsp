<%--
  Created by IntelliJ IDEA.
  User: koweratus
  Date: 4/13/2020
  Time: 10:04 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="kova" uri="kova/tlds" %>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <title>Bill</title>
    <link href="css/bill.css" rel="stylesheet" type="text/css"/>


</head>
<body>
<kova:navbar></kova:navbar>
    <div id="row">
        <h3>Hello</h3>
        <h4>Bill items:</h4>
        <ol>
            <c:forEach var="i" items="${items}">
                <c:forEach var="item"
                           items="${productsBill}">
                    <c:if
                            test="${item.productId==i.productId}">
                        <li>${item.brand} ${item.title}
                        <b>Quantity:</b>
                        ${i.quantity}
                        </li>
                    </c:if>
                </c:forEach>
            </c:forEach>
        </ol>
    </div>

</body>
</html>
