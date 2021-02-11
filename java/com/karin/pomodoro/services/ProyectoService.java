package com.karin.pomodoro.services;

import org.springframework.stereotype.Service;


import com.karin.pomodoro.models.Proyecto;
import com.karin.pomodoro.repositories.ProyectoRepository;

import java.util.Optional;

@Service
public class ProyectoService {
	private final ProyectoRepository ProyectRepo;
	public ProyectoService(ProyectoRepository ProyectRepo) {
		this.ProyectRepo = ProyectRepo;
	}
	
	public Proyecto addProyect(Proyecto p) {
		return ProyectRepo.save(p);
	}


	public Proyecto findProjectTitle(String title) {
		Optional <Proyecto> titulo =ProyectRepo.findByTitulo(title);
		if(titulo.isPresent()) {
            return titulo.get();
        } else {
            return null;
        }
	}
	
	

}
