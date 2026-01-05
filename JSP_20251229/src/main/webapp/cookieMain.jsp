<%--
  Created by IntelliJ IDEA.
  User: it
  Date: 25. 12. 29.
  Time: 오후 12:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Cookie 사용하기</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-sRIl4kxILFvY47J16cr9ZwB07vP4J8+LH7qKQnuqkuIAvNWLzeN8tE5YBujZqJLB" crossorigin="anonymous">

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-FKyoEForCGlyvwx9Hj09JcYn3nv7wiPVlz7YYwJrWVcXK/BmnVDxM+D2scQbITxI"
            crossorigin="anonymous"></script>

</head>
<body>

<div class="container mt-5">
    <h2>1. 쿠키(Cookie) 설정</h2>
    <%
        Cookie cookie = new Cookie("myCookie", "쿠키맛나요");
        cookie.setPath(request.getContextPath());
        cookie.setMaxAge(3600);
        response.addCookie(cookie);
    %>

    <hr>

    <h2>2. 쿠키 설정 직후 쿠키값 확인하기</h2>
    <%
        Cookie[] cookies = request.getCookies();
        if (cookies != null) {
            for (Cookie c : cookies) {
                String cookieName = c.getName();
                String cookieValue = c.getValue();
                out.print(cookieName + " : " + cookieValue + "<br>");
            }
        }
    %>

    <hr>

    <h2>3. 페이지 이동 후 쿠키값 확인하기</h2>
    <a href="cookieResult.jsp" target="_blank" class="btn btn-link">다음 페이지에서  쿠키값 확인하기</a>
</div>

</body>
</html>
