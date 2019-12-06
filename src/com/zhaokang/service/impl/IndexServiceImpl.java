package com.zhaokang.service.impl;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.zhaokang.mapper.IndexMapper;
import com.zhaokang.pojo.Info;
import com.zhaokang.service.IndexService;

@Service
public class IndexServiceImpl implements IndexService{
	@Autowired
	IndexMapper indexmapper;
	
	@Override
	public List<Info> list() {
		return indexmapper.list();
	}
	@Override
	public void add(Info c) {
		indexmapper.add(c);
	}
	@Override
	public void delete(Info c) {
		indexmapper.delete(c);
	}
	@Override
	public void update(Info c) {
		indexmapper.update(c);
	}
	@Override
	public Info get(int id) {
		return indexmapper.get(id);
	}
}
