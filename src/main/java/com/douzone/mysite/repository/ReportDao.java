package com.douzone.mysite.repository;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.douzone.mysite.vo.GalleryVo;
import com.douzone.mysite.vo.ReportVo;
import com.douzone.mysite.vo.TaskVo;

@Repository
public class ReportDao {

	@Autowired
	private SqlSession sqlSession;



	public void insert(ReportVo reportVo) {
		 sqlSession.insert( "report.insert", reportVo );
	}



	public List<ReportVo> getList(Long no) {
		return sqlSession.selectList( "report.selectList", no );
	}



	public List<ReportVo> getList() {
		return sqlSession.selectList( "report.selectAllList");
	}



	public void update(ReportVo reportVo) {
		sqlSession.update( "report.update", reportVo );
	}


}
