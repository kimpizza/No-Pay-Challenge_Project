package kr.dao;

import java.io.InputStream;
import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import kr.entity.Tbl_Level_Community;

public class LevelMyBatisDAO {
	private static SqlSessionFactory sqlSessionFactory; // connection을 빼야함
	static { // 초기화 블럭(프로그램 실행 시 딱 한번만 실행)
		try {		
			String resource = "kr/dao/mybatis-config.xml";
			InputStream inputStream = Resources.getResourceAsStream(resource); // 빨대 생성 || api에서 객체를 받아온다
			sqlSessionFactory =
			  new SqlSessionFactoryBuilder().build(inputStream); //build 가 빨대를 받아 xml을 읽어들여 Connection POOL 생성
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public List<Tbl_Level_Community> levelList(int level) {
		// connection을 pool에서 꺼내와야함(메서드를 사용함)
		SqlSession session= sqlSessionFactory.openSession(); // openSession = 세션을 꺼내온다
		// mapper파일에 있는 select문 실행 (SQL연결)		
		// SQL 쿼리를 알아야 한다
		System.out.println("level:"+level);
		List<Tbl_Level_Community> list = session.selectList("levelList", Integer.toString(level)); // 여러개를 가져오는 selectList / id이름을 찾아간다
		session.close(); // 세션 반납
		return list;
	}
	
	public void levelWrite(Tbl_Level_Community vo) {
		SqlSession session= sqlSessionFactory.openSession();
		session.insert("levelWrite", vo); // 왼쪽 : 쿼리문 insert id를 찾아감, 오른쪽 : vo > insert할 데이터
		session.commit(); // 실행 완료 // 위에서는 select이기에 commit을 안해도 된다
		session.close();
	}

	public void levelCountUpdate(int level) {
		SqlSession session= sqlSessionFactory.openSession(); // Connection을 Pool에서 꺼내온다
		session.update("levelCountUpdate", level);
		session.commit();
		session.close();
	}

	public Tbl_Level_Community levelView(int num) {
		SqlSession session= sqlSessionFactory.openSession();
		Tbl_Level_Community vo = session.selectOne("levelView", num); // select할 num
		session.close();
		return vo;
	}

	public void levelUpdate(Tbl_Level_Community vo) {
		SqlSession session= sqlSessionFactory.openSession();
		session.update("levelUpdate", vo);
		session.commit();
		session.close();
	}

	public void levelDelete(int num) {
		SqlSession session= sqlSessionFactory.openSession();
		session.delete("levelDelete", num);
		session.commit();
		session.close();
	}
	public Tbl_Level_Community levelrescent() {
		SqlSession session = sqlSessionFactory.openSession();
		Tbl_Level_Community vo = session.selectOne("levelrescent"); 
		session.close();
		return vo;
	}
	
}
