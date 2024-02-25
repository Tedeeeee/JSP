<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
  session.setAttribute("id", null);
  // 즉시 연결을 해제하는 방법중 하나
  session.setMaxInactiveInterval(0);

  response.sendRedirect("SessionMain.jsp");
%>

</body>
</html>
