<%--
  Created by IntelliJ IDEA.
  User: it
  Date: 25. 12. 29.
  Time: 오전 11:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.HashMap" %>
<%@ page import="jsp_20251229.jsp_20251229.Person" %>
<%@ page import="java.util.Map" %>

<html>
<head>
    <title>application 영역</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-sRIl4kxILFvY47J16cr9ZwB07vP4J8+LH7qKQnuqkuIAvNWLzeN8tE5YBujZqJLB" crossorigin="anonymous">

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-FKyoEForCGlyvwx9Hj09JcYn3nv7wiPVlz7YYwJrWVcXK/BmnVDxM+D2scQbITxI"
            crossorigin="anonymous"></script>

</head>
<body>

<div class="container mt-5">
    <h2>apllication 영역의 공유</h2>
    <%
        Map<String, Person> maps = new HashMap<>();
        maps.put("actor1", new Person("이수일", 30));
        maps.put("acotr2", new Person("심순애", 28));
        application.setAttribute("maps",maps);
    %>
    application 영역에 속성이 저장되었습니다.

    <a href="applicationResult.jsp" target="_blank" class="btn btn-link">applicationResult</a>
</div>

</body>
</html>
