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

<%@attribute name="bagItem" type="model.BagItem"
             required="true" %>

<div class="product">
    <table class="big-table">
        <tr>
            <td>
                <img src="${bagItem.product.img} "
                     class="img-product"/>
            </td>
            <td>
                <table class="small-table">
                    <tr>
                        <td>
                            <span><b>Brand: </b></span> ${bagItem.product.brand}
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <span><b>Model:</b> </span> ${bagItem.product.title}
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <span><b>Price: </b></span>  ${bagItem.product.price}
                        </td>
                    </tr>

                </table>
            </td>
            <td>
                Quantity: ${bagItem.quantity}
            </td>
            <td>
                <div class="bag-manipulation">
                    <button class="btn btn-light" style="width: 35px" onclick="bagRemoveOne(this.value)" value="${bagItem.product.productId}">-</button>
                    <button class="btn btn-light" style="width: 35px" onclick="bagAddOne(this.value)" value="${bagItem.product.productId}">+</button>
                </div>
            </td>
        </tr>
    </table>
</div>
