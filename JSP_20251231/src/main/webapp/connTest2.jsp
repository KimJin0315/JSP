<%--
  Created by IntelliJ IDEA.
  User: it
  Date: 25. 12. 31.
  Time: 오전 10:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.sql.*" %>

<%@ page import="jin.jsp_20251231.JDBConnect" %>
<html>
<head>
    <title>Java class를 이용한 DB 접속</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-sRIl4kxILFvY47J16cr9ZwB07vP4J8+LH7qKQnuqkuIAvNWLzeN8tE5YBujZqJLB" crossorigin="anonymous">

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-FKyoEForCGlyvwx9Hj09JcYn3nv7wiPVlz7YYwJrWVcXK/BmnVDxM+D2scQbITxI"
            crossorigin="anonymous"></script>

</head>
<body>

<div class="container mt-5">
    <h3>Java Class를 이용하여 DB 연결 1</h3>

    <%
        JDBConnect jdbConn = new JDBConnect();

        try {
            String sql = "SELECT * FROM board";

            jdbConn.stmt = jdbConn.conn.createStatement();
            jdbConn.rs = jdbConn.stmt.executeQuery(sql);

            while (jdbConn.rs.next()) {
                out.println("<p>" + jdbConn.rs.getString("title") + "</p>");
            }
        }
        catch (SQLException e) {
            out.println("데이터 조회 중 오류가 발생하였습니다.<br");
            out.println("SQLException : " + e.getMessage());
        }
        finally {
            jdbConn.close();
        }
    %>
</div>

</body>
</html>
