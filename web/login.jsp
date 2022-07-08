<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en" >
    <head>
        <meta charset="UTF-8">
        <title>R&B - Login</title>
        <link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/css/bootstrap.min.css'>
        <link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.9.0/css/all.min.css'>
        <link rel="stylesheet" href="./assets/css/style.css">

    </head>

    <body>
        <!-- Header -->
        <jsp:include page="header.jsp"></jsp:include>
            <!-- Close Header -->
            <!-- partial:index.partial.html -->
            <section class="vh-100">
                <div class="container py-5 h-100">
                    <div class="row d-flex justify-content-center align-items-center h-100">
                        <div class="col-12 col-md-8 col-lg-6 col-xl-5">
                            <div class="card shadow-2-strong" style="border-radius: 1rem;">
                                <div class="card-body p-5 text-center">

                                    <h3 class="mb-5">Sign in</h3>
                                    <form action="MainController" method="POST" id="form">
                                        <div class="form-outline mb-4">
                                            <input type="text" name="userID" required="" id="typeEmailX-2" class="form-control form-control-lg"/>
                                            <label class="form-label" for="typeEmailX-2">Username</label>
                                        </div>

                                        <div class="form-outline mb-4">
                                            <input type="password" name="password" required="" id="typePasswordX-2" class="form-control form-control-lg" />
                                            <label class="form-label" for="typePasswordX-2">Password</label>
                                        </div>

                                        <!-- reCaptcha -->
                                        <div class="g-recaptcha" data-sitekey="6LfBHtMgAAAAABXDeRHqcJCbqyxEtOopwuISbDu_"></div>
                                        <!-- End reCaptcha-->
                                        ${requestScope.ERROR}
                                        <div id="error"></div>
                                        <input value="Login" name="action" hidden=""/>
                                        <button class="btn btn-primary btn-lg btn-block" type="submit" value="Submit">Login</button>
                                    </form>
                                    
                                    <hr class="my-4">

                                    <button class="btn btn-lg btn-block btn-primary" style="background-color: #dd4b39;"
                                            onclick="location.href = 'https://accounts.google.com/o/oauth2/auth?scope=email%20profile%20openid&redirect_uri=http://localhost:8080/MilkTeaShopManagement/LoginGoogleController&response_type=code&client_id=1029324976329-9fmdbfg55g2s2bk7s1sklb4qjqbpabgc.apps.googleusercontent.com&approval_prompt=force';"><i class="fab fa-google me-2"></i> Sign in with Google</button>
                                    <hr class="my-4">
                                    <button class="btn btn-lg btn-block btn-primary mb-2" style="background-color: #51666C;" onclick="location.href = 'registration.jsp';">Register a new account</button>

                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <!-- partial -->
            <!-- Footer -->
        <jsp:include page="footer.jsp"></jsp:include>
        <!-- Close Footer -->
        <script src="https://www.google.com/recaptcha/api.js" async defer></script>
        <script>
                        window.onload = function (){
                                let isValid = false;
                                const form = document.getElementById("form");
                                const error = document.getElementById("error");
				
                                form.addEventListener("submit", function (event){
                                        event.preventDefault();
                                        const response = grecaptcha.getResponse();
                                        if (response){
                                                form.submit();
                                        } else {
                                                error.innerHTML = "Please check the reCaptcha box";
                                        }
                                });
                        }
        </script>
    </body>
</html>
