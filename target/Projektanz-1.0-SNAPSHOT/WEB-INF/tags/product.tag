<%--
  Created by IntelliJ IDEA.
  User: koweratus
  Date: 4/13/2020
  Time: 3:58 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ tag description="product tag" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ attribute name="product" type="model.Product"
          required="true"%>

<div class="product">
    <div class="row">
        <img src="${product.img}" class="img-product"/></td>
    </div>
    <div class="row">
        <div class="row product-info"><b>Title:</b> ${product.title}</div>
        <div class="row product-info"><b>Brand:</b> ${product.brand}</div>
        <div class="row product-info"><b>About:</b> ${product.about}</div>
        <div class="row product-info"><b>Price:
            ${product.price} kn </b></div>
    </div>
<%--
    <a href="#" data-name=${product.title} data-price=${product.price}
       class="add-to-cart btn btn-info">Add to cart</a>
--%>

    <form class="form-add" action="addBag" method="post">
        <input type="hidden" name="idProduct" value="${product.productId}"/>
        <button type="submit" class="btn btn-info btn-add">Add to cart</button>
    </form>
</div>