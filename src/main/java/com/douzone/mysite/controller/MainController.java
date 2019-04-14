package com.douzone.mysite.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.douzone.dto.JSONResult;
import com.douzone.mysite.service.ItemService;
import com.douzone.mysite.service.ReportService;
import com.douzone.mysite.service.TaskService;
import com.douzone.mysite.vo.ItemVo;
import com.douzone.mysite.vo.ReportVo;
import com.douzone.mysite.vo.TaskVo;
import com.douzone.mysite.vo.UserVo;

@Controller
public class MainController {
	

	@Autowired
	private TaskService taskService;
	@Autowired
	private ReportService reportService;
	@Autowired
	private ItemService itemService;
	@RequestMapping(  "/" )
	public String login() {
		return "login/index";
	}
	@RequestMapping(  "/index"  )
	public String index(Model model,HttpSession session) {
		
		UserVo authUser = (UserVo)session.getAttribute("authUser");
		List<TaskVo> taskList = taskService.getList(authUser.getNo());
		model.addAttribute("navigation","task");
		model.addAttribute("taskList",taskList);
		return "main/index";
	}
	@RequestMapping(  value="/report/write", method=RequestMethod.GET  )
	public String writeForm(Model model,HttpSession session) {
		UserVo authUser = (UserVo)session.getAttribute("authUser");
		List<TaskVo> taskList = taskService.getList(authUser.getNo());
		model.addAttribute("taskList",taskList);
		model.addAttribute("navigation","reportwrite");
		return "main/index";
	}
	
	@RequestMapping(  value="/report/write", method=RequestMethod.POST  )
	public String write(Model model,ReportVo reportVo) {
		reportService.insert(reportVo);
		return "redirect:/index";
	}
	@RequestMapping( "/report/list" )
	public String list(Model model,HttpSession session) {
		UserVo authUser = (UserVo)session.getAttribute("authUser");
		List<ReportVo> reportList = reportService.getList(authUser.getNo());
		model.addAttribute("reportList",reportList);
		model.addAttribute("navigation","reportlist");
		return "main/index";
	}
	@RequestMapping( "/report/status" )
	public String status(Model model, ReportVo reportVo) {
		
		reportService.update(reportVo);
		return "redirect:/report/all";
	}
	@RequestMapping( "/eval" )
	public String eval(Model model, ReportVo reportVo) {
		
		List<TaskVo> taskList = taskService.getList();
		List<ItemVo> itemList = itemService.getList();
		List<ItemVo> versionList = itemService.getVersionList();
		model.addAttribute("taskList",taskList);
		model.addAttribute("itemList",itemList);
		model.addAttribute("versionList",versionList);
		model.addAttribute("navigation","eval");
		return "main/index";
	}
	@RequestMapping( "/report/all" )
	public String allList(Model model, String dropbox) {
		
		List<ReportVo> reportList = reportService.getList();
		model.addAttribute("reportList",reportList);
		if(dropbox != null) {
		model.addAttribute("dropbox",dropbox);
		}
		model.addAttribute("navigation","allreportlist");
		return "main/index";
	}
}