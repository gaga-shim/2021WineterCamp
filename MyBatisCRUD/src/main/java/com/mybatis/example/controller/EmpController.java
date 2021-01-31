package com.mybatis.example.controller;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.mybatis.example.beans.Emp;
import com.mybatis.example.service.EmpService;

@Controller
public class EmpController {
	@Inject
	EmpService empService;

	@RequestMapping(value = "/list", method = RequestMethod.GET)
	public String list(Model model) throws Exception {
		model.addAttribute("list", empService.selectEmployee());
		return "list";
	}
	
	@RequestMapping(value = "/empform")
	public String showform(Model model) throws Exception {
		model.addAttribute("command", new Emp());
		return "empform";
	}
	
	@RequestMapping(value = "/save", method = RequestMethod.POST)
	public String save(@ModelAttribute("emp") Emp emp) throws Exception {
		empService.insertEmployee(emp);
		System.out.println("save");
		return "redirect: /mybatisexample/list";
	}
	
	@RequestMapping(value="/editemp/{id}")  
	public String edit(@ModelAttribute("emp") Emp emp, Model model) throws Exception {
		model.addAttribute("command", emp);
		return "empeditform";
	}
	
	@RequestMapping(value="/editsave", method = RequestMethod.POST)
	public String editsave(@ModelAttribute("emp") Emp emp) throws Exception {
		try {
			empService.editEmployee(emp);
		} catch (Exception e) {
			System.out.println("에러");
			e.printStackTrace();
		}
		System.out.println("controller: editsave");
		return "redirect: /mybatisexample/list";
	}
 	
	@RequestMapping(value="/deleteemp/{id}", method = RequestMethod.GET)
	public String delete(@ModelAttribute("emp") Emp emp, Model model) throws Exception {
		try {
			empService.deleteEmployee(emp);
		} catch(Exception e) {
			e.printStackTrace();
		}
		System.out.println("delete");
		return "redirect: /mybatisexample/list";
	}
}