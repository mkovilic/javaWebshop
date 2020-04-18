<%--
  Created by IntelliJ IDEA.
  User: koweratus
  Date: 4/13/2020
  Time: 4:21 PM
  To change this template use File | Settings | File Templates.
--%>
<%@tag description="put the tag description here" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@attribute name="product" type="model.Product"
             required="true" %>


<div class="col-lg-4 col-md-6 mb-4">
    <div class="card h-100">
        <a href="#"><img class="card-img-top" src=${product.img} ></a>
        <div class="card-body">
            <h4 class="card-title">
                <a href="#" style="text-decoration:none" class="text-info" data-toggle="collapse" data-target="#${product.productId}">${product.title}</a>
                <div id="${product.productId}" class="collapse">
                    <form class="form-add" action="addBag" method="post">
                        <input type="hidden" name="idProduct" value="${product.productId}"/>
                        <button type="submit" class="btn btn-info btn-add">Add to cart</button>
                    </form>
                </div>
            </h4>
            <h5>${product.price} kn</h5>
            <p class="card-text">${product.about}</p>
        </div>
        <div class="card-footer">
            <small class="text-muted">&#9733; &#9733; &#9733; &#9733; &#9734;</small>
        </div>
        <form action="product" method="post">
            <%--  <a type="submit" href="product?idProduct=${product.productId}">${product.title}</a>--%>
            <input type="hidden" name="idProduct" value="${product.productId}"/>
           <%-- <button type="submit" id="btn" class="btn btn-info" >View</button>--%>
        </form>
    </div>
</div>


