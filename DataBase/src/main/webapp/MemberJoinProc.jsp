<%@ page import="model.MemberDAO" %>
<%@ page import="java.sql.SQLException" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    request.setCharacterEncoding("utf-8");

    // 취미 부분은 별도로 여러개의 데이터를 한줄의 String 타입으로 전환
    String[] hobby = request.getParameterValues("hobby");
    String textHobby = "";

    for (int i = 0; i < hobby.length; i++) {
        textHobby += hobby[i];
        if (!(hobby.length - 1 == i)) {
            textHobby += " ";
        }
    }
%>

<jsp:useBean id="member" class="model.MemberBean">
    <jsp:setProperty name="member" property="*"/>
</jsp:useBean>

<%
    member.setHobby(textHobby);

    MemberDAO memberDAO = new MemberDAO();
    memberDAO.insertMember(member);

    // 회원가입이 완료되면 회원 정보를 보여주는 페이지로 이동
    response.sendRedirect("MemberList.jsp");
%>


</body>
</html>
