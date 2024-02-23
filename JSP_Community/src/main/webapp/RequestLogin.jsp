<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>로그인페이지</title>
</head>
<body>

<div style="text-align: center;">
  <h2> 로그인 페이지 </h2>
</div>
  <form action="RequestLoginProc.jsp" method="post" style="align-content: center">
    <table style="width: 400px; border: 1px">
      <tr style="height: 60px">
        <td style="align-content: center; width: 150px">아이디</td>
        <td style="text-align: left; width: 250px">
          <input type="text" name="id"/>
        </td>
      </tr>
      <tr style="height: 60px">
        <td style="align-content: center; width: 150px">패스워드</td>
        <td style="text-align: left; width: 250px">
          <input type="password" name="pass"/>
        </td>
      </tr>
      <tr style="height: 60px">
        <td colspan="2" style="align-content: center">
          <input type="submit" value="전송">
        </td>
      </tr>
    </table>
  </form>

</body>
</html>
