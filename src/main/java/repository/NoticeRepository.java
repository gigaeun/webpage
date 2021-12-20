package repository;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;

import model.NoticeDTO;
import model.ProductDTO;

public class NoticeRepository {
	@Autowired
	SqlSession sqlSession;
	private final String namespace = "mappers.noticeMapper";
	private String statement;
	public NoticeDTO noticeInfo(String noticeNo) {
		statement = namespace + ".noticeInfo";
		return sqlSession.selectOne(statement, noticeNo);
	}
	public void noticeUpdate(NoticeDTO dto) {
		statement = namespace + ".noticeUpdate";
		sqlSession.update(statement, dto);
	}
	public List<NoticeDTO> noticeList(){
		statement = namespace + ".noticeList";
		return sqlSession.selectList(statement);	
	}
	public String autoNum() {
		statement = namespace + ".autoNum";
		return sqlSession.selectOne(statement);
	}
	public void noticeInsert(NoticeDTO dto) {
		statement = namespace + ".noticeInsert";
		sqlSession.insert(statement, dto);
	}	
}
