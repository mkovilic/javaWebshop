<%--
  Created by IntelliJ IDEA.
  User: koweratus
  Date: 3/12/2020
  Time: 1:22 PM
  To change this template use File | Settings | File Templates.
--%>


<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="kova" uri="kova/tlds" %>


<!DOCTYPE html>
<html lang="en">
<head>
    <script src="https://use.fontawesome.com/1fa2e54b22.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    <script src="http://code.jquery.com/jquery-latest.min.js"></script>
    <script src="js/cart.js"></script>
    <script src="js/index.js"></script>
    <link rel="stylesheet" href="css/kart.css" type="text/css">
</head>
<body>

<div class="header">
    <div class="heading">
        <h1>Shopping Cart</h1>
    </div>
    <div class="cart">
        <i class="fa fa-shopping-basket fa-2x"></i>
        <i class="fa fa-caret-down"></i><br>
        <div class="total-text">
            <p>Items</p>
            <p id="items-basket"></p>
        </div>
    </div>

    <div id="cart-items">
        <ol id="list-item">
        </ol>

        <div class="total-text">
            <p>Total: </p>
            <p id="total-price"></p>
        </div>
    </div>



</div>

<div class="items-container">
    <!-- Item 1 -->
<c:forEach items="${products}" var="item" begin="0" step="3" end="18">
    <kova:kart product="${item}"></kova:kart>
</c:forEach>
</div>

</body>
</html>

