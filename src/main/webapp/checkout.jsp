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

</head>
<body>
<kova:navbar></kova:navbar>
<div id="row">
    <h2>Checkout</h2>
    <div id="row product-bag">
        <C:forEach items="${cartSession}"
                   var="item">
            <kova:productcheckout cart="${item}"></kova:productcheckout>
            <hr>
        </C:forEach>
    </div>
    <div id="row totalSum">
        <b> Total: ${sum} kn</b>
        <hr>
    </div>
    <div  style="margin: 0 auto">
        <h3 style="text-align: center; margin-bottom:
             30px">Payment method</h3>
<%--        <h4 style="text-align: center;margin-bottom:
            20px">Paypal</h4>--%>
        <div class="paypal-button-container " style="  width: 11%;
        margin-left: 45%;
        margin-bottom: -1%;" ></div>

        <br>
     <%--   <h4 style="text-align: center;margin-bottom:
            20px">--%><hr><%--Cash</h4>--%>
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

<script src="https://www.paypal.com/sdk/js?client-id=sb">
</script>
<script>
    paypal.Buttons({
        createOrder: function(data, actions) {
            // This function sets up the details of the transaction, including the amount and line item details.
            return actions.order.create({
                purchase_units: [{
                    amount: {
                        value: ${sum}

                    }
                }]
            });
        },
        onApprove: function(data, actions) {
            // This function captures the funds from the transaction.
            return actions.order.capture().then(function(details) {
                // This function shows a transaction success message to your buyer.
                alert('Transaction completed by ' + details.payer.name.given_name);
                window.location.href="paypal";
                // Call your server to save the transaction
                return fetch('/paypal-transaction-complete', {
                    method: 'post',
                    headers: {
                        'content-type': 'application/json'
                    },
                    body: JSON.stringify({
                        orderID: data.orderID
                    })
                });
            });
        }
    }).render('.paypal-button-container');
</script>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<script src="js/script.js" type="text/javascript"></script>
<script src="js/checkout.js"></script>
</body>
</html>
