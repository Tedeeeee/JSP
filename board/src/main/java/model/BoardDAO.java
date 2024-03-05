package model;

import java.sql.*;
import java.util.Vector;

public class BoardDAO {
    private static int seq;
    private static final String jdbcUrl = "jdbc:mysql://localhost:3306/";
    private static final String dbId = "root";
    private static final String dbPass = "1234";

    public static Connection connection;
    public static PreparedStatement pstmt;
    public static ResultSet rs;

    public static void getCon() {
        String jndiName = "jdbc/mysql";
        Connection conn = null;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            connection = DriverManager.getConnection(jdbcUrl, dbId, dbPass);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void insertBoard(BoardBean board) {
        getCon();
        seq++;
        int ref = 0; // 글 그룹을 의미한다.
        int re_step = 1; // 게시글 자체이기 때문에 1
        int re_level = 1; // 위와 이유는 동일하다.
        try{
            String getRef = "select max(ref) from jsp.board";
            pstmt = connection.prepareStatement(getRef);
            rs = pstmt.executeQuery();

            if (rs.next()) {
                ref = rs.getInt(1) + 1;
            }

            String sql = "insert into jsp.board values(?,?,?,?,?,now(),?,?,?,0,?)";
            pstmt = connection.prepareStatement(sql);

            pstmt.setInt(1, seq);
            pstmt.setString(2, board.getWriter());
            pstmt.setString(3, board.getEmail());
            pstmt.setString(4, board.getSubject());
            pstmt.setString(5, board.getPassword());
            pstmt.setInt(6, ref);
            pstmt.setInt(7, re_step);
            pstmt.setInt(8, re_level);
            pstmt.setString(9, board.getContent());

            pstmt.executeUpdate();

            connection.close();

        } catch (Exception e){
            e.printStackTrace();
        }
    }

    public Vector<BoardBean> getAllBoard(int startRow, int pageSize) {
        Vector<BoardBean> v = new Vector<>();
        getCon();

        try {
            String sql = "select * from jsp.board order by ref desc, re_step limit ?, ?";
            pstmt = connection.prepareStatement(sql);

            pstmt.setInt(1, startRow - 1);
            pstmt.setInt(2, pageSize);

            rs = pstmt.executeQuery();

            while (rs.next()) {
                BoardBean bean = new BoardBean();
                bean.setNumber(rs.getInt(1));
                bean.setWriter(rs.getString(2));
                bean.setEmail(rs.getString(3));
                bean.setSubject(rs.getString(4));
                bean.setPassword(rs.getString(5));
                bean.setRegDate(Date.valueOf(rs.getDate(6).toString()));
                bean.setRef(rs.getInt(7));
                bean.setReStep(rs.getInt(8));
                bean.setReLevel(rs.getInt(9));
                bean.setReadCount(rs.getInt(10));
                bean.setContent(rs.getString(11));

                v.add(bean);
            }

            connection.close();

        } catch (Exception e) {
            e.printStackTrace();
        }
        return v;
    }

    public BoardBean getOneBoard(int num) {
        BoardBean bean = new BoardBean();

        try{
            getCon();

            // 조회수 1 올리기
            String readSql = "update jsp.board set readCount = readCount + 1 where number=?";
            pstmt = connection.prepareStatement(readSql);

            pstmt.setInt(1, num);

            pstmt.executeUpdate();

            // 데이터 가져오기
            String sql = "select * from jsp.board where number=?";
            pstmt = connection.prepareStatement(sql);

            pstmt.setInt(1, num);

            rs = pstmt.executeQuery();
            if (rs.next()) {
                bean.setNumber(rs.getInt(1));
                bean.setWriter(rs.getString(2));
                bean.setEmail(rs.getString(3));
                bean.setSubject(rs.getString(4));
                bean.setPassword(rs.getString(5));
                bean.setRegDate(Date.valueOf(rs.getDate(6).toString()));
                bean.setRef(rs.getInt(7));
                bean.setReStep(rs.getInt(8));
                bean.setReLevel(rs.getInt(9));
                bean.setReadCount(rs.getInt(10));
                bean.setContent(rs.getString(11));
            }

            connection.close();

        } catch (Exception e){
            e.printStackTrace();
        }
        return bean;
    }

    public void reWriteBoard(BoardBean bean) {

        seq++;
        int ref = bean.getRef();
        int reStep = bean.getReStep();
        int reLevel = bean.getReLevel();

        try{
            getCon();

            String refUp = "update jsp.board set re_level = board.re_level + 1 where ref=? and re_level > ?";
            pstmt = connection.prepareStatement(refUp);

            pstmt.setInt(1, ref);
            pstmt.setInt(2, reLevel);

            pstmt.executeUpdate();

            String sql = "insert into jsp.board values (?,?,?,?,?,now(),?,?,?,0,?)";
            pstmt = connection.prepareStatement(sql);

            pstmt.setInt(1, seq);
            pstmt.setString(2, bean.getWriter());
            pstmt.setString(3, bean.getEmail());
            pstmt.setString(4, bean.getSubject());
            pstmt.setString(5, bean.getPassword());
            pstmt.setInt(6, ref);
            pstmt.setInt(7, reStep + 1);
            pstmt.setInt(8, reLevel);
            pstmt.setString(9, bean.getContent());

            pstmt.executeUpdate();

            connection.close();

        } catch (Exception e){
            e.printStackTrace();
        }
    }

    public BoardBean getOneUpdateBoard(int num) {
        BoardBean bean = new BoardBean();

        try{
            getCon();

            // 데이터 가져오기
            String sql = "select * from jsp.board where number=?";
            pstmt = connection.prepareStatement(sql);

            pstmt.setInt(1, num);

            rs = pstmt.executeQuery();
            if (rs.next()) {
                bean.setNumber(rs.getInt(1));
                bean.setWriter(rs.getString(2));
                bean.setEmail(rs.getString(3));
                bean.setSubject(rs.getString(4));
                bean.setPassword(rs.getString(5));
                bean.setRegDate(Date.valueOf(rs.getDate(6).toString()));
                bean.setRef(rs.getInt(7));
                bean.setReStep(rs.getInt(8));
                bean.setReLevel(rs.getInt(9));
                bean.setReadCount(rs.getInt(10));
                bean.setContent(rs.getString(11));
            }

            connection.close();

        } catch (Exception e){
            e.printStackTrace();
        }
        return bean;
    }

    // update 와 delete 시에도 사용할수 있다.
    public String getPass(int num) {
        String pass = "";

        try {
            getCon();

            String sql = "select password from jsp.board where number=?";
            pstmt = connection.prepareStatement(sql);

            pstmt.setInt(1, num);

            rs = pstmt.executeQuery();

            if (rs.next()){
                pass = rs.getString(1);
            }

            connection.close();

        } catch (Exception e) {
            e.printStackTrace();
        }

        return pass;
    }

    public void updateBoard(BoardBean bean) {

        try{
            getCon();

            String sql = "update jsp.board set subject=?, content=? where number=?";
            pstmt = connection.prepareStatement(sql);

            pstmt.setString(1, bean.getSubject());
            pstmt.setString(2, bean.getContent());
            pstmt.setInt(3, bean.getNumber());

            pstmt.executeUpdate();

            connection.close();

        } catch (Exception e){
            e.printStackTrace();
        }
    }

    public void deleteBoard(int num) {
        try {
            getCon();

            String sql = "delete from jsp.board where number=?";
            pstmt = connection.prepareStatement(sql);

            pstmt.setInt(1, num);

            pstmt.executeUpdate();

            connection.close();

        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public int getAllCount() {

        int count = 0;

        try {
            getCon();

            String sql = "select count(*) from jsp.board";
            pstmt = connection.prepareStatement(sql);

            rs = pstmt.executeQuery();

            if (rs.next()) {
                count = rs.getInt(1);
            }

            connection.close();

        } catch (Exception e) {
            e.printStackTrace();
        }

        return count;
    }
}
