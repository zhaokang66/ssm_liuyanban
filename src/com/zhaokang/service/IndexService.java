package com.zhaokang.service;

import java.util.List;

import com.zhaokang.pojo.Info;

public interface IndexService {
	List<Info> list();
	void add(Info c);
	void delete(Info c);
	void update(Info c);
	Info get(int id);
}
