<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>JSP - Hello World</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-sRIl4kxILFvY47J16cr9ZwB07vP4J8+LH7qKQnuqkuIAvNWLzeN8tE5YBujZqJLB" crossorigin="anonymous">

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-FKyoEForCGlyvwx9Hj09JcYn3nv7wiPVlz7YYwJrWVcXK/BmnVDxM+D2scQbITxI"
            crossorigin="anonymous"></script>
</head>
<body>

<div class="container mt-5 list-group">
    <a href="requestMain.jsp" class="list-group-item">requestMain</a>
    <br>
    <a href="sessionMain.jsp" class="list-group-item">sessionMain</a>
    <br>
    <a href="sessionLocation.jsp" class="list-group-item">sessionLoction</a>
    <br>
    <a href="applicationMain.jsp" class="list-group-item">applicationMain</a>
    <br>
    <a href="applicationResult.jsp" class="list-group-item">applicationResult</a>

</div>

<div class="container mt-5 list-group">
    <h2>쿠키 사용하기</h2>
    <a href="cookieMain.jsp" class="list-group-item">cookieMain</a>
    <br>
    <a href="popupMain_01.jsp" class="list-group-item">popupMain_01</a>
    <br>
    <a href="popupMain.jsp" class="list-group-item">popupMain</a>
    <br>
    <a href="idSaveMain.jsp" class="list-group-item">idSaveMain</a>

</div>

</body>
</html>