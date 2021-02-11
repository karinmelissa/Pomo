package com.karin.pomodoro.repositories;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.karin.pomodoro.models.Recomendacion;

@Repository
public interface RecomendacionesRepository extends CrudRepository<Recomendacion, Long>{

}
