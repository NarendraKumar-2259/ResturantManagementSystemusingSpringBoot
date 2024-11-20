package com.miniprojectone.controller;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.miniprojectone.model.Items;
import com.miniprojectone.service.ItemService;
@Controller
public class ItemController {
	@Autowired
	ItemService service;
	@RequestMapping("/")
	public String getIndex() {
		return "index.jsp";
	}
	@RequestMapping("/save")
	public ModelAndView save(@ModelAttribute Items items) {
		Items response = service.save(items);
		ModelAndView mv = new ModelAndView("additem.jsp");
		if(response != null) {
			mv.addObject("response", "Item Added Succesfully");
		}
		else {
			mv.addObject("response", "Item not added");
		}
		return mv;	
	}
	
	@RequestMapping("/searchitem")
	public ModelAndView findById(@RequestParam Integer id) {
		Items item = service.findById(id);
		ModelAndView mv;
		
		if(item.getId() == 0) {
			mv = new ModelAndView("searchitem.jsp");
			mv.addObject("response", "Item not found with given id");
		}
		else {
			mv = new ModelAndView("searchitemresult.jsp");
			mv.addObject("item", item);
		}
		
		return mv;
		
	}
	@RequestMapping("findall")
	public ModelAndView getAllEmployees() {
		List<Items> items = service.findAll();
		ModelAndView mv = new ModelAndView("viewallitems.jsp");
		mv.addObject("itemslist", items);
		return mv;
	}
	
	@RequestMapping("/edititem")
	public ModelAndView updateItem(@ModelAttribute Items item) {
		Items reponse = service.update(item);
		ModelAndView mv = new ModelAndView("findall");
		return mv;
	}
	@RequestMapping("deletebyid")
	public ModelAndView deleteById(@RequestParam Integer id) {
		service.deleteById(id);
		ModelAndView mv = new ModelAndView("findall");
		return mv;
	}
}
