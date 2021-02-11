package com.karin.pomodoro.config;

import org.springframework.stereotype.Controller;
import org.springframework.web.servlet.config.annotation.ViewControllerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

@Controller
public class ConfiguracionView implements WebMvcConfigurer{
	
	public void agregarView(ViewControllerRegistry registro){
		//registro.addViewController("/home").setViewName("home");
		//registro.addViewController("/").setViewName("home");
		
	}

}
