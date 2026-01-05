<%--
  Created by IntelliJ IDEA.
  User: it
  Date: 25. 12. 26.
  Time: 오전 11:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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

<div class = "container mt - 5">
  <h2>1. 로그인 폼</h2>
  <%
    String loginErr = request.getParameter("loginErr");
    if (loginErr != null) {
      out.println("로그인 실패");
    }
  %>

  <form action="responseLogin.jsp" method="post">
    <div class = "mt-3">
      <label for="user-id" class="form-label">아이디 : </label>
      <input type="text" class="form-control" id="user-id" name="userId">
    </div>
    <div class="mt-3">
      <label for="user-pwd" class="form-label">비밀번호 : </label>
      <input type="text" class="form-control" id="user-pwd" name="userPw">
    </div>
    <div class="mt-3">
      <button type = "submit" class="btn btn-primary">로그인</button>
    </div>
  </form>

  <br>
  <hr>
  <br>

  <h2>2. HTTP 응답 헤더 설정하기</h2>
  <form action="responseHeader.jsp" method="get">
    <div class = "mt-3">
      <label for="add-date" class="form-label">날짜 형식 : </label>
      <input type="text" class="form-control" id="add-date" name="addDate" value="2025-12-26 11:16">
    </div>
    <div class="mt-3">
      <label for="add-int" class="form-label">숫자 형식 : </label>
      <input type="text" class="form-control" id="add-int" name="addInt" value="8282">
    </div>
    <div class="mt-3">
      <label for="add-str" class="form-control">문자 형식 : </label>
      <input type="text" class="form-control" id="add-str" name="addStr" value="아이유">
    </div>
    <div class="mt-3">
      <button type="submit" class="btn btn-primary" >응답 헤더 설정 &  출력</button>
    </div>
  </form>
</div>

</body>
</html>
