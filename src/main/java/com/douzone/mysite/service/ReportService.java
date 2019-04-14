package com.douzone.mysite.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.douzone.mysite.repository.GuestbookDao;
import com.douzone.mysite.repository.ReportDao;
import com.douzone.mysite.vo.GuestbookVo;
import com.douzone.mysite.vo.ReportVo;
import com.douzone.mysite.vo.TaskVo;

@Service
public class ReportService {
	
	@Autowired
	private ReportDao reportDao;
	

	public void insert( ReportVo reportVo ) {
		reportDao.insert(reportVo);
		
	}

	public List<ReportVo> getList(Long no) {
		return reportDao.getList(no);
	}

	public List<ReportVo> getList() {
		return reportDao.getList();
	}

	public void update(ReportVo reportVo) {
		reportDao.update(reportVo);
		
	}

	

}