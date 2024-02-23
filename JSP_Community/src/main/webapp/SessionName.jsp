<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h2>세션 네임이 있는 페이지 입니다.</h2>
<%
  Object name1 = session.getAttribute("realName");
%>
<%=name1%> 님 반갑습니다.
</body>
</html>
