<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<%
    String id = (String) session.getAttribute("id");

    if (id == null) {
        id = "게스트";
    }
%>

<%-- Top --%>
<table style="width: 800px">
    <tr style="height: 100px">
        <%-- 로고 이미지 --%>
        <td colspan="2" style="text-align: center; width: 260px">
            <img src="img/CampingLogo.png" alt="" style="width: 200px; height: 70px">
        </td>
        <td colspan="4" style="text-align: center">
            <font size="10px">낭만 캠핑</font>
        </td>
    </tr>
    <tr style="height: 50px">
        <td style="text-align: center; width: 100px"> 텐트</td>
        <td style="text-align: center; width: 100px"> 의자</td>
        <td style="text-align: center; width: 100px"> 식기</td>
        <td style="text-align: center; width: 100px"> 침낭</td>
        <td style="text-align: center; width: 100px"> 테이블</td>
        <td style="text-align: center; width: 100px"> 화롯대</td>

        <td style="text-align: center; width: 200px">
            <% if (id.equals("게스트")) { %>
            <%=id%> 님 <button onclick="location.href='SessionMain.jsp?center=SessionLoginForm.jsp'">로그인</button>
            <%  } else { %>
            <%=id%> 님 <button onclick="location.href='SessionLogout.jsp'">로그아웃</button>
            <% } %>
        </td>
    </tr>
</table>
</body>
</html>
