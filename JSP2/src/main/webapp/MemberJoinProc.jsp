<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<center>
  <h2>회원 정보 보기</h2>
  <%
    request.setCharacterEncoding("utf-8");
  %>

  <%-- request 로 넘어온 데이터를 java 빈즈랑 매핑 시켜주는 useBean --%>
  <jsp:useBean id="member" class="bean.MemberBean">
    <%-- Jsp 내용을 자바빈 클래스 (MemberBean)에 데이터를 매핑 --%>
    <jsp:setProperty name="member" property="*"/>
  </jsp:useBean>

  <h2> 당신의 아이디는 <jsp:getProperty name="member" property="id"/> </h2>
  <h2> 당신의 비밀번호는 <jsp:getProperty name="member" property="pass1"/> </h2>
  <h2> 당신의 이메일은 <jsp:getProperty name="member" property="email"/> </h2>
  <h2> 당신의 주소는 <jsp:getProperty name="member" property="address"/> </h2>
  <h2> 당신의 전화번호는
    <%=member.getTel()%>
  입니다
  </h2>

</center>
</body>
</html>
