<%--
  Created by IntelliJ IDEA.
  User: it
  Date: 25. 12. 31.
  Time: 오후 4:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@ page import="java.sql.*" %>

<%@ page import="jin.jsp_20251231.DBConnpool" %>

<%
    String userId = request.getParameter("userId");

    String resultMessage = "";

    DBConnpool db = new DBConnpool();

    try {
        String sql = "DELETE FROM member ";
        sql += "WHERE id ='"+ userId + "' ";

        db.stmt = db.conn.createStatement();
        int result = db.stmt.executeUpdate(sql);

        if (result > 0) {
            resultMessage = "사용자 정보가 삭제되었습니다.";
        }
        else {
            resultMessage = "사용자 정보 삭제 중 오류가 발생했습니다.<br>다시 진행해 주세요.";
        }
    }
    catch (SQLException e) {
        resultMessage = "사용자 정보 삭제를 실패했습니다.";
        resultMessage = "SQLException : " + e.getMessage();
    }
    finally {
        db.close();
    }
%>

<html>
<head>
    <title>Statement로 delete</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-sRIl4kxILFvY47J16cr9ZwB07vP4J8+LH7qKQnuqkuIAvNWLzeN8tE5YBujZqJLB" crossorigin="anonymous">

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-FKyoEForCGlyvwx9Hj09JcYn3nv7wiPVlz7YYwJrWVcXK/BmnVDxM+D2scQbITxI"
            crossorigin="anonymous"></script>

</head>
<body>

<div class="container mt-5">
    <h3>Statement로 delete</h3>

    <div>
        <p><%=resultMessage%></p>
    </div>
</div>

</body>
</html>
