<%--
  Created by IntelliJ IDEA.
  User: koweratus
  Date: 4/15/2020
  Time: 5:52 PM
  To change this template use File | Settings | File Templates.
--%>
<%@tag description="navbar tag" pageEncoding="utf-8" %>
<%@taglib prefix="c"
          uri="http://java.sun.com/jsp/jstl/core" %>
<head>
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
    <link href="//maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
    <%-- <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  --%>
    <link href="fontawesome-free-5.13.0-web/css/all.css" type="text/css" rel="stylesheet">
    <link href="css/navbar.css" rel="stylesheet" type="text/css">
</head>
<nav class="navbar navbar-icon-top navbar-expand-lg navbar-dark bg-dark">
    <a class="navbar-brand" href="index.jsp"><img src="img/kk.jpg" style="width: 106px"></a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false"
            aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav mr-auto">
            <%--PRODUCTS--%>
            <li class="nav-item">
                <a class="nav-link" href="products">
                    <i class="fa fa-dice-d6"></i>
                    Products
                </a>
            </li>
            <%--CATEGORIES--%>
            <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" href="categories" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    <i class="fa fa-layer-group"></i>
                    Categories
                </a>
                <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                    <ul class="navbar-nav dropdownItems">
                        <c:forEach items="${categories}"
                                   var="item">
                            <li><a class="dropdown-item"
                                   href="viewCategory?idCategory=${item.categoryId}">${item.title}</a>
                            </li>
                        </c:forEach>

                    </ul>
                </div>
            </li>
            <li>

            </li>
            <c:if test="${sessionScope.username!=null}">
            </c:if>

        </ul>
        <ul class="navbar-nav ">
            <li class="nav-item">
                <a class="nav-link" href="bag.jsp" <%--data-toggle="modal" data-target="#cart"--%>>
                    <i class="fa fa-shopping-cart">
                        <span class="badge badge-success"><%--<span class="total-count">--%>9</span></span>
                    </i>
                    Cart
                </a>
            </li>
        </ul>
        <c:if test="${sessionScope.username != null}">
            <form action="user" method="post" class="form-inline my-2 my-lg-0">
                <button type="submit"
                        style="margin-right:5px;margin-top: 15px"
                        class="btn btn-outline-info my-2 my-sm-0">${sessionScope.username}</button>
                <input type="hidden"
                       value="${sessionScope.username}"
                       name="username" class="form-control mr-sm-2"/>
            </form>
        </c:if>
        <c:if test="${sessionScope.admin!=null}">
            <a href="logs" class="btn btn-outline-info my-2 my-sm-0 nav-link" style="margin-right: 10px">Admin page </a>
        </c:if>
        <c:choose>
            <c:when test="${sessionScope.username == null && sessionScope.admin == null}">
                <a class="btn btn-outline-info my-2 my-sm-0" href="login.jsp">Login</a>
            </c:when>
            <c:otherwise>
                <a class="btn btn-outline-danger my-2 my-sm-0"
                   href="logout">Logout</a>
            </c:otherwise>
        </c:choose>
    </div>
</nav>
<%--<div class="modal fade" id="cart" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Cart</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body frame ">
                &lt;%&ndash; <table class="show-cart table">

                 </table>
                 <div>Total price: $<span class="total-cart"></span></div>&ndash;%&gt;

                    <h1>Shopping cart</h1>

                        <c:choose>
                            <c:when test="${ sum !=null }">
                                <c:forEach items="${bagSession}" var="item">
                                    <kova:shopingCart bagItem="${item}"></kova:shopingCart>
                                    <hr>
                                </c:forEach>
                            </c:when>
                            <c:otherwise>
                                <h2> The cart is empty...</h2>
                            </c:otherwise>
                        </c:choose>

                        Total: ${sum}kn

                        <button class="btn btn-info my-2 my-sm-0" onclick="checkout()">Checkout</button>

                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                    <button type="button" class="btn btn-primary" onclick="checkout()">Checkout</button>
                    <button class="clear-cart btn btn-danger">Clear Cart</button>
                </div>
            </div>
        </div>
    </div>--%>
    <script>
        $.get('categories', function (data) {
        });
    </script>
<%--    <script>
        $.get('addBag', function (data) {
        });
    </script>--%>
<%--    <script type="text/javascript">
        $('document').ready(function(){
            $('div.frame').load('bag.jsp');
        });
    </script>--%>



