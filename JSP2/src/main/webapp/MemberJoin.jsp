<%--
  Created by IntelliJ IDEA.
  User: gksmf
  Date: 2024-02-24
  Time: AM 11:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>


<center>
    <h2>회원가입</h2>
    <form action="MemberJoinProc.jsp" method="post">
        <table style="width: 500px; border: black solid 1px">
            <tr style="height: 50px; border: black solid 1px">
                <td style="width: 150px; text-align: center">아이디</td>
                <td style="width: 350px; text-align: center">
                    <label>
                        <input type="text" name="id" size="40" placeholder="아이디를 입력해주세요">
                    </label>
                </td>
            </tr>
            <tr style="height: 50px; border: black solid 1px">
                <td style="width: 150px; text-align: center">패스워드</td>
                <td style="width: 350px; text-align: center">
                    <label>
                        <input type="password" name="pass1" size="40" placeholder="비밀번호를 입력해주세요">
                    </label>
                </td>
            </tr>
            <tr style="height: 50px; border: black solid 1px">
                <td style="width: 150px; text-align: center">이메일</td>
                <td style="width: 350px; text-align: center">
                    <label>
                        <input type="email" name="email" size="40" placeholder="이메일을 입력해주세요">
                    </label>
                </td>
            </tr>
            <tr style="height: 50px; border: black solid 1px">
                <td style="width: 150px; text-align: center">전화번호</td>
                <td style="width: 350px; text-align: center">
                    <label>
                        <input type="tel" name="tel" size="40" placeholder="전화번호를 입력해주세요">
                    </label>
                </td>
            </tr>
            <tr style="height: 50px; border: black solid 1px">
                <td style="width: 150px; text-align: center">주소</td>
                <td style="width: 350px; text-align: center">
                    <label>
                        <input type="text" name="address" size="40" placeholder="주소를 입력해주세요">
                    </label>
                </td>
            </tr>
            <tr style="height: 50px; border: black solid 1px">
                <td style="width: 150px; text-align: center" colspan="2">
                    <label>
                        <input type="submit" value="회원가입"/>
                    </label>
                </td>
            </tr>
        </table>
    </form>
</center>

</body>
</html>
