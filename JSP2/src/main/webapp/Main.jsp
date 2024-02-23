<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
  <center>
    <table style="border: black solid 1px; width: 800px">
      <%-- Top --%>
      <tr style="height: 150px; border: black solid 1px;">
        <td style="text-align: center; border: black solid 1px;" colspan="2">
          <jsp:include page="Top.jsp">
            <jsp:param name="id" value="aaa"/>
          </jsp:include>
        </td>
      </tr>

      <%-- Left --%>
      <tr style="height: 400px">
        <td style="text-align: center; width: 200px; border: black solid 1px;">
          <jsp:include page="Left.jsp"/>
        </td>

      <%-- Center --%>
        <td style="text-align: center; width: 600px; border: black solid 1px;">
          <jsp:include page="Center.jsp"/>
        </td>
      </tr>

      <%-- Top --%>
      <tr style="height: 100px">
        <td style="text-align: center; border: black solid 1px;" colspan="2">
          <jsp:include page="Bottom.jsp"/>
        </td>
      </tr>
    </table>
  </center>
</body>
</html>
