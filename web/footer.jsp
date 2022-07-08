<%-- 
    Document   : footer
    Created on : Jun 13, 2022, 5:37:12 PM
    Author     : Viktor-Nitro5
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
    <footer class="bg-dark" id="tempaltemo_footer">
        <div class="container">
            <div class="row">

                <div class="col-md-4 pt-5">
                    <h2 class="h2 text-success border-bottom pb-3 border-light logo">R&B Tea</h2>
                    <ul class="list-unstyled text-light footer-link-list">
                        <li>
                            <i class="fas fa-map-marker-alt fa-fw"></i>
                            84 Nguyễn Thái Học, Quận 1
                        </li>
                        <li>
                            <i class="fa fa-phone fa-fw"></i>
                            <a class="text-decoration-none" href="tel:010-020-0340">0898-222-633</a>
                        </li>
                        <li>
                            <i class="fa fa-envelope fa-fw"></i>
                            <a class="text-decoration-none" href="mailto:rbteavn@gmail.com">rbteavn@gmail.com</a>
                        </li>
                    </ul>
                </div>

                <div class="col-md-4 pt-5">
                    <h2 class="h2 text-light border-bottom pb-3 border-light">Các sản phẩm</h2>
                    <ul class="list-unstyled text-light footer-link-list">
                        <li><a class="text-decoration-none" href="CategoryController?cid=1">Trà trái cây</a></li>
                        <li><a class="text-decoration-none" href="CategoryController?cid=2">Trà sữa tươi</a></li>
                        <li><a class="text-decoration-none" href="CategoryController?cid=3">Trà sữa</a></li>
                        <li><a class="text-decoration-none" href="CategoryController?cid=4">Trà cream</a></li>
                    </ul>
                </div>

                <div class="col-md-4 pt-5">
                    <h2 class="h2 text-light border-bottom pb-3 border-light">Navigation</h2>
                    <ul class="list-unstyled text-light footer-link-list">
                        <li><a class="text-decoration-none" href="index.jsp">Trang chủ</a></li>
                        <li><a class="text-decoration-none" href="http://localhost:8080/MilkTeaShopManagement/about.jsp">Về chúng tôi</a></li>
                        <li><a class="text-decoration-none" href="http://localhost:8080/MilkTeaShopManagement/contact.jsp">Liên hệ</a></li>
                    </ul>
                </div>

            </div>

            <div class="row text-light mb-4">
                <div class="col-12 mb-3">
                    <div class="w-100 my-3 border-top border-light"></div>
                </div>
                <div class="col-auto me-auto">
                    <ul class="list-inline text-left footer-icons">
                        <li class="list-inline-item border border-light rounded-circle text-center">
                            <a class="text-light text-decoration-none" target="_blank" href="https://www.facebook.com/RBteavietnam/"><i class="fab fa-facebook-f fa-lg fa-fw"></i></a>
                        </li>
                        <li class="list-inline-item border border-light rounded-circle text-center">
                            <a class="text-light text-decoration-none" target="_blank" href="https://www.instagram.com/rbteavn"><i class="fab fa-instagram fa-lg fa-fw"></i></a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>

        <div class="w-100 bg-black py-3">
            <div class="container">
                <div class="row pt-2">
                    <div class="col-12">
                        <p class="text-left text-light">
                            Copyright 2022 &copy; Central Tea
                        </p>
                    </div>
                </div>
            </div>
        </div>

    </footer>