<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>로그인페이지</title>
    <style>
        .centered-container {
            text-align: center;
        }

        .login-form {
            width: 400px;
            border: 1px solid black;
            margin: 0 auto; /* 가운데 정렬을 위해 */
        }

        .login-form td {
            height: 60px;
        }

        .login-form input[type="text"],
        .login-form input[type="password"] {
            width: 250px;
        }

        .login-form input[type="submit"] {
            width: 100px;
        }
    </style>
</head>
<body>

<div>
    <h2> 로그인 페이지 </h2>
<form action="ResponseLoginProc.jsp" method="post">
    <table>
        <tr>
            <td>아이디</td>
            <td>
                <label>
                    <input type="text" name="id"/>
                </label>
            </td>
        </tr>
        <tr>
            <td>패스워드</td>
            <td>
                <label>
                    <input type="password" name="pass"/>
                </label>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <input type="submit" value="전송">
            </td>
        </tr>
    </table>
</form>
</div>

</body>
</html>
