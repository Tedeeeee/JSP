<%@ page import="model.MemberDAO" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<%
  request.setCharacterEncoding("utf-8");
%>

<jsp:useBean id="mbean" class="model.MemberBean">
  <jsp:setProperty name="mbean" property="*"/>
</jsp:useBean>

<%
  MemberDAO memberDAO = new MemberDAO();

  // 스트링 타입으로 저장되어 있는 패스워드를 가져온다.
  String pass = memberDAO.getPass(mbean.getId());

  // 수정하기 위해 작성한 패스워드값과 기존 데이터 베이스에서 가져온 패스워드값을 비교한다
  if (mbean.getPass1().equals(pass)) {

    // DB의 내용을 수정하는 로직작성
    memberDAO.deleteMember(mbean.getId());
    response.sendRedirect("MemberList.jsp");

  } else {
%>
<script type="text/javascript">
  alert("패스워드가 맞지 않습니다. 다시 확인해주세요");
  history.go(-1);
</script>
<%
  }
%>


</body>
</html>
