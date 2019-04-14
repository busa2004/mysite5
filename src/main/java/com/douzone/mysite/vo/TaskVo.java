package com.douzone.mysite.vo;

public class TaskVo {
	private Long user_task_no;
	private Long no;
	private String title;
	private String content;
	private String user_name;
	
	public String getUser_name() {
		return user_name;
	}
	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}
	public Long getUser_task_no() {
		return user_task_no;
	}
	public void setUser_task_no(Long user_task_no) {
		this.user_task_no = user_task_no;
	}
	public Long getNo() {
		return no;
	}
	public void setNo(Long no) {
		this.no = no;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
}
