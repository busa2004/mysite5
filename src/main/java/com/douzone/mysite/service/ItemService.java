package com.douzone.mysite.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.douzone.mysite.repository.GuestbookDao;
import com.douzone.mysite.repository.ItemDao;
import com.douzone.mysite.repository.ReportDao;
import com.douzone.mysite.vo.GuestbookVo;
import com.douzone.mysite.vo.ItemVo;
import com.douzone.mysite.vo.ReportVo;
import com.douzone.mysite.vo.TaskVo;

@Service
public class ItemService {
	
	@Autowired
	private ItemDao itemDao;

	public List<ItemVo> getList() {
		return  itemDao.getList();
	}


	public List<ItemVo> getVersionList() {
		return  itemDao.getVersionList();
	}

	

	

}