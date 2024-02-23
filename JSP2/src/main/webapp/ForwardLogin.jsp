<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
  <center>
    <form action="ResponseProc.jsp" method="post">
    <table style="width: 400px; border: black solid 1px">
      <tr style="height: 50px">
        <td style="text-align: center; width: 150px"> 아이디 </td>
        <td style="width: 250px"><input type="text" name="id"></td>
      </tr>
      <tr style="height: 50px">
        <td style="text-align: center; width: 150px"> 패스워드 </td>
        <td style="width: 250px"><input type="password" name="pass"></td>
      </tr>
      <tr style="height: 50px">
        <td style="text-align: center; border: black solid 1px" colspan="2">
          <input type="submit" value="로그인"> &nbsp;&nbsp; <input type="reset" value="취소">
        </td>
      </tr>
    </table>
    </form>
  </center>
</body>
</html>
