<%@ page import="java.util.Vector" %>
<%@ page import="model.BoardBean" %>
<%@ page import="model.BoardDAO" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<center>
  <h2>전체 게시글 보기</h2>

  <%-- 게시글 보기에 카운터링을 설정하기 위한 변수를 선언 --%>
  <%
    // 화면에 보일 게시글 갯수 지정
    int pageSize = 10;

    String pageNum = request.getParameter("pageNum");
    if (pageNum == null) {
      pageNum = "1";
    }

    int count = 0; // 전체 글의 갯수를 저장하는 변수
    int number = 0; // 페에지 넘버링 변수

    // 현재 보고자 하는 페이지숫자를 저장
    int currentPage = Integer.parseInt(pageNum);

    BoardDAO bdao = new BoardDAO();

    // 전체글 갯수 리턴
    count = bdao.getAllCount();

    int startRow = (currentPage - 1) * pageSize + 1;

    // 최신글 10개를 기준으로 게시글을 받아온다.
    Vector<BoardBean> v = bdao.getAllBoard(startRow, pageSize);

    // 테이블에 표시할 번호
    number = count - (currentPage - 1) * pageSize;
  %>

  <table style="width: 700px; border: black solid 1px; background-color: aqua">
    <tr style="height: 40px;">
      <td style="text-align: right;  border: black solid 1px;" colspan="5">
        <label>
          <input type="button" value="글쓰기" onclick="location.href='BoardWriteForm.jsp'"/>
        </label>
      </td>
    </tr>

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
      <td style="width: 50px; border: black solid 1px; text-align: center"><%=number--%></td>
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

  </table>
  <p>
    <%
      if (count > 0) {
        int pageCount = count / pageSize + (count % pageSize == 0 ? 0 : 1);

        // 시작 페이지 숫자 설정
        int startPage = 1;
        if (currentPage % 10 != 0) {
          startPage = (int) (currentPage / 10) * 10 + 1;
        } else {
          startPage = ((int) (currentPage / 10) - 1) * 10 + 1;
        }

        int pageBlock = 10;
        int endPage = startPage + pageBlock - 1; // 화면에 보여질 페이지 마지막 숫자

        if (endPage > pageCount) endPage = pageCount;

        if (startPage > 10) {
    %>
    <a href="BoardList.jsp?pageNum=<%=startPage - 10%>"> [이전] </a>
    <%
        }
        for (int i = startPage; i <= endPage; i++) {
    %>
    <a href="BoardList.jsp?pageNum=<%=i%>"> [<%=i%>] </a>
    <%
        }
        if (endPage < pageCount) {
    %>
    <a href="BoardList.jsp?pageNum=<%=startPage + 10%>"> [다음] </a>
    <%
        }
      }
    %>
  </p>
</center>
</body>
</html>
