<%@ page import="model.MemberDAO" %>
<%@ page import="java.util.Vector" %>
<%@ page import="model.MemberBean" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

  <%-- 1. DB에서 모든 회원의 정보를 가져온다 --%>
  <%
    MemberDAO memberDAO = new MemberDAO();

    // 회원들의 정보가 얼마나 저장되어 있는지 모르기때문에 가변길이인 Vector 를 사용
    Vector<MemberBean> vec = memberDAO.allSelectMember();
  %>

  <%-- 2. 테이블 태그를 이용해서 회원들의 정보를 출력 --%>
  <center>
    <h2> 모든 회원 보기 </h2>
    <table style="width: 800px; border: black solid 1px">
      <tr style="height: 50px; border: black solid 1px">
        <td style="width: 150px; text-align: center; border: black solid 1px">아이디
        </td>
        <td style="width: 250px; text-align: center; border: black solid 1px">이메일
        </td>
        <td style="width: 200px; text-align: center; border: black solid 1px">전화번호
        </td>
        <td style="width: 200px; text-align: center; border: black solid 1px">취미
        </td>
      </tr>
      <%
        for (int i = 0; i < vec.size(); i++) {
          MemberBean bean = vec.get(i);
      %>

      <tr style="height: 50px; border: black solid 1px">
        <td style="width: 150px; text-align: center; border: black solid 1px">
          <a href="MemberInfo.jsp?id=<%=bean.getId()%>"> <%=bean.getId()%> </a>
        </td>
        <td style="width: 150px; text-align: center; border: black solid 1px"><%=bean.getEmail()%>
        </td>
        <td style="width: 150px; text-align: center; border: black solid 1px"><%=bean.getTel()%>
        </td>
        <td style="width: 150px; text-align: center; border: black solid 1px"><%=bean.getHobby()%>
        </td>
      </tr>
      <%
        }
      %>
    </table>
  </center>

</body>
</html>
