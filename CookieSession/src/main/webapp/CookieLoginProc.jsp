<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
  <%
    request.setCharacterEncoding("utf-8");

    String save = request.getParameter("save");
    String id = request.getParameter("id");

    // 쿠키 클래스를 생성
    if (save != null) {
      // 1번 인자 - key 값 ,2번 인자 - value 값
      Cookie cookie = new Cookie("id", id);
      // 쿠키 유효 시간 설정
      cookie.setMaxAge(60*10);

      // 사용자에게 쿠키 값 넘겨준다.
      response.addCookie(cookie);
    }2024-02-25T08:06:05.390Z

    out.write("쿠키 생성 완료");
  %>
</body>
</html>
