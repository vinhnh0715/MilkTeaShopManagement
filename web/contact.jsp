<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <title>Zay Shop - Contact</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Load map styles -->
    <link rel="stylesheet" href="https://unpkg.com/leaflet@1.7.1/dist/leaflet.css" integrity="sha512-xodZBNTC5n17Xt2atTPuE1HxjVMSvLVW9ocqUKLsCC5CXdbqCmblAshOMAS6/keqq/sMZMZ19scR4PsZChSR7A==" crossorigin="" />
</head>

<body>
    <!-- Header -->
    <jsp:include page="header.jsp"></jsp:include>
    <!-- Close Header -->
    <!-- Start Content Page -->
    <div class="container-fluid bg-light py-5">
        <div class="col-md-6 m-auto text-center">
            <h1 class="h1"><b>Liên hệ</b></h1>
            <p>R&B Tea Việt Nam</p>
            <p>Số ĐKKD: 41A8043251, cấp 31/01/2018</p>
            <p>MST: 3601836796</p>
            <p>Hotline: 0898.222.633</p>
            <p>Địa chỉ: 84 Nguyễn Thái Học, Quận 1.</p>
        </div>
    </div>

    <!-- Start Map -->
    <div id="mapid" style="width: 100%; height: 300px;"></div>
    <script src="https://unpkg.com/leaflet@1.7.1/dist/leaflet.js" integrity="sha512-XQoYMqMTK8LvdxXYG3nZ448hOEQiglfqkJs1NOQV44cWnUrBc8PkAOcXy20w0vlaXaVUearIOBhiXZ5V3ynxwA==" crossorigin=""></script>
    <script>
        var mymap = L.map('mapid').setView([10.7670706,106.6959448,17], 13);

        L.tileLayer('https://api.mapbox.com/styles/v1/{id}/tiles/{z}/{x}/{y}?access_token=pk.eyJ1IjoibWFwYm94IiwiYSI6ImNpejY4NXVycTA2emYycXBndHRqcmZ3N3gifQ.rJcFIG214AriISLbB6B5aw', {
            maxZoom: 20,
            id: 'mapbox/streets-v11',
            tileSize: 512,
            zoomOffset: -1
        }).addTo(mymap);

        L.marker([10.7670706,106.6959448,17]).addTo(mymap)
            .bindPopup("Cửa hàng trà sữa <b>R&B</b>").openPopup();

        mymap.scrollWheelZoom.disable();
        mymap.touchZoom.disable();
    </script>
    <!-- End Map -->
    </br>
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