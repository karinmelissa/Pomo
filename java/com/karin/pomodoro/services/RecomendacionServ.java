package com.karin.pomodoro.services;

import com.karin.pomodoro.models.Recomendacion;
import org.springframework.stereotype.Service;
import com.karin.pomodoro.repositories.RecomendacionesRepository;

@Service
public class RecomendacionServ {
	private final RecomendacionesRepository recRepo;
	
	public RecomendacionServ(RecomendacionesRepository recRepo) {
		this.recRepo = recRepo;
	}
	
	public void addRecom(Recomendacion newRecom, String description) {
		newRecom.setDescripcion(description);
		recRepo.save(newRecom);
	}
	//Como identficar de que usuario es a recomendacion????
	//Se agrega al parentesis??
	//como identificarlo desde la session

}
