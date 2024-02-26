<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
  request.setCharacterEncoding("utf-8");
%>
  <center>
    <h2>답변글 작성하기</h2>
    <%
      int num = Integer.parseInt(request.getParameter("num"));
      int ref = Integer.parseInt(request.getParameter("ref"));
      int reStep = Integer.parseInt(request.getParameter("reStep"));
      int reLevel = Integer.parseInt(request.getParameter("reLevel"));
    %>
    <form action="BoardReWriteProc.jsp" method="post">
      <table style="width: 600px; background-color: skyblue; border: grey solid 1px;">
        <tr style="height: 40px;">
          <td style="width: 150px; border: grey solid 1px; text-align: center"> 작성자 </td>
          <td style="width: 450px; border: grey solid 1px;">
            <label>
              <input type="text" name="writer" size="60"/>
            </label>
          </td>
        </tr>
        <tr style="height: 40px;">
          <td style="width: 150px; border: grey solid 1px; text-align: center"> 제목 </td>
          <td style="width: 450px; border: grey solid 1px;">
            <label>
              <input type="text" name="subject" value="[답변]" size="60"/>
            </label>
          </td>
        </tr>
        <tr style="height: 40px;">
          <td style="width: 150px; border: grey solid 1px; text-align: center"> 이메일 </td>
          <td style="width: 450px; border: grey solid 1px;">
            <label>
              <input type="email" name="email" size="60"/>
            </label>
          </td>
        </tr>
        <tr style="height: 40px;">
          <td style="width: 150px; border: grey solid 1px; text-align: center"> 비밀번호 </td>
          <td style="width: 450px; border: grey solid 1px;">
            <label>
              <input type="password" name="password" size="60"/>
            </label>
          </td>
        </tr>
        <tr style="height: 40px;">
          <td style="width: 150px; border: grey solid 1px; text-align: center"> 글내용 </td>
          <td style="width: 450px; border: grey solid 1px;">
            <label>
              <textarea rows="10" cols="60" name="content"></textarea>
            </label>
          </td>
        </tr>
        <tr style="height: 40px;">
          <td style="text-align: center; border: grey 1px solid" colspan="2">
            <label>
              <input type="hidden" name="ref" value="<%=ref%>">
              <input type="hidden" name="reStep" value="<%=reStep%>">
              <input type="hidden" name="reLevel" value="<%=reLevel%>">
              <input type="submit" value="작성"> &nbsp;&nbsp;
              <input type="reset" value="취소"> &nbsp;&nbsp;
              <input type="button" onclick="location.href='BoardList.jsp'" value="전체글보기">
            </label>
          </td>
        </tr>
      </table>

    </form>
  </center>
</body>
</html>
