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

<div class="shopping-cart">
    <!-- Title -->
    <div class="title">
        Shopping Bag
    </div>

    <div class="item">
          <div class="image">
            <img src="${bagItem.product.img}" alt="" />
        </div>

        <div class="description">
             ${bagItem.product.brand}
             ${bagItem.product.title}
             ${bagItem.product.price}

        </div>

        <div class="quantity">
            <button class="plus-btn" type="button" name="button">
                <img src="plus.svg" alt="" />
            </button>
            <input type="text" name="name" value="1">
            <button class="minus-btn" type="button" name="button">
                <img src="minus.svg" alt="" />
            </button>
        </div>

        <div class="total-price">${sum} </div>
    </div>
</div>
