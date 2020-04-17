<%--
  Created by IntelliJ IDEA.
  User: koweratus
  Date: 4/13/2020
  Time: 4:16 PM
  To change this template use File | Settings | File Templates.
--%>
<%@tag description="bill tag" pageEncoding="UTF-8" %>
<%@ taglib prefix="c"
           uri="http://java.sun.com/jsp/jstl/core" %>

<%@attribute name="bill" type="model.Bill"
             required="true" %>

<div class="bill">
    <p><b>Bill No:</b>
        ${bill.billId} | <b>Date:</b> ${bill.billDate} |
        <b>Payment methods:
        </b>
        <c:choose>
        <c:when
                test="${bill.paymentMethodId==1}">Paypal
        </c:when>
        <c:when
                test="${bill.paymentMethodId==2}">Cash
        </c:when>
        <c:otherwise>Sex</c:otherwise>
        </c:choose>
    <form action="viewBill" method="post">
        <input type="hidden" name="billId"
               value="${bill.billId}">
        <button type="submit" class="btn btn-primary"
                style="margin-left: 20px">View items
        </button>
    </form>
    </p>
</div>