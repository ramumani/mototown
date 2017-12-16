package com.mototown.dao;

import org.springframework.data.repository.CrudRepository;

import com.mototown.models.Vehicle;

public interface MotoTownRepository extends CrudRepository<Vehicle, Long>  {

}
