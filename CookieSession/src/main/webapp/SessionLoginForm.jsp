<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<center>
  <h2>세션 로그인</h2>
  <form action="SessionLoginProc.jsp" method="post">
    <table style="width: 400px; border: black solid 1px">
      <tr style="height: 50px; border: black solid 1px">
        <td style="width: 150px; border: black solid 1px"> 아이디
        </td>
        <td style="width: 250px; border: black solid 1px">
          <label>
            <input type="text" name="id">
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
