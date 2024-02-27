<%@ page import="model.BoardDAO" %>
<%@ page import="model.BoardBean" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

  <%
    int num = Integer.parseInt(request.getParameter("num"));

    BoardDAO bdao = new BoardDAO();
    BoardBean bean = bdao.getOneUpdateBoard(num);
  %>
  <center>
    <h2>게시글 삭제</h2>
  <form action="BoardDeleteProc.jsp" method="post">
    <table style="width: 600px; border: black solid 1px; background-color: deepskyblue">
      <tr style="height: 40px">
        <td style="border: black solid 1px; width: 120px; text-align: center">작성자</td>
        <td style="border: black solid 1px; width: 180px; text-align: center"><%=bean.getWriter()%>></td>
        <td style="border: black solid 1px; width: 120px; text-align: center">작성일</td>
        <td style="border: black solid 1px; width: 180px; text-align: center"><%=bean.getRegDate()%>></td>
      </tr>
      <tr style="height: 40px">
        <td style="border: black solid 1px; width: 120px; text-align: center">제목</td>
        <td style="border: black solid 1px; text-align: center" colspan="3"><%=bean.getSubject()%></td>
      </tr>
      <tr style="height: 40px">
        <td style="border: black solid 1px; width: 120px; text-align: center">패스워드</td>
        <td style="border: black solid 1px; text-align: center" colspan="3">
          <label>
            <input type="password" name="password" size="40"/>
          </label>
        </td>
      </tr>
      <tr style="height: 40px">
        <td style="border: black solid 1px; text-align: center" colspan="4">
          <label>
            <input type="hidden" name="num" value="<%=num%>"/>
            <input type="submit" value="글삭제하기"/> &nbsp;&nbsp;
            <input type="button" onclick="location.href='BoardList.jsp'" value="글목록보기"/>
          </label>
        </td>
      </tr>
    </table>
  </form>
</center>

</body>
</html>
