<%@ page import="model.BoardDAO" %>
<%@ page import="model.BoardBean" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

  <%
    request.setCharacterEncoding("utf-8");

    String numStr = request.getParameter("num");
    int num = Integer.parseInt(numStr);

    BoardDAO bdao = new BoardDAO();
    BoardBean bean = bdao.getOneBoard(num);
  %>

<center>
  <h2>게시글 보기</h2>
  <table style="width: 600px; border: black solid 1px; background-color: aqua">
    <tr style="height: 40px">
      <td style="text-align: center; width: 120px; border: black solid 1px;">글번호</td>
      <td style="text-align: center; width: 180px; border: black solid 1px;"><%=bean.getNumber()%></td>
      <td style="text-align: center; width: 120px; border: black solid 1px;">조회수</td>
      <td style="text-align: center; width: 180px; border: black solid 1px;"><%=bean.getReadCount()%></td>
    </tr>
    <tr style="height: 40px">
      <td style="text-align: center; width: 120px; border: black solid 1px;">작성자</td>
      <td style="text-align: center; width: 180px; border: black solid 1px;"><%=bean.getWriter()%></td>
      <td style="text-align: center; width: 120px; border: black solid 1px;">작성일</td>
      <td style="text-align: center; width: 180px; border: black solid 1px;"><%=bean.getRegDate()%></td>
    </tr>
    <tr style="height: 40px">
      <td style="text-align: center; width: 120px; border: black solid 1px;">이메일</td>
      <td style="text-align: center; border: black solid 1px;" colspan="3"><%=bean.getEmail()%></td>
    </tr>
    <tr style="height: 40px">
      <td style="text-align: center; width: 120px; border: black solid 1px;">제목</td>
      <td style="text-align: center; border: black solid 1px;" colspan="3"><%=bean.getSubject()%></td>
    </tr>
    <tr style="height: 80px">
      <td style="text-align: center; width: 120px; border: black solid 1px;">글내용</td>
      <td style="text-align: center; border: black solid 1px;" colspan="3"><%=bean.getContent()%></td>
    </tr>
    <tr style="height: 40px">
      <td style="text-align: center;" colspan="4">
        <label>
          <input type="button" value="답글쓰기"
                 onclick="location.href='BoardReWriteForm.jsp?num=<%=bean.getNumber()%>&ref=<%=bean.getRef()%>&reStep=<%=bean.getReStep()%>&reLevel=<%=bean.getReLevel()%>'"/>
          <input type="button" value="수정하기"
                 onclick="location.href='BoardUpdateForm.jsp?num=<%=bean.getNumber()%>'"/>
          <input type="button" value="삭제하기"
                 onclick="location.href='BoardDeleteForm.jsp?num=<%=bean.getNumber()%>'"/>
          <input type="button" value="목록보기"
                 onclick="location.href='BoardList.jsp'"/>
        </label>
      </td>
    </tr>
  </table>
</center>

</body>
</html>
