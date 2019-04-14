package com.douzone.mysite.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.douzone.mysite.repository.BoardDao;
import com.douzone.mysite.repository.TaskDao;
import com.douzone.mysite.vo.BoardVo;
import com.douzone.mysite.vo.GuestbookVo;
import com.douzone.mysite.vo.TaskVo;

@Service
public class TaskService {
	
	
	@Autowired
	private TaskDao taskDao;
	
	public List<TaskVo> getList(Long no) {
		return taskDao.getList(no);
	}

	public List<TaskVo> getList() {
		return taskDao.getList();
	}

	
	
}
