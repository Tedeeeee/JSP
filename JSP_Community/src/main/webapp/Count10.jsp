<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h2>1부터 10까지의 숫자를 화면에 표시한다.</h2>

<% for (int i = 1; i <= 10; i++) { %>
    <%=i%><br/>
<% } %>


</body>
</html>
