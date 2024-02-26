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

<jsp:useBean id="boardbean" class="model.BoardBean">
  <jsp:setProperty name="boardbean" property="*"/>
</jsp:useBean>

<%
  BoardDAO bdao = new BoardDAO();

  bdao.reWriteBoard(boardbean);

  response.sendRedirect("BoardList.jsp");
%>

</body>
</html>
