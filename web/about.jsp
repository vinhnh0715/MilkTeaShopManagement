<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <title>Zay Shop - About Page</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
</head>

<body>
    <!-- Header -->
    <jsp:include page="header.jsp"></jsp:include>
    <!-- Close Header -->
    <!-- Start Banner -->
    <section class="bg-success py-5">
        <div class="container">
            <div class="row align-items-center py-5">
                <div class="col-md-8 text-white">
                    <h1>Giới thiệu về R&B Tea</h1>
                    <p>
                       Với mong muốn mang hương vị trà Đài Loan đi khắp thế giới. Rex và Bruce là hai người bạn tốt nghiệp từ trường Đại học Giao Thông Đài Loan từ năm 2004. 
                    </p>
                    <p>
                        RB Tea là tên ghép từ hai chữ cái đầu của Rex và Bruce. Công ty được thành lập từ năm 2006. Đến nay, R&B đã mở rộng kinh doanh trong và ngoài nước và đã có hơn 500 cửa hàng.
                    </p>
                    <p>
                        Chúng tôi kiên trì giữ vững chất lượng sản phẩm để đạt yêu cầu, được sự ủng hộ mạnh mẽ của đội ngũ có hơn 30 năm kinh nghiệm kỹ thuật về trà. 
                        Chúng tôi đã xây dựng nên một hệ thống đào tạo, huấn luyện cấp thế giới và cố gắng đạt tiêu chuẩn tương đồng mỗi cửa hàng.
                    </p>
                </div>
                <div class="col-md-4">
                    <img src="https://centraltea.vn/wp-content/uploads/2022/04/MAP-800x-600-1.png" class="img-fluid" alt="About R&B Tea">
                </div>
            </div>
        </div>
    </section>
    <!-- Close Banner -->

    <!-- Start Section -->
    <section class="container py-5">
        <div class="row text-center pt-5 pb-3">
            <div class="col-lg-6 m-auto">
                <h1 class="h1">Dịch vụ của chúng tôi</h1>
            </div>
        </div>
        <div class="row">

            <div class="col-md-6 col-lg-4 pb-5">
                <div class="h-100 py-5 services-icon-wap shadow">
                    <div class="h1 text-success text-center"><img src="https://centraltea.vn/wp-content/uploads/2022/03/briefcase-line.png" alt="Briefcase"></div>
                    <h2 class="h5 mt-4 text-center">Chất lượng hàng đầu</h2>
                    <p align="center">
                        Đạt tiêu chuẩn an toàn thực phẩm HACCP theo thông số ISO:22000
                    </p>
                </div>
            </div>

            <div class="col-md-6 col-lg-4 pb-5">
                <div class="h-100 py-5 services-icon-wap shadow">
                    <div class="h1 text-success text-center"><img src="https://centraltea.vn/wp-content/uploads/2022/03/lightbulb-line.png" alt="Lightbulb"></div>
                    <h2 class="h5 mt-4 text-center">Không gian hài hòa</h2>
                    <p align="center">
                        Được thiết kế theo chuẩn chuỗi trà hàng đầu thế giới
                    </p>
                </div>
            </div>

            <div class="col-md-6 col-lg-4 pb-5">
                <div class="h-100 py-5 services-icon-wap shadow">
                    <div class="h1 text-success text-center"><img src="https://centraltea.vn/wp-content/uploads/2022/03/service-line.png" alt="Service"></div>
                    <h2 class="h5 mt-4 text-center">Dịch vụ hoàn hảo</h2>
                    <p align="center">
                        Luôn lắng nghe sự góp ý và không ngừng hoàn thiện dịch vụ mỗi ngày.
                    </p>
                </div>
            </div>
        </div>
    </section>
    <!-- End Section -->

    <!-- Start Brands -->
    <section class="bg-light py-5">
        <div class="container">
            <div class="d-flex row align-items-center py-5">
                <div class="col-md-4">
                    <img src="https://centraltea.vn/wp-content/uploads/2022/03/NTH.jpg" class="img-fluid" alt="About R&B Tea">
                </div>
                <div class="col-md-8 text-black">
                    <h1>Triết lý kinh doanh của R&B Tea</h1>
                    <ul>
                        <li>Đưa văn hóa trà khắp thế giới</li>
                        <li>Ưu tiên chất lượng tốt nhất và sạch nhất</li>
                        <li>Tràn đầy nhiệt huyết và chân thành với khách hàng</li>
                        <li>Là người bán trà chuyên nghiệp nhất</li>
                    </ul>
                    
                </div>
                
            </div>
        </div>
    </section>
    <!--End Brands-->


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