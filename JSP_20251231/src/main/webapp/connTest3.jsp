<%--
  Created by IntelliJ IDEA.
  User: it
  Date: 25. 12. 31.
  Time: 오전 11:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@ page import="java.sql.*" %>

<%@ page import="jin.jsp_20251231.JDBConnect" %>
<html>
<head>
    <title>application 내장 객체를 사용한 DB 접속</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-sRIl4kxILFvY47J16cr9ZwB07vP4J8+LH7qKQnuqkuIAvNWLzeN8tE5YBujZqJLB" crossorigin="anonymous">

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-FKyoEForCGlyvwx9Hj09JcYn3nv7wiPVlz7YYwJrWVcXK/BmnVDxM+D2scQbITxI"
            crossorigin="anonymous"></script>

</head>
<body>

<div class="container mt-5">
    <h3 class="text-center">web.xml을 사용하여 DB 연결</h3>

    <div>
        <%
            String dbDriver = application.getInitParameter("MySqlDriver");
            String dbUrl = application.getInitParameter("MySqlUrl");
            String dbOpt1 = application.getInitParameter("MySqlOpt1");
            String dbOpt2 = application.getInitParameter("MySqlOpt2");
            String dbUser = application.getInitParameter("MySqlUser");
            String dbPass = application.getInitParameter("MySqlPass");

            dbUrl += "?" + dbOpt1 + "&" + dbOpt2;

            JDBConnect jdbConn = new JDBConnect(dbDriver, dbUrl, dbUser, dbPass);

            try {
                String sql = "SELECT * FROM board";

                jdbConn.stmt = jdbConn.conn.createStatement();
                jdbConn.rs = jdbConn.stmt.executeQuery(sql);

                while (jdbConn.rs.next()) {
                    out.println("<p>글 제목 : " + jdbConn.rs.getString("title")+ "</p>");
                }
            }
            catch (SQLException e) {
                out.println("데이터를 조회 중 오류가 발생했습니다.<br>");
                out.println("SQLException : " + e.getMessage());
            }
            finally {
                jdbConn.close();
            }
        %>
    </div>

    <hr>

    <div>
        <h3 class="text-center">application 내장 객체를 매개변수로 전달하여 DB 연결</h3>
        <%
            // JSP의 내장 객체인 application을 JDBConnect 클래스의 생성자 매개변수로 전달
            JDBConnect jdbConn2 = new JDBConnect(application);

            try {
                String sql = "SELECT * FROM board";

                jdbConn2.stmt = jdbConn2.conn.createStatement();
                jdbConn2.rs = jdbConn2.stmt.executeQuery(sql);

                while (jdbConn2.rs.next()) {
                    out.println("<p>글 제목 : " + jdbConn2.rs.getString("title") + "</p>");
                }
            }
            catch (SQLException e) {
                out.println("데이터 조회 중 오류가 발생했습니다.<br>");
                out.println("SQLException : " + e.getMessage());
            }
            finally {
                jdbConn2.close();
            }
        %>



    </div>
</div>

</body>
</html>
