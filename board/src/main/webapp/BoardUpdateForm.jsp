<%@ page import="model.BoardBean" %>
<%@ page import="model.BoardDAO" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<center>
    <h2>게시글 수정</h2>
    <%
        // 해당 게시글 번호를 통해 게시글을 수정
        int num = Integer.parseInt(request.getParameter("num").trim());

        // 하나의 게시글에 대한 정보를 리턴
        BoardDAO bdao = new BoardDAO();
        BoardBean bean = bdao.getOneUpdateBoard(num);
    %>
    <form action="BoardUpdateProc.jsp" method="post">
        <table style="width: 600px; border: black solid 1px; background-color: deepskyblue">
            <tr style="height: 40px">
                <td style="border: black solid 1px; width: 120px; text-align: center">작성자</td>
                <td style="width: 180px; text-align: center; border: black solid 1px"><%=bean.getWriter()%></td>
                <td style="border: black solid 1px; width: 120px; text-align: center">작성일</td>
                <td style="width: 180px; text-align: center; border: black solid 1px"><%=bean.getRegDate()%></td>
            </tr>
            <tr style="height: 40px">
                <td style="width: 120px; text-align: center; border: black solid 1px">제목</td>
                <td style="width: 480px; text-align: left; border: black solid 1px" colspan="3"> &nbsp;
                    <label>
                        <input type="text" name="subject" value="<%=bean.getSubject()%>" size="60"/>
                    </label>
                </td>
            </tr>
            <tr style="height: 40px">
                <td style="width: 120px; text-align: center; border: black solid 1px">패스워드</td>
                <td style="width: 480px; text-align: left; border: black solid 1px" colspan="3"> &nbsp;
                    <label>
                        <input type="password" name="password" size="60"/>
                    </label>
                </td>
            </tr>
            <tr style="height: 40px">
                <td style="width: 120px; text-align: center; border: black solid 1px">내용</td>
                <td style="width: 480px; text-align: left; border: black solid 1px" colspan="3"> &nbsp;
                    <label>
                        <textarea rows="10" cols="60" name="content" style="text-align: left"><%=bean.getContent()%></textarea>
                    </label>
                </td>
            </tr>
            <tr style="height: 40px">
                <td colspan="4" style="text-align: center">
                    <label>
                        <input type="hidden" name="number" value="<%=num%>"/>
                        <input type="submit" value="글수정"/> &nbsp;&nbsp;
                        <input type="button" onclick="location.href='BoardList.jsp'" value="전체글 보기"/>
                    </label>
                </td>
            </tr>
        </table>
    </form>
</center>
</body>
</html>
