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
    <h2> <%=mb.getId()%>의 회원 정보 확인 </h2>
    <table style="width: 400px; border: black solid 1px">
      <tr style="height: 50px; border: black solid 1px">
        <td style="width: 150px; text-align: center; border: black solid 1px">아이디</td>
        <td style="width: 250px; border: black solid 1px"><%=mb.getId()%></td>
      </tr>
      <tr style="height: 50px; border: black solid 1px">
        <td style="width: 150px; text-align: center; border: black solid 1px">이메일</td>
        <td style="width: 250px; border: black solid 1px"><%=mb.getEmail()%></td>
      </tr>
      <tr style="height: 50px; border: black solid 1px">
        <td style="width: 150px; text-align: center; border: black solid 1px">전화번호</td>
        <td style="width: 250px; border: black solid 1px"><%=mb.getTel()%></td>
      </tr>
      <tr style="height: 50px; border: black solid 1px">
        <td style="width: 150px; text-align: center; border: black solid 1px">취미</td>
        <td style="width: 250px; border: black solid 1px"><%=mb.getHobby()%></td>
      </tr>
      <tr style="height: 50px; border: black solid 1px">
        <td style="width: 150px; text-align: center; border: black solid 1px">직업</td>
        <td style="width: 250px; border: black solid 1px"><%=mb.getJob()%></td>
      </tr>
      <tr style="height: 50px; border: black solid 1px">
        <td style="width: 150px; text-align: center; border: black solid 1px">나이</td>
        <td style="width: 250px; border: black solid 1px"><%=mb.getAge()%></td>
      </tr>
      <tr style="height: 50px; border: black solid 1px">
        <td style="width: 150px; text-align: center; border: black solid 1px">정보</td>
        <td style="width: 250px; border: black solid 1px"><%=mb.getInfo()%></td>
      </tr>
      <tr style="height: 50px; border: black solid 1px">
        <td style="text-align: center; border: black solid 1px" colspan="2">
          <button onclick="location.href='MemberUpdateForm.jsp?id=<%=mb.getId()%>'">회원수정</button>
          <button onclick="location.href='MemberDeleteForm.jsp?id=<%=mb.getId()%>'">회원삭제</button>
          <button onclick="location.href='MemberList.jsp'">목록보기</button>
          <button onclick="location.href='MemberJoin.jsp'">회원가입</button>
        </td>
      </tr>
    </table>
  </center>

</body>
</html>
