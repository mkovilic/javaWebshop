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


<div class="product">
    <table class="big-table">
        <tr>
            <td><img src="${product.img}" class="img-product"/></td>
            <td>
                <table class="small-table" >
                    <tr>
                        <td>${product.brand} <b>|</b>   ${product.title}
                        </td>
                        <td >

                        </td>
                    </tr>
                    <tr>

                        <td> <b>${product.price} kn</b></td>
                    </tr>
                </table>
            </td>
            <td>

                <form action="product" method="post">
                  <%--  <a type="submit" href="product?idProduct=${product.productId}">${product.title}</a>--%>
                    <input type="hidden" name="idProduct" value="${product.productId}"/>
                    <button type="submit" id="btn" class="btn btn-info" >View</button>
                </form>
            </td>
        </tr>
    </table>
</div>
