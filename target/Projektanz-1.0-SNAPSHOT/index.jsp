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
      <%--  <c:forEach items="${products}" var="item">
            <li><kova:products
                    product="${item}"></kova:products></li>
            <hr>
        </c:forEach>--%>
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

             <%--   <div class="col-lg-4 col-md-6 mb-4">
                    <div class="card h-100">
                        <a href="#"><img class="card-img-top" src="img/gigabyte1070ti.jpg" alt=""></a>
                        <div class="card-body" id="gpu">
                            <h4 class="card-title">
                                <a href="#" style="text-decoration: none" class="text-info" data-toggle="collapse" data-target="#1">Gigabyte GTX 1070 ti</a>
                                <div id="1" class="collapse">
                                    <form class="form-add" action="addBag" method="post">
                                        <input type="hidden" name="idProduct" value="1"/>
                                        <button type="submit" class="btn btn-info btn-add">Add to cart</button>
                                    </form>
                                </div>
                            </h4>
                            <h5>3000,00 kn</h5>
                            <p class="card-text">
                                -Brand new Gigabyte 1070 ti graphic card-</p>
                        </div>
                        <div class="card-footer">
                            <small class="text-muted">&#9733; &#9733; &#9733; &#9733; &#9734;</small>
                        </div>
                    </div>
                </div>

                <div class="col-lg-4 col-md-6 mb-4">
                    <div class="card h-100">
                        <a href="#"><img class="card-img-top" src="img/gigabyte1080ti.jpg" alt=""></a>
                        <div class="card-body">
                            <h4 class="card-title">
                                <a href="#"&lt;%&ndash;http://localhost:8085/Projektanz_war_exploded/product?idProduct=2&ndash;%&gt; style="text-decoration: none" class="text-info" data-toggle="collapse"
                                   data-target="#2"> Gigabyte GTX 1080 ti</a>
                                <div id="2" class="collapse">
                                    <form class="form-add" action="addBag" method="post">
                                        <input type="hidden" name="idProduct" value="2"/>
                                        <button type="submit" class="btn btn-info btn-add">Add to cart</button>
                                    </form>
                                </div>
                            </h4>
                            <h5>3500,00 kn</h5>
                            <p class="card-text">-Brand new Gigabyte 1080 ti graphic card-</p>
                        </div>
                        <div class="card-footer">
                            <small class="text-muted">&#9733; &#9733; &#9733; &#9733; &#9734;</small>
                        </div>
                    </div>
                </div>

                <div class="col-lg-4 col-md-6 mb-4">
                    <div class="card h-100">
                        <a href="#"><img class="card-img-top" src="img/gigabyte2070ti.jpg" alt=""></a>
                        <div class="card-body">
                            <h4 class="card-title">
                                <a href="#"&lt;%&ndash;http://localhost:8085/Projektanz_war_exploded/product?idProduct=3&ndash;%&gt; style="text-decoration: none" class="text-info" data-toggle="collapse"
                                   data-target="#3">Gigabyte
                                    GTX 2070 ti</a>
                                <div class="collapse" id="3">
                                    <form class="form-add" action="addBag" method="post">
                                        <input type="hidden" name="idProduct" value="3"/>
                                        <button type="submit" class="btn btn-info btn-add">Add to cart</button>
                                    </form>
                                </div>
                            </h4>
                            <h5>5000,00 kn</h5>
                            <p class="card-text">-Brand new Gigabyte 2070 ti graphic card-</p>
                            <div class="card-footer">
                                <small class="text-muted">&#9733; &#9733; &#9733; &#9733; &#9734;</small>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6 mb-4">
                    <div class="card h-100">
                        <a href="#"><img class="card-img-top" src="img/i79700k.jpg" alt=""></a>
                        <div class="card-body">
                            <h4 class="card-title">
                                <a href="&lt;%&ndash;http://localhost:8085/Projektanz_war_exploded/product?idProduct=6&ndash;%&gt;" style="text-decoration: none" class="text-info" data-toggle="collapse"
                                   data-target="#4">Intel i7 9700k</a>
                                <div id="4" class="collapse">
                                    <form class="form-add" action="addBag" method="post">
                                        <input type="hidden" name="idProduct" value="6"/>
                                        <button type="submit" class="btn btn-info btn-add">Add to cart</button>
                                    </form>
                                </div>
                            </h4>
                            <h5>3500,00 kn</h5>
                            <p class="card-text">-Brand new Intel i7 9700k processor-</p>
                        </div>
                        <div class="card-footer">
                            <small class="text-muted">&#9733; &#9733; &#9733; &#9733; &#9734;</small>
                        </div>
                    </div>
                </div>

                <div class="col-lg-4 col-md-6 mb-4">
                    <div class="card h-100">
                        <a href="#"><img class="card-img-top" src="img/ax370.png" alt=""></a>
                        <div class="card-body">
                            <h4 class="card-title">
                                <a href="#"&lt;%&ndash;http://localhost:8085/Projektanz_war_exploded/product?idProduct=7&ndash;%&gt; style="text-decoration: none" class="text-info" data-toggle="collapse"
                                   data-target="#5">ASUS AX370-GamingG3</a>
                                <div id="5" class="collapse">
                                    <form class="form-add" action="addBag" method="post">
                                        <input type="hidden" name="idProduct" value="7"/>
                                        <button type="submit" class="btn btn-info btn-add">Add to cart</button>
                                    </form>
                                </div>
                            </h4>
                            <h5>3000,00 kn</h5>
                            <p class="card-text">-Brand new Gigabyte AX370-GamingG3 motherboard-</p>
                        </div>
                        <div class="card-footer">
                            <small class="text-muted">&#9733; &#9733; &#9733; &#9733; &#9734;</small>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6 mb-4">
                    <div class="card h-100">
                        <a href="#"><img class="card-img-top" src="img/kingston32gb.jpg" alt=""></a>
                        <div class="card-body" id="ram">
                            <h4 class="card-title">
                                <a href="#"&lt;%&ndash;http://localhost:8085/Projektanz_war_exploded/product?idProduct=9&ndash;%&gt; style="text-decoration: none" class="text-info" data-toggle="collapse"
                                   data-target="#6">HyperX Predator</a>
                                <div id="6" class="collapse">
                                    <form class="form-add" action="addBag" method="post">
                                        <input type="hidden" name="idProduct" value="9"/>
                                        <button type="submit" class="btn btn-info btn-add" id="mydialog">Add to cart</button>
                                    </form>
                                </div>
                            </h4>
                            <h5>1700,00 kn</h5>
                            <p class="card-text">-Brand new Kingston HyperX Predator|32GB|DDR4 RAM </p>
                        </div>
                        <div class="card-footer">
                            <small class="text-muted">&#9733; &#9733; &#9733; &#9733; &#9734;</small>
                        </div>
                    </div>
                </div>--%>
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
<script type='text/javascript'>

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

</script>
</body>

</html>
