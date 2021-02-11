package com.karin.pomodoro.controllers;


import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;

import com.karin.pomodoro.models.Proyecto;
import com.karin.pomodoro.services.ProyectoService;
import com.karin.pomodoro.models.User;
import com.karin.pomodoro.services.UserService;

import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class ProyectosController {
	private final ProyectoService proServ;
	private final UserService uServ;
	public ProyectosController(ProyectoService proServ, UserService uServ) {
		this.proServ = proServ;
		this.uServ = uServ;
	}
	
	@RequestMapping("/nuevo-pomo")
	public String newProject() {
		return "newPomo.jsp";
	}
	
	@PostMapping("/nuevo-pomo")
	public String setProject(@RequestParam(value="titulo") String titulo, @RequestParam(value="descripcion") String descripcion, Model model, HttpSession session){
		Long userId = (Long) session.getAttribute("userId");
    	User user = uServ.findUserById(userId);
    	Proyecto project = new Proyecto(titulo,descripcion);
    	project.setUser(user);
    	model.addAttribute("project",project);
    	proServ.addProyect(project);
    	//int userProjects = project.setTareas(tareas);
    	//model.addAttribute("userProjects",userProjects);
		return "redirect:/proyectos";
	}
	@RequestMapping("/proyectos")
	public String showProjects(HttpSession session, Model model){
		Long userId = (Long) session.getAttribute("userId");
    	User user = uServ.findUserById(userId);
    	model.addAttribute("user", user);
    	List<Proyecto> projects = user.getProjects();
    	model.addAttribute("projects", projects);
		return "userProjects.jsp";
		
	}
	

}
