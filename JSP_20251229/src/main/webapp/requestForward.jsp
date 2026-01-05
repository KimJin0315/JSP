<%--
  Created by IntelliJ IDEA.
  User: it
  Date: 25. 12. 29.
  Time: 오전 10:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="jsp_20251229.jsp_20251229.Person" %>

<html>
<head>
    <title>Title</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-sRIl4kxILFvY47J16cr9ZwB07vP4J8+LH7qKQnuqkuIAvNWLzeN8tE5YBujZqJLB" crossorigin="anonymous">

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-FKyoEForCGlyvwx9Hj09JcYn3nv7wiPVlz7YYwJrWVcXK/BmnVDxM+D2scQbITxI"
            crossorigin="anonymous"></script>

</head>
<body>

<h2>포워드로 전달되 ㄴ페이지</h2>
<h4>RequestMain 파일의 리퀘스트 영역 속성 읽기</h4>
<%
    Person pPerson = (Person)(request.getAttribute("requestPerson"));
%>
<ul class="list-group">
    <li class = "list-group-item">String 객체 : <%=request.getAttribute("requestString")%></li>
    <li class = "list-group-item">Person 객체 : <%= pPerson == null ? "값없음" : pPerson.getName()%>, <%=pPerson == null ? "값없음" : pPerson.getAge()%></li>
</ul>
<h4>매개변수로 전달된 값 출력하기</h4>
<%
    request.setCharacterEncoding("UTF-8");
    out.println(request.getParameter("paramHan"));
    out.println(request.getParameter("paramEng"));
%>


</body>
</html>
