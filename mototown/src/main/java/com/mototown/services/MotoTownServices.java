package com.mototown.services;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mototown.dao.MotoTownRepository;
import com.mototown.models.Vehicle;

@Service
public class MotoTownServices {
	
	@Autowired
	private MotoTownRepository motoTownRepository;
	
	public Collection<Vehicle> findAllVehicles(){
		List<Vehicle> vehiclesAList = new ArrayList<Vehicle>();
		for (Vehicle vehicle : motoTownRepository.findAll()) {
			vehiclesAList.add(vehicle);
		}
		return vehiclesAList;
	}

}
