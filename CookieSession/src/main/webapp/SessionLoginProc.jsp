<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<center>
  <h2>세션 로그인 처리 1</h2>
  <%
    request.setCharacterEncoding("utf-8");

    String id = request.getParameter("id");
    String pass = request.getParameter("pass");

    session.setAttribute("id", id);
    session.setAttribute("pass", pass);

    session.setMaxInactiveInterval(60*2);

    response.sendRedirect("SessionMain.jsp");
  %>

</center>
</body>
</html>
