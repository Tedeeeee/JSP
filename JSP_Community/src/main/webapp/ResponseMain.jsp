<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
  <%
    request.setCharacterEncoding("utf-8");
  %>

<h2> <%=request.getParameter("id")%> 님 반갑습니다.</h2>
</body>
</html>
