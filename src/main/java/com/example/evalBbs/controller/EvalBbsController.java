package com.example.evalBbs.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class EvalBbsController {

	@RequestMapping("/")
	public @ResponseBody String root() {
		
		
		
		return "^^";
	}
	
}
