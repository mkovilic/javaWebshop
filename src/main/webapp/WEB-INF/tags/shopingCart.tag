<%--
  Created by IntelliJ IDEA.
  User: koweratus
  Date: 4/13/2020
  Time: 4:06 PM
  To change this template use File | Settings | File Templates.
--%>
<%@tag description="cart tag" pageEncoding="UTF-8" %>
<%@ taglib prefix="c"
           uri="http://java.sun.com/jsp/jstl/core" %>

<%@attribute name="cart" type="model.Cart"
             required="true" %>

<div class="product">
    <table class="big-table">
        <tr>
            <td>
                <img src="${cart.product.img} "
                     class="img-product"/>
            </td>
            <td>
                <table class="small-table">
                    <tr>
                        <td>
                            <span><b>Brand: </b></span> ${cart.product.brand}
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <span><b>Model:</b> </span> ${cart.product.title}
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <span><b>Price: </b></span>  ${cart.product.price}
                        </td>
                    </tr>

                </table>
            </td>
            <td>
                Quantity: ${cart.quantity}
            </td>
            <td>
                <div class="bag-manipulation">
                    <a class="btn btn-light" style="width: 35px"<%-- onclick="bagRemoveOne(this.value)"--%> href="remove?idProduct=${cart.product.productId}">
                        <%--   value="${cart.product.productId}">--%>-</a>
                    <a class="btn btn-light" style="width: 35px"<%-- onclick="bagRemoveOne(this.value)"--%> href="add?idProduct=${cart.product.productId}">
                        <%--   value="${cart.product.productId}">--%>+</a>
                </div>
            </td>
        </tr>
    </table>
</div>
