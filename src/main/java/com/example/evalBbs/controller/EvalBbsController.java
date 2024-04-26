package com.example.evalBbs.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.evalBbs.dao.IEvalBbsDao;


@Controller
public class EvalBbsController {
	
	@Autowired
	private IEvalBbsDao dao;
	
	@RequestMapping("/")
	public String root() {
			
		return "index";
	}
	
	@RequestMapping("/list")
	public String list(Model model) {
		
		model.addAttribute("list", dao.listDao());
		
		return "list";
	}
	
	@RequestMapping("/detail")
	public String view(HttpServletRequest request, Model model) {
		
		String sBno = request.getParameter("bno");
		model.addAttribute("dto", dao.detailDao(sBno));
			
		return "detail";
			
	}
	
	@RequestMapping("/writeForm")
	public String writeForm() {	
		
		return "writeForm";
	}
	
	@RequestMapping("/write")
	public String write(Model model, HttpServletRequest request) {
		
		dao.writeDao(request.getParameter("writer"),
				request.getParameter("title"),
				request.getParameter("content"));
	
		return "redirect:list";
	}
	
	
	@RequestMapping("/delete")
	public String delete(HttpServletRequest request, Model model) {
		
		dao.deleteDao(request.getParameter("bno"));
		
		return "redirect:list";
	}
	
}
