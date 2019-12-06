package com.zhaokang.mapper;


import java.util.List;

import com.zhaokang.pojo.Info;

public interface IndexMapper {

	public List<Info> list();
	
	public void add(Info info);
	
	public void delete(Info info);
	
	public void update(Info c);
	
	public Info get(int id);
	
}
