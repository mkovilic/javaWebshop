<%--
  Created by IntelliJ IDEA.
  User: koweratus
  Date: 4/13/2020
  Time: 8:53 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="kova" uri="kova/tlds" %>

<html>
<head>
    <title>Cart</title>
    <script src="js/script.js" type="text/javascript"></script>
    <link href="css/productBag.css" rel="stylesheet" type="text/css"/>

</head>
<body>
<kova:navbar></kova:navbar>
<div id="row ">
    <h1>Shopping cart</h1>
    <div id="row product-bag">
        <c:choose>
            <c:when test="${ sum !=null }">
                <c:forEach items="${cartSession}" var="item">
                    <kova:shopingCart cart="${item}"></kova:shopingCart>
                    <hr>
                </c:forEach>
            </c:when>
            <c:otherwise>
                <h2> The cart is empty...</h2>
            </c:otherwise>
        </c:choose>
    </div>

    <div  class=" btn-checkout" >
        Total: ${sum}kn
    </div>
    <div id="row" class=" btn-checkout"  >
        <button class="btn btn-info my-2 my-sm-0" onclick="checkout()">Checkout</button>
    </div>

</div>

</body>
</html>
