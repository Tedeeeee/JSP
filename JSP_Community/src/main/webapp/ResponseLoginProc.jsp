<%--
  Created by IntelliJ IDEA.
  User: gksmf
  Date: 2024-02-22
  Time: PM 9:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <%
        request.setCharacterEncoding("utf-8");

        // 임의적으로 id 와 pass 를 설정
        String dbId = "aaaa";
        String dbPass = "1234";

        // 사용자로부터 넘어온 데이터를 입력받기
        String id = request.getParameter("id");
        String pass = request.getParameter("pass");

        if (dbId.equals(id) && dbPass.equals(pass)) {
            // 로그인이 완료되면 메인페이지로 전송
            response.sendRedirect("ResponseMain.jsp?id="+id);
        } else {
    %>
            <script type="text/javascript">
                alert("아이디와 비밀번호가 일치하지 않습니다.");
                history.go(-1);
            </script>
    <%}%>
</body>
</html>
