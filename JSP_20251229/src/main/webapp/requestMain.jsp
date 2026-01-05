<%@ page import="jsp_20251229.jsp_20251229.Person"%>
<%--
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

<h2>request 영역의 속성값 삭제하기</h2>
<%
    request.removeAttribute("requestString");
    request.removeAttribute("requestInteger");
%>

<h2>request 영역의 속성값 읽기</h2>
<%
    jsp_20251229.jsp_20251229.Person rPerson = (jsp_20251229.jsp_20251229.Person)(request.getAttribute("requestPerson"));
%>
<ul class = list-group>
    <li class = "list-group-item">String 객체 : <%=request.getAttribute("requestString")%></li>
    <li class = "list-group-item">Person 객체 : <%= rPerson == null ? "값없음" : rPerson.getName()%>, <%=rPerson == null ? "값없음" : rPerson.getAge()%></li>

</ul>

<hr>

<h2>포워드된 페이지 에서 request 영역 속성값 읽기</h2>

<%
    request.getRequestDispatcher("requestForward.jsp?paramHan=한글&paramEng=English").forward(request, response);


//    response.sendRedirect("requestForward.jsp");
%>

</body>
</html>
