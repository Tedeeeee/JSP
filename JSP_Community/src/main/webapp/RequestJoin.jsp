<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="utf-8" %>
<html>
<head>
    <title>Title</title>
    <style>
        /* CSS 스타일 적용 */
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
    <h2>회원가입</h2>
    <form action="RequestJoinProc.jsp" method="post">
        <table>
            <tr>
                <td>아이디</td>
                <td>
                    <label>
                        <input type="text" name="id" size="20" placeholder="아이디를 입력해주세요">
                    </label>
                </td>
            </tr>
            <tr>
                <td>패스워드</td>
                <td>
                    <label>
                        <input type="password" name="pass1" size="20" placeholder="영문과 숫자만 입력해주세요">
                    </label>
                </td>
            </tr>
            <tr>
                <td>패스워드 확인</td>
                <td>
                    <label>
                        <input type="password" name="pass2" size="20">
                    </label>
                </td>
            </tr>
            <tr>
                <td>이메일</td>
                <td>
                    <label>
                        <input type="email" name="email" size="20">
                    </label>
                </td>
            </tr>
            <tr>
                <td>전화번호</td>
                <td>
                    <label>
                        <input type="tel" name="tel" size="20">
                    </label>
                </td>
            </tr>
            <tr>
                <td> 당신의 관심분야 </td>
                <td>
                    <label>
                        <input type="checkbox" name="hobby" value="캠핑"> 캠핑 &nbsp;&nbsp;
                        <input type="checkbox" name="hobby" value="등산"> 등산 &nbsp;&nbsp;
                        <input type="checkbox" name="hobby" value="영화"> 영화 &nbsp;&nbsp;
                        <input type="checkbox" name="hobby" value="독서"> 독서 &nbsp;&nbsp;
                    </label>
                </td>
            </tr>
            <tr>
                <td> 당신의 직업은 </td>
                <td>
                    <label>
                        <select name="job">
                            <option value="교사">교사</option>
                            <option value="변호사">변호사</option>
                            <option value="의사">의사</option>
                            <option value="기술사">기술사</option>
                        </select>
                    </label>
                </td>
            </tr>
            <tr>
                <td> 당신의 연령대는 </td>
                <td>
                    <label>
                        <input type="radio" name="age" value="10대"> 10대 &nbsp;&nbsp;
                        <input type="radio" name="age" value="20대"> 20대 &nbsp;&nbsp;
                        <input type="radio" name="age" value="30대"> 30대 &nbsp;&nbsp;
                        <input type="radio" name="age" value="40대"> 40대 &nbsp;&nbsp;
                    </label>
                </td>
            </tr>
            <tr>
                <td> 하고싶은말 </td>
                <td>
                    <label>
                        <textarea rows="5" cols="40" name="info"></textarea>
                    </label>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <label>
                        <input type="submit" value="회원가입">
                        <input type="reset" value="최소">
                    </label>
                </td>
            </tr>
        </table>
    </form>
</div>

</body>
</html>
