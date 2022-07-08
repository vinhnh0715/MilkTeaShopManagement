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
            <!--Page wrapper -->
            <div class="page-wrapper">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-sm-12">
                            <div class="white-box">
                                <c:if test="${sessionScope.LOGIN_USER == null || sessionScope.LOGIN_USER.roleID ne 'AD'}">
                                        <c:redirect url="login.jsp"></c:redirect>
                                    </c:if>
                                <h3 class="box-title">Manage Users</h3>
                            ${requestScope.ERROR}
                            <div class="table-responsive">
                                <table class="table text-nowrap">
                                    <thead>
                                        <tr>
                                            <th class="border-top-0">User ID</th>
                                            <th class="border-top-0">Full Name</th>
                                            <th class="border-top-0">Email</th>
                                            <th class="border-top-0">Address</th>
                                            <th class="border-top-0">Role ID</th>
                                            <th class="border-top-0">Password</th>
                                            <th class="border-top-0">Update</th>
                                            <th class="border-top-0">Delete</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <c:forEach var="user"  items="${LIST_USER}">
                                        <form action="MainController">
                                            <tr>
                                                <td><input type="text" name="userID" value="${user.userID}" readonly=""/></td>
                                                <td><input type="text" name="fullName" value="${user.fullName}"/></td>
                                                <td><input type="text" name="email" value="${user.email}"/></td>
                                                <td><input type="text" name="address" value="${user.address}"/></td>
                                                <td><input type="text" name="roleID" value="${user.roleID}"/></td>
                                                <td><input type="text" name="password" value="${user.password}" readonly=""/></td>
                                                <td>
                                                    <input type="submit" name="action" value="EditUser"/>
                                                </td>
                                                <td>
                                                    <c:url var="deleteLink" value="MainController">
                                                        <c:param name="action" value="DeleteUser"></c:param>
                                                        <c:param name="userID" value="${user.userID}"></c:param>
                                                    </c:url>
                                                    <a href="MainController?action=DeleteUser&userID=${user.userID}" style="text-decoration: none">Delete</a>
                                                </td>
                                            </tr>
                                        </form>
                                    </c:forEach>
                                    </tbody>
                                </table>
                            </div>
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