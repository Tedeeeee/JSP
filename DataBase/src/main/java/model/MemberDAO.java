package model;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;
import java.sql.*;
import java.util.Vector;

// DB랑 직접적으로 연결하고 select, insert, update, delete 작업(DDL)을 실행하는 클래스
public class MemberDAO {

    String jdbcUrl = "jdbc:mysql://localhost:3306/";
    String dbId = "root";
    String dbPass = "1234";

    // DB접근하는 설정
    Connection connection;

    // DB쿼리를 실행
    PreparedStatement pstmt;

    // DB베이스의 테이블의 결과를 리턴받아 자바에 저장
    ResultSet rs;

    // 데이터 베이스에 접근할 수 있도록 도와주는 메소드
    public void getCon() {

        try {
            Class.forName("com.mysql.jdbc.Driver");
            connection = DriverManager.getConnection(jdbcUrl, dbId, dbPass);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void insertMember(MemberBean member) {
        try {
            getCon();
            String sql = "insert into jsp.member values (?,?,?,?,?,?,?,?)";
            pstmt = connection.prepareStatement(sql);

            pstmt.setString(1, member.getId());
            pstmt.setString(2, member.getPass1());
            pstmt.setString(3, member.getEmail());
            pstmt.setString(4, member.getTel());
            pstmt.setString(5, member.getHobby());
            pstmt.setString(6, member.getJob());
            pstmt.setString(7, member.getAge());
            pstmt.setString(8, member.getInfo());

            pstmt.executeUpdate();

            connection.close();

        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public Vector<MemberBean> allSelectMember() {
        // 가변길이로 데이터를 저장
        Vector<MemberBean> v = new Vector<>();

        try {
            getCon();

            String sql = "select * from jsp.member";

            // 쿼리 실행
            pstmt = connection.prepareStatement(sql);

            // 결과를 return 해서 받아온다.
            rs = pstmt.executeQuery();

            // rs로 받은 쿼리문의 결과를 for으로 받는다.
            while (rs.next()) {
                MemberBean mb = new MemberBean();
                mb.setId(rs.getString(1));
                mb.setPass1(rs.getString(2));
                mb.setEmail(rs.getString(3));
                mb.setTel(rs.getString(4));
                mb.setHobby(rs.getString(5));
                mb.setJob(rs.getString(6));
                mb.setAge(rs.getString(7));
                mb.setInfo(rs.getString(8));

                // 가져온 데이터를 MemberBean 에 넣고 해당 값을 가변객체인 Vector 에 넣기
                v.add(mb);
            }

            connection.close();
        } catch (Exception e) {
            e.printStackTrace();
        }

        // 저장된 벡터를 return
        return v;
    }

    public MemberBean oneSelectMember(String id) {
        MemberBean m = new MemberBean();

        try {

            getCon();

            String sql = "select * from jsp.member where id=?";

            pstmt = connection.prepareStatement(sql);

            pstmt.setString(1, id);

            rs = pstmt.executeQuery();

            if (rs.next()) {
                m.setId(rs.getString(1));
                m.setPass1(rs.getString(2));
                m.setEmail(rs.getString(3));
                m.setTel(rs.getString(4));
                m.setHobby(rs.getString(5));
                m.setJob(rs.getString(6));
                m.setAge(rs.getString(7));
                m.setInfo(rs.getString(8));
            }

            connection.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return m;
    }

    public String getPass(String id) {
        String pass = "";

        try {

            getCon();

            String sql = "select pass1 from jsp.member where id = ?";
            pstmt = connection.prepareStatement(sql);

            pstmt.setString(1, id);

            rs = pstmt.executeQuery();

            if (rs.next()) {
                pass = rs.getString(1);
            }

            connection.close();
        } catch (Exception e) {
            e.printStackTrace();
        }

        return pass;
    }

    public void updateMember(MemberBean memberBean) {

        try {
            getCon();

            String sql = "update jsp.member set email=?, tel=? where id =?";
            pstmt = connection.prepareStatement(sql);

            pstmt.setString(1, memberBean.getEmail());
            pstmt.setString(2, memberBean.getTel());
            pstmt.setString(3, memberBean.getId());

            // 성공 아니면 실패 1 or 0
            pstmt.executeUpdate();

            connection.close();

        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void deleteMember(String id) {
        try {
            getCon();

            String sql = "delete From jsp.member where id=?";
            pstmt = connection.prepareStatement(sql);

            pstmt.setString(1, id);

            pstmt.executeUpdate();

            connection.close();

        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
