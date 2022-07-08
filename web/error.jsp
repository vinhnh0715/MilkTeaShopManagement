<%-- 
    Document   : error
    Created on : Jun 19, 2022, 4:35:14 PM
    Author     : Viktor-Nitro5
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>Error</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
        <style>
            body {
                background-color: #f1f1f1;
            }

            .vertical-center {
                min-height: 100%;
                min-height: 75vh;

                display: flex;
                align-items: center;
            }
        </style>
        
    </head>
    <body>
        <!-- Header -->
        <jsp:include page="header.jsp"></jsp:include>
        <!-- Close Header -->

        <div class="vertical-center">
		<div class="container">
			<div id="notfound" class="text-center ">
				<h1 class="display-1 fw-bold">404</h1>
				<h2>Oops! Page Not Be Found</h2>
				<p>Sorry but the page you are looking for does not exist.</p>
				<a href="index.jsp" class="btn btn-primary">Go Home</a>
			</div>
		</div>
	</div>

        <!-- Footer -->
        <jsp:include page="footer.jsp"></jsp:include>
        <!-- Close Footer -->
    </body>
</html>
