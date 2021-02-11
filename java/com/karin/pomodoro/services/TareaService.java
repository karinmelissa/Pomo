package com.karin.pomodoro.services;

import org.springframework.stereotype.Service;

import com.karin.pomodoro.models.Tarea;
import com.karin.pomodoro.repositories.TareaRepository;

@Service
public class TareaService {
	private final TareaRepository tareaRepo;
	public TareaService(TareaRepository tareaRepo) {
		this.tareaRepo = tareaRepo;
	}
	
	public Tarea addTarea(Tarea t) {
		return tareaRepo.save(t);
	}
}
