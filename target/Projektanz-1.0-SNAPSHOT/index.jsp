<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="kova" uri="kova/tlds" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <script src="js/index.js"></script>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="shortcut icon" type="image/x-icon" href="img/favicon.ico"/>
    <title>Kova shop</title>

    <!-- Bootstrap core CSS -->
    <%--   <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
   --%>
    <!-- Custom styles for this template -->
    <link href="css/shop-homepage.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="css/bs4.pop.css">
    <style>
        /* body {
             background-image: url('img/glory.jpg');
         }*/
        .col-lg-9 .mb-4 .card {
            background-color: #f7f7f7 !important;
        }

        p#navbarSupportedContent {
            font-family: 'Comfortaa', display, sans-serif !important;
            color: #95a5a6;
            line-height: 70px;
            text-decoration: line-through;
            font-weight: 700 !important;
            text-shadow: rgba(0, 0, 0, 0.3) 0px 1px 1px;
        }
    </style>
</head>

<body>

<!-- Navigation -->

<kova:navbar></kova:navbar>
<!-- Page Content -->
<div class="container">

    <div class="row">
        <div class="col-lg-3">

            <%-- <h1 class="my-4"></h1>--%>
            <%--         <div class="list-group">
                         <a  href="#" class="list-group-item ">Graphic cards</a>
                         <a href="http://localhost:8085/Projektanz_war_exploded/viewCategory?idCategory=2" class="list-group-item">Processors</a>
                         <a href="http://localhost:8085/Projektanz_war_exploded/viewCategory?idCategory=3" class="list-group-item">Motherboards</a>
                         <a href="http://localhost:8085/Projektanz_war_exploded/viewCategory?idCategory=4" class="list-group-item">Power supply</a>
                         <a href="http://localhost:8085/Projektanz_war_exploded/viewCategory?idCategory=5" class="list-group-item">RAM</a>

                     </div>--%>

        </div>
        <!-- /.col-lg-3 -->

        <div class="col-lg-9">

            <p class="nav-link" id="navbarSupportedContent" href="#" style="font-size: 43px;letter-spacing: 0.228em;font-weight: 600;font-style: normal; margin-left: 27%;/*! text-align: end; */">
                </i>
                KOVA SHOP
            <a href="product?idProduct=3"></a>
            </p>

            <div id="carouselExampleIndicators" class="carousel slide my-4" data-ride="carousel">
                <ol class="carousel-indicators">
                    <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
                    <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
                    <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
                </ol>
                <div class="carousel-inner" role="listbox">
                    <div class="carousel-item active">
                        <img class="d-block img-fluid" src="img/master.jpg" alt="First slide">
                    </div>
                    <div class="carousel-item">
                        <img class="d-block img-fluid" src="img/nvdia.png" alt="Second slide">
                    </div>
                    <div class="carousel-item">
                        <img class="d-block img-fluid" src="img/banner.jpg" alt="Third slide">
                    </div>
                </div>
                <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                    <span class="sr-only">Previous</span>
                </a>
                <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                    <span class="sr-only">Next</span>
                </a>
            </div>

            <div class="row" id="data">

                <c:forEach items="${products}" var="item" begin="0" end="18" step="3">
                    <kova:test product="${item}"></kova:test>
                </c:forEach>

            </div>
            <!-- /.row -->

        </div>
        <!-- /.col-lg-9 -->

    </div>
    <!-- /.row -->

</div>
<!-- /.container -->

<!-- Footer -->
<footer class="py-5 bg-dark">
    <div class="container">
        <p class="m-0 text-center text-white">Copyright &copy; KOVA SHOP 2020</p>
    </div>
    <!-- /.container -->
</footer>

<!-- Bootstrap core JavaScript -->
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<script src="js/index.js" type="text/javascript"></script>
<%--<script type='text/javascript'>

    (function()
    {
        if( window.localStorage )
        {
            if( !localStorage.getItem( 'firstLoad' ) )
            {
                localStorage[ 'firstLoad' ] = true;
                window.location.reload();
            }

            else
                localStorage.removeItem( 'firstLoad' );
        }
    })();

</script>--%>
</body>

</html>
