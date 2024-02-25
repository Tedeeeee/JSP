<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<%
  // 사용자의 쿠키 저장소로부터 쿠키값을 읽는다.
  Cookie[] cookies = request.getCookies();
  String id = "";

  if (cookies != null) {
    for (Cookie cookie : cookies) {
      if (cookie.getName().equals("id")) {
        id = cookie.getValue();
        break;
      }
    }
  }
%>

  <center>
    <h2>쿠키 로그인</h2>
    <form action="CookieLoginProc.jsp" method="post">
      <table style="width: 400px; border: black solid 1px">
        <tr style="height: 50px; border: black solid 1px">
          <td style="width: 150px; border: black solid 1px"> 아이디
          </td>
          <td style="width: 250px; border: black solid 1px">
            <label>
              <input type="text" name="id" value="<%=id%>">
            </label>
          </td>
        </tr>
        <tr style="height: 50px; border: black solid 1px">
          <td style="width: 150px; border: black solid 1px"> 패스워드 </td>
          <td style="width: 250px; border: black solid 1px">
            <label>
              <input type="password" name="pass">
            </label>
          </td>
        </tr>
        <tr style="height: 50px; border: black solid 1px">
          <td colspan="2" style="text-align: center; border: black solid 1px">
            <label>
              <input type="checkbox" name="save" value="1"> 아이디 저장
            </label>
          </td>
        </tr>
        <tr style="height: 50px; border: black solid 1px">
          <td colspan="2" style="text-align: center; border: black solid 1px">
            <label>
              <input type="submit" value="로그인"/>
            </label>
          </td>
        </tr>
      </table>
    </form>
  </center>
</body>
</html>
