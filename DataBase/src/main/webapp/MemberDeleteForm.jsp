<%@ page import="model.MemberDAO" %>
<%@ page import="model.MemberBean" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
  <%
    request.setCharacterEncoding("utf-8");
    String id = request.getParameter("id");
  %>

  <center>
    <h2> <%=id%>의 회원 정보 삭제 하기 </h2>
    <table style="width: 400px; border: black solid 1px">
      <form action="MemberDeleteProc.jsp" method="post">
        <tr style="height: 50px; border: black solid 1px">
          <td style="width: 150px; text-align: center; border: black solid 1px">아이디</td>
          <td style="width: 250px; border: black solid 1px"><%=id%></td>
        </tr>
        <tr style="height: 50px; border: black solid 1px">
          <td style="width: 150px; text-align: center; border: black solid 1px">패스워드</td>
          <td style="width: 250px; border: black solid 1px">
            <label>
              <input type="password" name="pass1"/>
            </label>
          </td>
        </tr>
        <tr style="height: 50px; border: black solid 1px">
          <td style="text-align: center; border: black solid 1px" colspan="2">
            <input type="hidden" name="id" value="<%=id%>"/>
            <input type="submit" value="회원삭제하기"> &nbsp;&nbsp;</form>
            <button onclick="location.href='MemberList.jsp'">회원 전체 보기</button>
          </td>
        </tr>
    </table>
  </center>
</body>
</html>
