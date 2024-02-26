<%@ page import="model.BoardBean" %>
<%@ page import="model.BoardDAO" %><%--
  Created by IntelliJ IDEA.
  User: gksmf
  Date: 2024-02-25
  Time: PM 7:55
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
%>

<%-- submit 으로 넘어온 데이터를 클래스를 이용해 전부 짝지어 준다. --%>
<jsp:useBean id="board" class="model.BoardBean">
  <jsp:setProperty name="board" property="*"/>
</jsp:useBean>

<%
  BoardDAO dao = new BoardDAO();

  dao.insertBoard(board);

  response.sendRedirect("BoardList.jsp");
%>

</body>
</html>
