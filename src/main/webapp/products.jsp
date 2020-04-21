<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="kova" uri="kova/tlds" %>

<!DOCTYPE html>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Products</title>
    <link href="css/products.css" rel="stylesheet" type="text/css"/>

</head>
<body>
<kova:navbar></kova:navbar>

<div id="row">
    <h1 id="h1">All products</h1>
    <div class="row products">
        <ul>
            <c:forEach items="${products}" var="item">
                <li><kova:products
                        product="${item}"></kova:products></li>
                <hr>
            </c:forEach>

        </ul>
    </div>
</div>
</body>
</html>