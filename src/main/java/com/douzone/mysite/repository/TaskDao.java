package com.douzone.mysite.repository;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.douzone.mysite.vo.SiteVo;
import com.douzone.mysite.vo.TaskVo;
@Repository
public class TaskDao {
	@Autowired
	private SqlSession sqlSession;
	
	public List<TaskVo> getList(Long no) {
		return sqlSession.selectList( "task.selectList" ,no);
	}

	public List<TaskVo> getList() {
		return sqlSession.selectList( "task.selectAllList");
	}
}
