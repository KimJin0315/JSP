<%--
  Created by IntelliJ IDEA.
  User: it
  Date: 25. 12. 26.
  Time: 오후 3:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@ page import="com.example.jsp_20251226.Person" %>

<%
    pageContext.setAttribute("pageInteger", 1000);
    pageContext.setAttribute("pageString", "페이지영역의 문자열");
    pageContext.setAttribute("pagePerson", new Person("아이유", 34));
%>

<html>
<head>
    <title>page 영역</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-sRIl4kxILFvY47J16cr9ZwB07vP4J8+LH7qKQnuqkuIAvNWLzeN8tE5YBujZqJLB" crossorigin="anonymous">

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-FKyoEForCGlyvwx9Hj09JcYn3nv7wiPVlz7YYwJrWVcXK/BmnVDxM+D2scQbITxI"
            crossorigin="anonymous"></script>

</head>
<body>

<div class="container mt-5">
    <h2>page 영역의 속성값 읽기</h2>

    <%
        int pInt = (int)(pageContext.getAttribute("pageInteger"));
        String pString = pageContext.getAttribute("pageString").toString();
        Person pPerson = (Person)(pageContext.getAttribute("pagePerson"));
    %>

    <ul class="list-group">
        <li class="list-group-item">int 객체 : <%= pInt %></li>
        <li class="list-group-item">String 객체 : <%= pString %></li>
        <li class="list-group-item">Person 객체 : <%= pPerson.getName()%>, <%= pPerson.getAge() %></li>
    </ul>

    <hr>

    <h2>include 된 파일에서 page 영역 읽어오기</h2>
    <%@ include file="pageInclude.jsp" %>

    <hr>

    <h2>페이지 이동 후 page 영역 읽어오기</h2>
    <a href="pageLocation.jsp">PageLocation.jsp 바로가기</a>

</div>



</body>
</html>
