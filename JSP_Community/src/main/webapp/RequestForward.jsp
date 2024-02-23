<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
  // 사용자의 정보가 정보가 저장되어 있는 객체 : request
  // request 의 getParameter()를 이용해서 사용자의 정보를 추출할 수 있다
  String id = request.getParameter("id");
  String password = request.getParameter("pass");
%>

<h2>
  이곳은 RequestForward 페이지 입니다.<br/>
  당신의 아이디는 "<%=id%>" 이고 당신의 비밀번호는 "<%=password%>" 입니다
</h2>

<a href="RequestForward.jsp"> 다음 페이지 </a>
</body>
</html>
