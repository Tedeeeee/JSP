<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<h2> 세션 연습 </h2>

  <%
    String name = "shin";

    // 세션을 이용해서 데이터를 유지시키는 방법
    session.setAttribute("realName", name);
    session.setMaxInactiveInterval(10); // 10초동안 세션을 유지

    try{
      int a = 10/0;
    } catch (Exception e) {
      e.printStackTrace();
    }
  %>

  <a href="SessionName.jsp"> 세션네임페이지로 이동 </a>

</body>
</html>
