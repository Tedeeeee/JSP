<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
  <h2>해당 페이지는 로그인 정보가 넘어오는 페이지 입니다.</h2>

<%
  request.setCharacterEncoding("utf-8");

  String id = request.getParameter("id");

%>

<jsp:forward page="ResponseRedirect.jsp"/>
<h3> 아이디 = <%=id%> </h3>

</body>
</html>
