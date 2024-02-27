<%@ page import="model.BoardDAO" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
  <%
    request.setCharacterEncoding("utf-8");

    String pass = request.getParameter("password");
    int num = Integer.parseInt(request.getParameter("num"));

    BoardDAO bdao = new BoardDAO();
    String getPass = bdao.getPass(num);

    if (pass.equals(getPass)) {
      bdao.deleteBoard(num);

      response.sendRedirect("BoardList.jsp");
    } else {
  %>
  <script>
    alert("비밀번호가 일치하지 않습니다");
    history.go(-1);
  </script>

  <%}%>
</body>
</html>
