<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <title>Product - R&B</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
    </head>

    <body>
        <!-- Header -->
        <jsp:include page="header.jsp"></jsp:include>
            <!-- Close Header -->


            <!-- Start Content -->
            <div class="container py-5">
                <div class="row">
                    <div class="col-lg-3">
                        <h1 class="h2 pb-4">Tất cả</h1>
                        <ul class="list-unstyled templatemo-accordion">
                            <li class="pb-3">
                                <a class="collapsed d-flex justify-content-between h3 text-decoration-none">
                                    Trà sữa
                                    <i class="pull-right fa fa-fw fa-chevron-circle-down mt-1"></i>
                                </a>
                                ${requestScope.MESSAGE}
                                <ul id="collapseThree" class="collapse list-unstyled pl-3">
                                <c:forEach items="${LISTC}" var="o">
                                    <li><a class="text-decoration-none" href="CategoryController?cid=${o.categoryID}">${o.name}</a></li>
                                </c:forEach>
                                </ul>
                            </li>
                        </ul>
                    </div>

                    <div class="col-lg-9">
                        <div class="row">

                            
                            
                    <c:forEach var="o" items="${LIST}">   
                            <div class="col-md-4">            
                                <div class="card mb-4 product-wap rounded-0">
                                    <div class="card rounded-0">
                                        <img class="card-img rounded-0 img-fluid" src="${o.productIMG}">
                                        <div class="card-img-overlay rounded-0 product-overlay d-flex align-items-center justify-content-center">
                                            <a class="btn btn-success text-white mt-2" href="CartController?addToCart=${o.productID}"><i class="fas fa-cart-plus"></i></a>
                                        </div>
                                    </div>
                                    <div class="card-body">
                                        <a href="DetailController?pid=${o.productID}" class="h3 text-decoration-none">${o.name}</a>
                                        <p class="text-center mb-0">${o.price}đ</p>
                                    </div>
                                </div>                              
                            
                        </div>
                    </c:forEach>
                

                    </div>
                </div>

            </div>
        </div>
        <!-- End Content -->
        <!-- Start Footer -->
        <jsp:include page="footer.jsp"></jsp:include>
        <!-- End Footer -->

        <!-- Start Script -->
        <script src="assets/js/jquery-1.11.0.min.js"></script>
        <script src="assets/js/jquery-migrate-1.2.1.min.js"></script>
        <script src="assets/js/bootstrap.bundle.min.js"></script>
        <script src="assets/js/templatemo.js"></script>
        <script src="assets/js/custom.js"></script>
        <!-- End Script -->
    </body>

</html>