<%--
  Created by IntelliJ IDEA.
  User: koweratus
  Date: 4/13/2020
  Time: 8:47 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="kova" uri="kova/tlds" %>

<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <title>Category</title>
    <link href="css/style.css" rel="stylesheet" type="text/css"/>

</head>
<body>
<kova:navbar></kova:navbar>
    <div id="row">
        <h3 style="margin-top: 50px">Categories</h3>
        <div class="div-category">
            <ul>
                <c:forEach items="${categories}"
                           var="item">

                    <li><a
                            href="viewCategory?idCategory=${item.categoryId}">${item.title}</a></li>

                </c:forEach>
            </ul>
        </div>
    </div>

</body>
</html>
