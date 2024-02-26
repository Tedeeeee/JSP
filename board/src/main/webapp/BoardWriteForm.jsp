<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <center>
        <h2>게시글 작성하기</h2>
        <form action="BoardWriteProc.jsp" method="post">
            <table style="width: 600px; border: grey solid 1px; background-color: cornflowerblue">
                <tr style="height: 40px; text-align: center">
                    <td style="width: 150px;text-align: center; border: black solid 1px;">작성자</td>
                    <td style="width: 450px; border: black solid 1px;">
                        <label>
                            <input type="text" name="writer" size="50">
                        </label>
                    </td>
                </tr>
                <tr style="height: 40px; text-align: center">
                    <td style="width: 150px;text-align: center; border: black solid 1px;">제목</td>
                    <td style="width: 450px; border: black solid 1px;">
                        <label>
                            <input type="text" name="subject" size="50">
                        </label>
                    </td>
                </tr>
                <tr style="height: 40px; text-align: center">
                    <td style="width: 150px;text-align: center; border: black solid 1px;">이메일</td>
                    <td style="width: 450px; border: black solid 1px;">
                        <label>
                            <input type="text" name="email" size="50">
                        </label>
                    </td>
                </tr>
                <tr style="height: 40px; text-align: center">
                    <td style="width: 150px;text-align: center;  border: black solid 1px;">비밀번호</td>
                    <td style="width: 450px; border: black solid 1px;">
                        <label>
                            <input type="password" name="password" size="50">
                        </label>
                    </td>
                </tr>
                <tr style="height: 40px; border: black solid 1px; text-align: center">
                    <td style="width: 150px;text-align: center; border: black solid 1px;">글내용</td>
                    <td style="width: 450px; border: black solid 1px;">
                        <label>
                            <textarea rows="10" cols="53" name="content"></textarea>
                        </label>
                    </td>
                </tr>
                <tr style="height: 40px; text-align: center">
                    <td style="width: 450px; border: black solid 1px;" colspan="2">
                        <label>
                            <input type="submit" value="글등록"> &nbsp;&nbsp;
                            <input type="reset" value="다시작성"> &nbsp;&nbsp;
                            <button onclick="location.href='BoardList.jsp'">전체 게시글 보기</button>
                        </label>
                    </td>
                </tr>
            </table>
        </form>
    </center>
</body>
</html>
