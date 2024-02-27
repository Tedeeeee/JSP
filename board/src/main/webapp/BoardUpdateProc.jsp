<%@ page import="model.BoardDAO" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
  request.setCharacterEncoding("utf-8");
%>

<jsp:useBean id="bean" class="model.BoardBean">
  <jsp:setProperty name="bean" property="*"/>
</jsp:useBean>

<%
  BoardDAO bdao = new BoardDAO();

  String pass = bdao.getPass(bean.getNumber());

  if (bean.getPassword().equals(pass)) {
    bdao.updateBoard(bean);

    response.sendRedirect("BoardList.jsp");
  } else {
%>
    <script>
      alert("비밀번호가 맞지 않습니다.")
      history.go(-1);
    </script>
<%  }%>
</body>
</html>
