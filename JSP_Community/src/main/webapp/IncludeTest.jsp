
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>Title</title>
</head>
<body>
<center>
    <table style="width: 600px" border="1">
        <%-- Top --%>
        <tr style="height: 150px">
            <td style="width: 600px; text-align: center">
                <%@include file="Top.jsp"%>
            </td>
        </tr>

        <!-- Center -->
        <tr style="height: 400px">
            <td style="width: 600px; text-align: center">
                <img src="img/카메라%20사진.jpg" alt="" style="width: 400px; height: 300px"/>
            </td>
        </tr>

        <!-- Bottom -->
        <tr style="height: 100px">
            <td style="width: 600px; text-align: center">
                <%@include file="Bottom.jsp"%>
            </td>
        </tr>
    </table>
</center>
</body>
</html>
