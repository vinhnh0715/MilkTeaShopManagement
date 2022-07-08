<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <title>Index - R&B</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
</head>

<body>
    <!-- Header -->
    <jsp:include page="header.jsp"></jsp:include>
    <!-- Close Header -->
    <!-- Start Banner Hero -->
    <div id="template-mo-zay-hero-carousel" class="carousel slide" data-bs-ride="carousel">
        <ol class="carousel-indicators">
            <li data-bs-target="#template-mo-zay-hero-carousel" data-bs-slide-to="0" class="active"></li>
            <li data-bs-target="#template-mo-zay-hero-carousel" data-bs-slide-to="1"></li>
            <li data-bs-target="#template-mo-zay-hero-carousel" data-bs-slide-to="2"></li>
        </ol>
        <div class="carousel-inner">
            <div class="carousel-item active">
                <div class="container">
                    <img src="https://centraltea.vn/wp-content/uploads/2022/04/BANNER-1-1920px-x-800px.jpg" alt="New York" class="d-block" style="width:100%">
                </div>
            </div>
            <div class="carousel-item">
                <div class="container">
                    <img src="https://centraltea.vn/wp-content/uploads/2022/04/BANNER-2-1920px-x-800px.jpg" alt="Chicago" class="d-block" style="width:100%">
                </div>
            </div>
            <div class="carousel-item">
                <div class="container">
                    <img src="https://centraltea.vn/wp-content/uploads/2022/04/BANNER-3-1920px-x-800px.jpg" alt="Los Angeles" class="d-block" style="width:100%">
                </div>
            </div>
        </div>
        <a class="carousel-control-prev text-decoration-none w-auto ps-3" href="#template-mo-zay-hero-carousel" role="button" data-bs-slide="prev">
            <i class="fas fa-chevron-left"></i>
        </a>
        <a class="carousel-control-next text-decoration-none w-auto pe-3" href="#template-mo-zay-hero-carousel" role="button" data-bs-slide="next">
            <i class="fas fa-chevron-right"></i>
        </a>
    </div>
    <!-- End Banner Hero -->


    <!-- Start Categories -->
    <section class="container py-5">
        <div class="row text-center pt-3">
            <div class="col-lg-6 m-auto">
                <h1 class="h1">Các loại trà</h1>
                <p>
                    Bạn hãy lựa chọn ly trà yêu thích với những loại trà hiện có của R&B.
                </p>
            </div>
        </div>
        <div class="row">
            <div class="col-12 col-md-3 p-5 mt-3">
                <a href="CategoryController?cid=1"><img src="https://centraltea.vn/wp-content/uploads/2022/03/THUMBNAIL-LUC-TRA-BUOI-HONG-01.jpg" class="rounded-circle img-fluid border"></a>
                <h5 class="text-center mt-3 mb-3">Trà trái cây</h5>
                <p class="text-center"><a class="btn btn-success" href="CategoryController?cid=1">Go Shop</a></p>
            </div>
            <div class="col-12 col-md-3 p-5 mt-3">
                <a href="CategoryController?cid=2"><img src="https://centraltea.vn/wp-content/uploads/2022/03/THUMBNAIL-TRA-SUA-TUOI-HANH-NHAN-01.jpg" class="rounded-circle img-fluid border"></a>
                <h2 class="h5 text-center mt-3 mb-3">Trà sữa tươi - Sữa tươi</h2>
                <p class="text-center"><a class="btn btn-success" href="CategoryController?cid=2">Go Shop</a></p>
            </div>
            <div class="col-12 col-md-3 p-5 mt-3">
                <a href="CategoryController?cid=3"><img src="https://centraltea.vn/wp-content/uploads/2022/03/hong-luc-tra-sua-cream.jpg" class="rounded-circle img-fluid border"></a>
                <h2 class="h5 text-center mt-3 mb-3">Trà sữa</h2>
                <p class="text-center"><a class="btn btn-success" href="CategoryController?cid=3">Go Shop</a></p>
            </div>
            <div class="col-12 col-md-3 p-5 mt-3">
                <a href="CategoryController?cid=4"><img src="https://centraltea.vn/wp-content/uploads/2022/04/sua-cookies-cream.jpg" class="rounded-circle img-fluid border"></a>
                <h2 class="h5 text-center mt-3 mb-3">Trà cream</h2>
                <p class="text-center"><a class="btn btn-success" href="CategoryController?cid=4">Go Shop</a></p>
            </div>
        </div>
    </section>
    <!-- End Categories -->

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