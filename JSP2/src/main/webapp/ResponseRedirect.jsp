<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h2>ResponseRedirect.jsp 페이지 입니다.</h2>

<%
  request.setCharacterEncoding("utf-8");

  String id = request.getParameter("id");
%>
<h3> 아이디 = <%=id%> </h3>
</body>
</html>
