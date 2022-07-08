<%-- 
    Document   : newjsp
    Created on : Jun 13, 2022, 5:33:21 PM
    Author     : Viktor-Nitro5
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<link rel="apple-touch-icon" href="https://centraltea.vn/wp-content/uploads/2022/03/cropped-download-244x244.png">
<link rel="shortcut icon" type="image/x-icon" href="https://centraltea.vn/wp-content/uploads/2022/03/cropped-download-244x244.png">

<link rel="stylesheet" href="assets/css/bootstrap.min.css">
<link rel="stylesheet" href="assets/css/templatemo.css">
<link rel="stylesheet" href="assets/css/custom.css">

<!-- Load fonts style after rendering the layout styles -->
<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Roboto:wght@100;200;300;400;500;700;900&display=swap">
<link rel="stylesheet" href="assets/css/fontawesome.min.css">

<!-- Start Top Nav -->
    <nav class="navbar navbar-expand-lg bg-dark navbar-light d-none d-lg-block" id="templatemo_nav_top">
        <div class="container text-light">
            <div class="w-100 d-flex justify-content-between">
                <div>
                    <i class="fa fa-envelope mx-2"></i>
                    <a class="navbar-sm-brand text-light text-decoration-none" href="mailto:rbteavn@gmail.com">rbteavn@gmail.com</a>
                    <i class="fa fa-phone mx-2"></i>
                    <a class="navbar-sm-brand text-light text-decoration-none" href="tel:0898-222-633">0898-222-633</a>
                </div>
                <div>
                    <c:if test="${sessionScope.LOGIN_USER == null}" >
                    <a class="text-light text-decoration-none" href="login.jsp">Login</a>
                    </c:if>
                    <c:if test="${sessionScope.LOGIN_USER != null}" >
                        <a class="text-light text-decoration-none" href="MainController?action=Logout">Logout</a>
                    </c:if>
                </div>
            </div>
        </div>
    </nav>
    <!-- Close Top Nav -->

<nav class="navbar navbar-expand-lg navbar-light shadow">
        <div class="container d-flex justify-content-between align-items-center">

            <a class="navbar-brand text-success logo h1 align-self-center" href="index.jsp">
                R&B
            </a>

            <button class="navbar-toggler border-0" type="button" data-bs-toggle="collapse" data-bs-target="#templatemo_main_nav" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="align-self-center collapse navbar-collapse flex-fill  d-lg-flex justify-content-lg-between" id="templatemo_main_nav">
                <div class="flex-fill">
                    <ul class="nav navbar-nav d-flex justify-content-between mx-lg-auto">
                        <li class="nav-item">
                            <a class="nav-link" href="index.jsp">Trang chủ</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="MainController?action=Product">Cửa hàng</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="about.jsp">Về chúng tôi</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="contact.jsp">Liên hệ</a>
                        </li>
                    </ul>
                </div>
                <div class="navbar align-self-center d-flex">
                    <div class="d-lg-none flex-sm-fill mt-3 mb-4 col-7 col-sm-auto pr-3">
                        <div class="input-group">
                            <input type="text" class="form-control" id="inputMobileSearch" placeholder="Search ...">
                            <div class="input-group-text">
                                <i class="fa fa-fw fa-search"></i>
                            </div>
                        </div>
                    </div>
                    <a class="nav-icon d-none d-lg-inline" href="#" data-bs-toggle="modal" data-bs-target="#templatemo_search">
                        <i class="fa fa-fw fa-search text-dark mr-2"></i>
                    </a>
                    <a class="nav-icon position-relative text-decoration-none" href="cart.jsp">
                        <i class="fa fa-fw fa-cart-arrow-down text-dark mr-1"></i>
                        <span class="position-absolute top-0 left-100 translate-middle badge rounded-pill bg-light text-dark"></span>
                    </a>
                    <!--Button for user page or admin page, else return to login page-->
                    <c:if test="${sessionScope.LOGIN_USER == null}" >
                        <a class="nav-icon position-relative text-decoration-none" href="login.jsp">
                            <i class="fa fa-fw fa-user text-dark mr-3"></i>
                            <span class="position-absolute top-0 left-100 translate-middle badge rounded-pill bg-light text-dark"></span>
                        </a>
                    </c:if>
                    <c:if test="${sessionScope.LOGIN_USER.roleID eq 'US'}" >
                        <a class="nav-icon position-relative text-decoration-none" href="userPage.jsp">
                            <i class="fa fa-fw fa-user text-dark mr-3"></i>
                            <span class="position-absolute top-0 left-100 translate-middle badge rounded-pill bg-light text-dark"></span>
                        </a>
                    </c:if>
                    <c:if test="${sessionScope.LOGIN_USER.roleID eq 'AD'}" >
                        <a class="nav-icon position-relative text-decoration-none" href="adminPage.jsp">
                            <i class="fa fa-fw fa-user text-dark mr-3"></i>
                            <span class="position-absolute top-0 left-100 translate-middle badge rounded-pill bg-light text-dark"></span>
                        </a>
                    </c:if>
                </div>
            </div>
                                
        </div>
    </nav>

    <!-- Modal -->
    <div class="modal fade bg-white" id="templatemo_search" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-lg" role="document">
            <div class="w-100 pt-1 mb-5 text-right">
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <form action="SearchController" method="GET" class="modal-content modal-body border-0 p-0">
                <div class="input-group mb-2">
                    <input name="search_query" type="text" class="form-control" id="inputModalSearch" placeholder="Search ..." value="${search}">
                    <button type="submit" class="input-group-text bg-success text-light">
                        <i class="fa fa-fw fa-search text-white"></i>
                    </button>
                </div>
            </form>
        </div>
    </div>
