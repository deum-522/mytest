package member.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import conn.DBConnect;
import model.memberVO;

public class memberDAOImpl implements memberDAO{
	private DBConnect db;
	   
	public memberDAOImpl() {	// 기본 생성자 dao호출시 실행
	    db = DBConnect.getInstance();
	}

	@Override
	public void insert(memberVO m) {	// 회원가입
		// TODO Auto-generated method stub
		// TODO Auto-generated method stub
	      Connection conn = null;
	      
	      //db에 한 줄 추가하는 sql
	      String sql = "insert into membertest values(?,?,?,?,?,?,?)";// id,name,email,password,address,status,class
	      
	      PreparedStatement pstmt = null;
	      try {
	         //커넥션 객체 획득
	         conn = db.getConnection();
	         
	         //java에서 sql을 실행하는 PreparedStatement객체 생성
	         pstmt = conn.prepareStatement(sql);
	         
	         //sql의 ?파라메터 매칭
	         pstmt.setString(1, m.getId());
	         pstmt.setString(2, m.getName());
	         pstmt.setString(3,m.getEmail());
	         pstmt.setString(4, m.getPassword());
	         pstmt.setString(5, m.getAddress());
	         pstmt.setString(6, m.getStatus());
	         pstmt.setString(7, m.getCls());
	         
	         // sql 실행
	         pstmt.executeUpdate();
	      } catch(SQLException e) {
	         e.printStackTrace();
	      } finally {
	         try {
	            pstmt.close();
	            conn.close();
	         } catch(SQLException e) {
	            e.printStackTrace();
	         }
	      }
	}

	@Override
	public memberVO select(String id) {
		// TODO Auto-generated method stub
	    Connection conn = null;
	    ResultSet rs = null;
	    memberVO m = null;
	            
	    //db에서 id에 대한 결과를 출력하는 sql
	    String sql = "select * from membertest where id=?";
	            
	    PreparedStatement pstmt = null;
	            
	    try {
	               //커넥션 객체 획득
	    	conn = db.getConnection();
	               
	        //java에서 sql을 실행하는 PreparedStatement객체 생성
	        pstmt = conn.prepareStatement(sql);
	               
	        //sql의 ?파라메터 매칭
	        pstmt.setString(1, id);
	               
	        // sql 실행
	        rs = pstmt.executeQuery(); // 결과값 출력
	               
	        if (rs.next()) {
	             return new memberVO(rs.getString(1),rs.getString(2),rs.getString(3),rs.getString(4),rs.getString(5),rs.getString(6),rs.getString(7));
	        }
	               
	        } catch(SQLException e) {
	            e.printStackTrace();
	        } finally {
	        	try {
	                rs.close();
	                pstmt.close();
	                conn.close();
	            } catch(SQLException e) {
	                e.printStackTrace();
	            }
	        }
	            return null;

	}

	@Override
	public void update(memberVO m) {
		// TODO Auto-generated method stub
		// TODO Auto-generated method stub
	      Connection conn = null;
	      
	      String sql = "update membertest set password=?,name=?,email=?,address=? where id=?";
	      
	      PreparedStatement pstmt = null;
	      try {
	         conn = db.getConnection();
	         
	         pstmt = conn.prepareStatement(sql); // sql명령 실행
	         
	         pstmt.setString(1, m.getPassword());
	         pstmt.setString(2, m.getName());
	         pstmt.setString(3, m.getEmail());
	         pstmt.setString(4, m.getAddress());
	         pstmt.setString(5, m.getId());
	         
	         pstmt.executeUpdate();
	      } catch (SQLException e) {
	         e.printStackTrace();
	      } finally {
	         try {
	            pstmt.close();
	            conn.close();
	         } catch (SQLException e) {
	            e.printStackTrace();
	         }
	      }
	}

	@Override
	public void delete(String id) {
		// TODO Auto-generated method stub
	      Connection conn=null;
	      
	      String sql = "delete membertest where id=?";
	      
	      PreparedStatement pstmt = null;
	      
	      try {
	         conn = db.getConnection();
	         
	         pstmt = conn.prepareStatement(sql);
	         
	         pstmt.setString(1, id);
	         
	         pstmt.executeUpdate();
	         
	      } catch (SQLException e) {
	         e.printStackTrace();
	      } finally {
	         try {
	            pstmt.close();
	            conn.close();
	         } catch (SQLException e) {
	            e.printStackTrace();
	         }
	      }

	}

	@Override
	public void update_status(String s, String id) {
		// TODO Auto-generated method stub
	      Connection conn = null;
	            
	      String sql = "update membertest set status=? where id=?";
	            
	      PreparedStatement pstmt = null;
	      try {
	         conn = db.getConnection();
	               
	         pstmt = conn.prepareStatement(sql); // sql명령 실행
	               
	         pstmt.setString(1, s);
	         pstmt.setString(2, id);
	               
	         pstmt.executeUpdate();
	      } catch (SQLException e) {
	         e.printStackTrace();
	      } finally {
	         try {
	            pstmt.close();
	            conn.close();
	         } catch (SQLException e) {
	            e.printStackTrace();
	         }
	      }
	}

	@Override
	public ArrayList<memberVO> getAll() {
		// TODO Auto-generated method stub
		// TODO Auto-generated method stub
	      // TODO Auto-generated method stub
	      // TODO Auto-generated method stub
	         Connection conn = null;
	         ResultSet rs = null;
	         memberVO m = null;
	            
	         ArrayList<memberVO> result = new ArrayList<memberVO>();
	         //db에서 id에 대한 결과를 출력하는 sql
	         String sql = "select * from membertest";
	         
	         PreparedStatement pstmt = null;
	         
	         try {
	            //커넥션 객체 획득
	            conn = db.getConnection();
	            
	            
	            //java에서 sql을 실행하는 PreparedStatement객체 생성
	            pstmt = conn.prepareStatement(sql);
	            
	            // sql 실행
	            rs = pstmt.executeQuery(); // 결과값 출력
	            
	            
	            while (rs.next()) {
	               result.add(new memberVO(rs.getString(1),rs.getString(2),rs.getString(3),rs.getString(4),rs.getString(5),rs.getString(6),rs.getString(7)));
	            }
	            
	         } catch(SQLException e) {
	            e.printStackTrace();
	         } finally {
	            try {
	               rs.close();
	               pstmt.close();
	               conn.close();
	            } catch(SQLException e) {
	               e.printStackTrace();
	            }
	         }
	         return result;
	}

}
