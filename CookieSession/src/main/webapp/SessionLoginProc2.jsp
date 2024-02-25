<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<center>
  <h2>세션 로그인 처리 2</h2>
  <%
    String id = String.valueOf(session.getAttribute("id"));
    String pass = (String) session.getAttribute("pass");
  %>
  <h2>당신의 아이디는 <%=id%> 입니다.</h2>
  <h2>당신의 비밀번호는 <%=pass%> 입니다.</h2>
</center>
</body>
</html>
