<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<html>
<head>
    <title>Title</title>
  <style>
    div {
      text-align: center;
    }

    table {
      width: 500px;
      border-collapse: collapse; /* 테이블 테두리가 겹치도록 설정 */
      margin: auto; /* 가운데 정렬을 위해 추가 */
    }

    td, th {
      border: 1px solid black; /* 각 셀에 선을 추가 */
      padding: 8px; /* 셀 안에 여백 추가 */
      text-align: center;
    }

    input[type="text"], input[type="password"], input[type="email"], input[type="tel"] {
      width: 300px; /* 입력 필드 너비 조정 */
      padding: 5px; /* 입력 필드 여백 추가 */
    }
  </style>
</head>
<body>
  <div>
    <h2> 회원 정보 보기</h2>

    <%
      // post 방식으로 데이터가 넘어올때 한글이 깨질 위험이 있다.
      request.setCharacterEncoding("utf-8");

      // 각종 사용자로부터 넘어온 데이터를 저장해준다.
      String id = request.getParameter("id");
      String pass1 = request.getParameter("pass1");
      String pass2 = request.getParameter("pass2");
      String email = request.getParameter("email");
      String tel = request.getParameter("tel");

      // 배열타입으로 받아야 한다.
      String[] hobby = request.getParameterValues("hobby");

      String job = request.getParameter("job");
      String age = request.getParameter("age");
      String info = request.getParameter("info");

      if(!pass1.equals(pass2)){
    %>
        <script type="text/javascript">
          alert("비밀번호가 동일하지 않습니다."); //경고창
          history.go(-1); // 이전 페이지로 이동
        </script>
    <%
      }
    %>

    <table>
      <tr>
        <td>아이디</td>
        <td>
          <%=id%>
        </td>
      </tr>
      <tr>
        <td>이메일</td>
        <td>
          <label>
            <%=email%>
          </label>
        </td>
      </tr>
      <tr>
        <td>전화번호</td>
        <td>
          <%=tel%>
        </td>
      </tr>
      <tr>
        <td>관심분야</td>
        <td>
          <%
            for (String h : hobby){
              out.write(h+" ");
            }
          %>
        </td>
      </tr>
      <tr>
        <td>직업</td>
        <td>
          <%=job%>
        </td>
      </tr>
      <tr>
        <td>연령</td>
        <td>
          <%=age%>
        </td>
      </tr>
      <tr>
        <td>하고싶은말</td>
        <td>
          <%=info%>
        </td>
      </tr>
    </table>
  </div>
</body>
</html>
