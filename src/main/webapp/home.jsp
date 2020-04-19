<%--
  Created by IntelliJ IDEA.
  User: koweratus
  Date: 4/13/2020
  Time: 10:03 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="kova" uri="kova/tlds" %>
<%@ taglib prefix="C"
           uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Checkout</title>

    <link href="css/checkout.css" rel="stylesheet" type="text/css"/>
    <script src="https://www.paypal.com/sdk/js?client-id=sb"></script>
    <script>paypal.Buttons().render('body');</script>
</head>
<body>
<div id="row">
    <h2>Checkout</h2>
    <div id="row product-bag">

    </div>
    <div id="row totalSum">

    </div>
    <div  style="margin: 0 auto">
        <h3 style="text-align: center; margin-bottom:
             30px">Payment method</h3>
        <h4 style="text-align: center;margin-bottom:
            20px">Paypal</h4>
        <div id="paypal-button-container paypal"  ></div>
        <br>
        <h4 style="text-align: center;margin-bottom:
            20px"><hr>Cash</h4>
        <div style="text-align: center;margin-top:
            20px">
            <button class="btn btn-info"
                    style="width: 200px"
                    id="cash">Cash
            </button>
        </div>
    </div>
</div>

<%--SCRIPTS--%>


<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<script src="js/script.js" type="text/javascript"></script>
<script src="js/checkout.js"></script>
</body>
</html>
