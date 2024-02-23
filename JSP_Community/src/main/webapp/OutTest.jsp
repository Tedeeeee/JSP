<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

  <%
    String name = "알리미 어플";
  %>

  스크립트로 표현 <%=name%> 이 화면으로 출력
<p>
  <%
    out.println(name + "이 화면에 출력됩니다");
  %>
</p>
</body>
</html>
