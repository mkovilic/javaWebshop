<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="kova" uri="kova/tlds" %>

<!DOCTYPE html>
<html>
    <head>
        <title>Categories</title>
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <link href="css/categoryProducts.css" rel="stylesheet" type="text/css"/>

    </head>
    <body>
    <kova:navbar></kova:navbar>
        <div id="row">
            <h3 style="margin-top: 50px">Categories</h3>
            <div class="products" >
                <ul>
                    <c:forEach
                            items="${categoryProducts}"
                            var="item">
                        <li>
                            <kova:products product="${item}"></kova:products>
                        </li>
                        <hr>
                    </c:forEach>
                </ul>
            </div>
        </div>

    </body>
</html>