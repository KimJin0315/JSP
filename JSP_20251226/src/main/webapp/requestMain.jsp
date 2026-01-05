<%@ page import="com.example.jsp_20251226.Person" %><%--
  Created by IntelliJ IDEA.
  User: it
  Date: 25. 12. 26.
  Time: 오전 9:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>내장 객체 -</title>
</head>
<body>
<h2>클라이언트의 요청 매개변수 읽기</h2>
<form action="requestParameter.jsp" method="post">
    아이디 : <input type="text" name="id" value="">
    <br>
    성별 :
    <input type="radio" name="sex" value="man">남자
    <input type="radio" name="sex" value="woman"checked="checked">여자
    <br>
    관심사항 :
    <input type="checkbox" name="favo" value="eco">경제
    <input type="checkbox" name="favo" value="pol" checked="checked">정치
    <input type="checkbox" name="favo" value="ent">연예
    <br>
    자기소개:
    <textarea name="intro" cols="30" rows="4"></textarea>
    <br>
    <input type="submit" value="전송하기">
</form>

<br>
<hr>
<br>

<h2>3. HTTP 요청 헤더 정보 읽기</h2>
<a href="requestHeader.jsp">
    요청 헤더 정보 읽기
</a>

<h2>request 영역의 속성값 읽기</h2>
<%
    Person rPerson = (Person)(request.getAttribute("requestPerson"));
%>
<ul class = list-group>
    <li class = "list-group-item">String 객체 : <%=request.getAttribute("requestString")%></li>
    <li class = "list-group-item">Person 객체 : <%=rPerson.getName()%>, <%=rPerson.getAge()%></li>

</ul>

<hr>

<h2>포워드된 페이지 에서 request 영역 속성값 읽기</h2>

<%--<%--%>
<%--    request.getRequestDispatcher("RequestForward.jsp?paramHan=한글&paramEng=English").forward(request, response);--%>
<%--%>--%>

</body>
</html>
