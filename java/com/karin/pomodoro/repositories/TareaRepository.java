package com.karin.pomodoro.repositories;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.karin.pomodoro.models.Tarea;

@Repository
public interface TareaRepository extends CrudRepository<Tarea, Long>{

}
