package com.zhaokang.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.zhaokang.util.Page;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.zhaokang.pojo.Info;
import com.zhaokang.service.IndexService;

@Controller
@RequestMapping("")
public class IndexController {
	@Autowired
	IndexService indexService;
	
	@RequestMapping("index")
	public ModelAndView index( Page page) {
		ModelAndView mav = new ModelAndView();
		PageHelper.offsetPage(page.getStart(), 3);
		List<Info> cs = indexService.list();
		int total = (int) new PageInfo<>(cs).getTotal();
		page.caculateLast(total);
		mav.addObject("cs", cs);
		mav.setViewName("index");
		return mav;
	}
	
	@RequestMapping("add")
	public ModelAndView add(Info info){
		indexService.add(info);
		ModelAndView mav = new ModelAndView("redirect:/index");
		return mav;
	}
	
	@RequestMapping("delete")
	public ModelAndView delete(Info info){
		indexService.delete(info);
		ModelAndView mav = new ModelAndView("redirect:/index");
		return mav;
	}
	
	@RequestMapping("edit")
	public ModelAndView edit(Info info) {
		Info c = indexService.get(info.getId());
		ModelAndView mav = new ModelAndView("edit");
		mav.addObject("c", c);
		return mav;
	}
	
	@RequestMapping("update")
	public ModelAndView update(Info info) {
		indexService.update(info);
		ModelAndView mav = new ModelAndView("redirect:/index");
		return mav;
	}
}
