<!--
Created by IntelliJ IDEA.
User: koweratus
Date: 4/13/2020
Time: 3:44 PM
To change this template use File | Settings | File Templates.
-->
<%@tag description="menu tag" pageEncoding="utf-8" %>
<%@taglib prefix="c"
          uri="http://java.sun.com/jsp/jstl/core" %>
<nav>
    <div class="logo-area">
        <a href="../home.jsp"><img class="logo"
                                   src="#"
                                   alt="Logo"/> </a>
    </div>
    <div class="main-nav">
        <ul>
            <li><a href="../home.jsp">Home</a></li>
            <li><a href="products">Products</a></li>
            <li><a href="categories">Categories</a>
            </li>
            <li>
                <c:if test="${sessionScope.admin!=null}">
                    <a href="logs" id="btnAdmin"
                       style="margin-right: 5px"
                       class="btn">Admin page</a>
                </c:if>
            </li>

            <c:if
                    test="${sessionScope.username!=null}">

            </c:if>
            <li><a
                    class="btn btn-outline-secondary btn-sm myButton"
                    style="margin-right:5px" href="bag.jsp">My
                Bag</a>
            </li>
            <li>
                <c:choose>
                    <c:when test="${sessionScope.username == null && sessionScope.admin == null}">
                        <a class="btn" href="login.jsp">Login</a>
                    </c:when>
                    <c:otherwise>
                        <a class="btn"
                           href="logout">Logout</a>
                    </c:otherwise>
                </c:choose>
            </li>
   <%--         <li>
                <c:if test="${sessionScope.username == null && sessionScope.admin == null}">
                    <a class="btn"
                       href="signup.jsp">Singup</a>
                </c:if>
            </li>
--%>
            <c:if test="${sessionScope.username != null}">
                <form action="user" method="post">
                    <button type="submit"
                            style="margin-right:5px;margin-top: 15px"
                            class="btn btn-primary btn-sm myButton">${sessionScope.username}</button>
                    <input type="hidden"
                           value="${sessionScope.username}"
                           name="username"/>
                </form>
            </c:if>


        </ul>
    </div>
</nav>
