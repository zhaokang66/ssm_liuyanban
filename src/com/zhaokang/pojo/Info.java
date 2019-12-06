package com.zhaokang.pojo;

public class Info {
	private int id;
	private String name;
	private String title;
	private String content;
	private String update_time;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	} 
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getUpdateTime() {
		return update_time;
	}
}
