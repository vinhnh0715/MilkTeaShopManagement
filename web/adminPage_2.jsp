<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html dir="ltr" lang="en">

    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <!-- Tell the browser to be responsive to screen width -->
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Admin Page - R&B</title>
        <!-- Custom CSS -->
        <link href="assets/css/style.min.css" rel="stylesheet">
        <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
        <![endif]-->
    </head>

    <body>

        <jsp:include page="header.jsp"></jsp:include>
            <nav class="navbar navbar-dark bg-primary">
                <div class="container text-light">
                    <div class="w-100 d-flex justify-content-between">
                        <div>
                            <a href="MainController?action=ManageUsers" style="color: white;text-decoration: none"><i class="fa fa-user" aria-hidden="true"></i><b> Manage Users</b></a>
                        </div>
                        <div>
                            <a href="MainController?action=ManageProducts"style="color: white;text-decoration: none"><i class="fa fa-table" aria-hidden="true"></i><b> Manage Products</b></a>
                        </div>
                    </div>
                </div>
            </nav>

            <div class="page-wrapper">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-sm-12">
                            <div class="white-box">
                                <c:if test="${sessionScope.LOGIN_USER == null || sessionScope.LOGIN_USER.roleID ne 'AD'}">
                                        <c:redirect url="login.jsp"></c:redirect>
                                    </c:if>
                                <h3 class="box-title">Manage Products</h3>
                            ${requestScope.ERROR}
                            <div class="table-responsive d-inline-flex">
                                <table class="table text-nowrap">
                                    <thead>
                                        <tr>
                                            <th class="border-top-0">Product ID</th>
                                            <th class="border-top-0">Name</th>
                                            <th class="border-top-0">Price</th>
                                            <th class="border-top-0">Quantity</th>
                                            <th class="border-top-0">Category ID</th>
                                            <th class="border-top-0">Product IMG</th>
                                            <th class="border-top-0">Description</th>
                                            <th class="border-top-0">Edit</th>
                                            <th class="border-top-0">Delete</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <c:forEach var="tea"  items="${LIST_TEA}">
                                        <form action="MainController">
                                            <tr>
                                                <td><input type="text" name="productID" value="${tea.productID}"/></td>
                                                <td><input type="text" name="name" value="${tea.name}"/></td>
                                                <td><input type="text" name="price" value="${tea.price}"/></td>
                                                <td><input type="text" name="quantity" value="${tea.quantity}"/></td>
                                                <td><input type="text" name="categoryID" value="${tea.categoryID}"/></td>
                                                <td><input type="text" name="productIMG" value="${tea.productIMG}"/></td>
                                                <td><input type="text" name="description" value="${tea.description}"/></td>
                                                <td>
                                                    <input type="submit" name="action" value="EditProduct"/>
                                                </td>
                                                <td>
                                                    <c:url var="deleteLink" value="MainController">
                                                        <c:param name="action" value="DeleteUser"></c:param>
                                                        <c:param name="productID" value="${tea.productID}"></c:param>
                                                    </c:url>
                                                    <a href="MainController?action=DeleteProduct&productID=${tea.productID}" style="text-decoration: none">Delete</a>
                                                </td>
                                            </tr>
                                        </form>
                                    </c:forEach>
                                    </tbody>
                                </table>

                            </div>
                            <div class="container mt-3">
                                <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#myModal">Add Product</button>
                            </div>

                            <!-- The Modal -->
                            <div class="modal" id="myModal">
                                <div class="modal-dialog">
                                    <div class="modal-content">

                                        <!-- Modal Header -->
                                        <div class="modal-header">
                                            <h4 class="modal-title">Add Product</h4>
                                            <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
                                        </div>

                                        <!-- Modal body -->
                                        <div class="modal-body">
                                            <form action="MainController" method="GET">
                                                <div class="mb-3 mt-4">
                                                    <label for="productID" class="form-label">Product ID</label>
                                                    <input type="text" class="form-control" id="productID" name="productID">
                                                </div>

                                                <div class="mb-3 mt-4">
                                                    <label for="name" class="form-label">Name</label>
                                                    <input type="text" class="form-control" id="name" name="name">
                                                </div>

                                                <div class="mb-3">
                                                    <label for="price" class="form-label">Price</label>
                                                    <input type="number" min="0" class="form-control" id="price" name="price">
                                                </div>

                                                <div class="mb-3">
                                                    <label for="quantity" class="form-label">Quantity</label>
                                                    <input type="number" min="0" max="999" class="form-control" id="quantity" name="quantity">
                                                </div>

                                                <div class="mb-3">
                                                    <label for="categoryID" class="form-label">Category ID</label>
                                                    <input type="number" min="1" max="4" value="1" class="form-control" id="categoryID"  name="categoryID">
                                                </div>
                                                <div class="mb-3 mt-4">
                                                    <label for="productIMG" class="form-label">Product IMG</label>
                                                    <input type="text" class="form-control" id="productIMG" name="productIMG">
                                                </div>

                                                <div class="mb-3 mt-4">
                                                    <label for="description" class="form-label">Description</label>
                                                    <input type="text" class="form-control" id="description" name="description">
                                                </div>
                                                <input type="submit" name="action" value="AddProduct" />
                                                <!--                                <button type="submit" name="action" value="AddProduct" class="btn btn-light mt-3">Add Product</button>-->
                                            </form>
                                        </div>

                                        <!-- Modal footer -->
                                        <div class="modal-footer">
                                            <button type="button" class="btn btn-danger" data-bs-dismiss="modal">Close</button>
                                        </div>

                                    </div>
                                </div>
                            </div>
                            <!-- End of modal-->
                        </div>

                    </div>
                </div>
            </div>

            <footer class="footer text-center"><a style="text-decoration: none" href="https://centraltea.vn/">Copyright 2022 &copy; Central Tea</a></footer>

        </div>

        <script src="assets/plugins/bower_components/jquery/dist/jquery.min.js"></script>
        <!-- Bootstrap tether Core JavaScript -->
        <script src="assets/bootstrap/dist/js/bootstrap.bundle.min.js"></script>
        <script src="assets/js/app-style-switcher.js"></script>
        <!--Wave Effects -->
        <script src="assets/js/waves.js"></script>
        <!--Menu sidebar -->
        <script src="assets/js/sidebarmenu.js"></script>
        <!--Custom JavaScript -->
        <script src="assets/js/customAD.js"></script>
    </body>
</html>