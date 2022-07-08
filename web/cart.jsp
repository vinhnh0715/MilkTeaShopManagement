<%-- 
    Document   : cart
    Created on : Jul 7, 2022, 8:16:06 PM
    Author     : Viktor-Nitro5
--%>

<%@page import="java.util.List"%>
<%@page import="milktea.tea.TeaDTO"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cart - R&B</title>
    </head>
    <!-- Header -->
    <jsp:include page="header.jsp"></jsp:include>
        <!-- Close Header -->
        <body>
        <%
            String error = (String) request.getAttribute("ERROR");
            if (error == null) {
                error = "";
            }
        %>
        <h1 style="color: red"><%=error%></h1>

        <%
            List<TeaDTO> listError = (List<TeaDTO>) request.getAttribute("LIST_ERROR");
            if (listError != null) {
        %>
        <h4 style="color: red;">Sorry for the inconvenience!!!</h4>
        <%
            for (TeaDTO teaError : listError) {
        %>
        <p style="color: red;"><%=teaError.getName()%> just have <%=teaError.getQuantity()%> products left in stock!</p>
        <%
                }
            }
        %>
        <section class="h-100" style="background-color: #eee;">
            <div class="container h-100 py-5">
                <div class="row d-flex justify-content-center align-items-center h-100">
                    <div class="col-10">

                        <div class="d-flex justify-content-between align-items-center mb-4">
                            <h3 class="fw-normal mb-0 text-black">Shopping Cart</h3>
                        </div>
                        <table border="1">
                            <thead>
                                <tr>
                                    <th>No</th>
                                    <th>ID</th>
                                    <th>Name</th>
                                    <th>Price</th>
                                    <th>Quantity</th>
                                    <th>Total</th>
                                    <th>Remove</th>
                                    <th>Edit</th>
                                </tr>
                            </thead>
                            <tbody>
                                <c:set var="total" value="${0}" scope="page"/>
                                <c:forEach var="item" varStatus="counter" items="${sessionScope.CART.cart.values()}">
                                    <c:set var="total" value="${pageScope.total + item.quantity*item.price}" scope="page"/>

                                <form action="MainController">
                                    <tr>
                                        <td>${counter.count}</td>
                                        <td><input type="text" name="id" value="${item.productID}" readonly/></td>
                                        <td>${item.name}</td>
                                        <td>${item.price}</td>
                                        <td>
                                            <input type="number" name="quantity" value="${item.quantity}" min="1"/>
                                        </td>
                                        <td>${item.quantity*item.price} $</td>
                                        <td>
                                            <input type="submit" name="action" value="Remove"/>
                                        </td>
                                        <!--Edit here-->
                                        <td>
                                            <input type="submit" name="action" value="Edit"/>
                                        </td>
                                    </tr>
                                </form>
                            </c:forEach> 
                            </tbody>
                        </table>
                        <h1>Total: ${pageScope.total} $</h1>
                        <div class="card">
                            <div class="card-body">
                                <!--                                <button type="button" class="btn btn-warning btn-block btn-lg">Checkout</button>-->
                                <a href="MainController?action=Checkout">CheckOut</a>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
        </section>
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
