<%@ page import="model.MemberDAO" %>
<%@ page import="model.MemberBean" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
  String id = request.getParameter("id");
  MemberDAO memberDAO = new MemberDAO();
  MemberBean mb = memberDAO.oneSelectMember(id);
%>
<center>
  <h2> <%=mb.getId()%>의 회원 정보 수정 하기 </h2>
  <table style="width: 400px; border: black solid 1px">
    <form action="MemberUpdateProc.jsp" method="post">
    <tr style="height: 50px; border: black solid 1px">
      <td style="width: 150px; text-align: center; border: black solid 1px">아이디</td>
      <td style="width: 250px; border: black solid 1px"><%=mb.getId()%></td>
    </tr>
    <tr style="height: 50px; border: black solid 1px">
      <td style="width: 150px; text-align: center; border: black solid 1px">이메일</td>
      <td style="width: 250px; border: black solid 1px">
        <label>
          <input type="email" name="email" value="<%=mb.getEmail()%>"/>
        </label>
        </td>
    </tr>
    <tr style="height: 50px; border: black solid 1px">
      <td style="width: 150px; text-align: center; border: black solid 1px">전화번호</td>
      <td style="width: 250px; border: black solid 1px">
        <label>
          <input type="tel" name="tel" value="<%=mb.getTel()%>"/>
        </label>
      </td>
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
        <input type="hidden" name="id" value="<%=mb.getId()%>"/>
        <input type="submit" value="회원수정하기"> &nbsp;&nbsp;</form>
        <button onclick="location.href='MemberList.jsp'">회원 전체 보기</button>
      </td>
    </tr>
  </table>
</center>

</body>
</html>
