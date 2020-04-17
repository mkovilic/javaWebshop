<%--
  Created by IntelliJ IDEA.
  User: koweratus
  Date: 4/13/2020
  Time: 4:12 PM
  To change this template use File | Settings | File Templates.
--%>
<%@tag description="checkout tag" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@attribute name="bagItem" type="model.BagItem"
             required="true" %>

<div class="product">
    <table class="big-table">
        <tr>
            <td>
                <img src="${bagItem.product.img}"
                     class="img-product" alt="neam poma"/>
            </td>
            <td>
                <table class="small-table">
                    <tr>
                        <td>
                            ${bagItem.product.brand}
                        </td>
                    </tr>
                    <tr>
                        <td>
                            ${bagItem.product.title}
                        </td>
                    </tr>
                    <tr>
                        <td>
                            ${bagItem.product.price}kn
                        </td>
                    </tr>

                </table>
            </td>
            <td>Quantity:${bagItem.quantity}</td>
        </tr>
    </table>
</div>
