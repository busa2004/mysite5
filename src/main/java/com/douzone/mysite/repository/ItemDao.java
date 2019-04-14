package com.douzone.mysite.repository;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.douzone.mysite.vo.ItemVo;
import com.douzone.mysite.vo.SiteVo;
import com.douzone.mysite.vo.TaskVo;
@Repository
public class ItemDao {
	@Autowired
	private SqlSession sqlSession;
	
	public List<ItemVo> getList() {
		return sqlSession.selectList( "item.selectList");
	}

	public List<ItemVo> getVersionList() {
		return sqlSession.selectList( "item.versionList");
	}

}
