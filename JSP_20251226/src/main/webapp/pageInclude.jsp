<%--
  Created by IntelliJ IDEA.
  User: it
  Date: 25. 12. 26.
  Time: 오후 3:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@ page import="com.example.jsp_20251226.Person" %>

<h4>include 페이지</h4>

<%
    int pInt2 = (int)(pageContext.getAttribute("pageInteger"));
    String pString2 = pageContext.getAttribute("pageString").toString();
    Person pPerson2 = (Person)(pageContext.getAttribute("pagePerson"));
%>

<ul class="list-group">
    <li class="list-group-item">Integer 객체 : <%= pInt2%></li>
    <li class="list-group-item">String 객체 : <%= pageContext.getAttribute("pageString")%></li>
    <li class="list-group-item">Person 객체 : <%= pPerson2.getName()%>, <%= pPerson2.getAge()%></li>

</ul>
