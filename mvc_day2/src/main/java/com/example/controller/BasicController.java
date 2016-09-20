package com.example.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class BasicController {
	
	@RequestMapping(value="/hello", method=RequestMethod.GET)
	public String sayHello(Model model){
		model.addAttribute("message", "Good Morning");
		return "showMessage";
	}
	
	@RequestMapping(value="/any.do")
	public String anyMethod(Model model){
		model.addAttribute("message", "방식 무관");
		return "showMessage";
	}
	
	@RequestMapping(value="/only", method=RequestMethod.POST)
	public String onlyMethod(Model model){
		model.addAttribute("message", "Post요청 처리됨.");
		return "showMessage";
	}
	
	@RequestMapping(value="/param", params={"name", "age"})
	public String needParam(Model model, HttpServletRequest request, HttpSession session){
		String name = request.getParameter("name");
		String age = request.getParameter("age");
		session.setAttribute("name", name);
		session.setAttribute("age", age);
		model.addAttribute("message", "parameter 잘 넘어옴." + name +"," + age);
		return "showMessage";
	}
	
	@RequestMapping(value="/paramValue", params={"name=hong", "age"})
	public String needParamValue(Model model){
		model.addAttribute("message", "이름은 hong");
		return "showMessage";
	}
	
	@RequestMapping(value="/add")
	public String add(Model model, @RequestParam double a, @RequestParam int b){
		model.addAttribute("message", "두 수의 합은 : " + (a+b));
		return "showMessage";
	}
	
	@RequestMapping("/loc/{building}/{floor}/{room}")
	public String restful(Model model, @PathVariable int building, @PathVariable int floor, @PathVariable int room){
		model.addAttribute("message", building + "공 " + floor + "층 " + room + "호");
		return "showMessage";
	}
	
	public String template(Model model){
		return "showMessage";
	}

}

