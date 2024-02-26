<%@ page import="java.util.Vector" %>
<%@ page import="model.BoardBean" %>
<%@ page import="model.BoardDAO" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
  <%
    // 전체 게시글의 내용을 가져온다.
    BoardDAO bDAO = new BoardDAO();

    Vector<BoardBean> v = bDAO.getAllBoard();
  %>

<center>
  <h2>전체 게시글 보기</h2>
  <table style="width: 700px; border: black solid 1px; background-color: aqua">
    <tr style="height: 40px;">
      <td style="width: 50px; border: black solid 1px; text-align: center">번호</td>
      <td style="width: 320px; border: black solid 1px; text-align: center">제목</td>
      <td style="width: 100px; border: black solid 1px; text-align: center">작성자</td>
      <td style="width: 150px; border: black solid 1px; text-align: center">작성날짜</td>
      <td style="width: 80px; border: black solid 1px; text-align: center">조회수</td>
    </tr>

    <%
      for (int i = 0; i < v.size(); i++) {
        BoardBean bean = v.get(i);
    %>
    <tr style="height: 40px;">
      <td style="width: 50px; border: black solid 1px; text-align: center"><%=i+1%></td>
      <td style="width: 320px; border: black solid 1px; text-align: left"><a href="BoardInfo.jsp?num=<%=bean.getNumber()%>" style="text-decoration: none">
        <%if (bean.getReStep() > 1) {
          for (int j = 0; j < bean.getReStep() - 1; j++) {
        %> &nbsp;&nbsp;

        <%
          }
        }
        %>
        <%=bean.getSubject()%></a> </td>
      <td style="width: 100px; border: black solid 1px; text-align: center"><%=bean.getWriter()%></td>
      <td style="width: 150px; border: black solid 1px; text-align: center"><%=bean.getRegDate()%></td>
      <td style="width: 80px; border: black solid 1px; text-align: center"><%=bean.getReadCount()%></td>
    </tr>
    <%}%>

    <tr style="height: 40px;">
      <td style="text-align: center;  border: black solid 1px;" colspan="5">
        <label>
          <input type="button" value="글쓰기" onclick="location.href='BoardWriteForm.jsp'"/>
        </label>
      </td>
    </tr>

  </table>
</center>
</body>
</html>
