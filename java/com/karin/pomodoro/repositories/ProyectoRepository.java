package com.karin.pomodoro.repositories;

import java.util.List;

import java.util.Optional;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.karin.pomodoro.models.Proyecto;



@Repository
public interface ProyectoRepository  extends CrudRepository<Proyecto, Long>{
	List<Proyecto> findAll();
    //List<Proyecto> findByDescriptionContaining(String search);
    //Long deleteByTitleStartingWith(String search);
	//Crear querys con rangos de tiempo
	//https://docs.spring.io/spring-data/jpa/docs/current/reference/html/#jpa.repositories
	//
    Optional <Proyecto> findByTitulo(String title);
    

	
}
