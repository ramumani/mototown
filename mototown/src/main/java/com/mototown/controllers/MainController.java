package com.mototown.controllers;

import org.apache.catalina.servlet4preview.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import com.mototown.services.MotoTownServices;

@Controller
public class MainController {
	
	@Autowired
	private MotoTownServices motoTownServices;
	
	@GetMapping("/helloJsp")
	public String renderIndex(){
		return "index";
		
	}
	
	@GetMapping("/findAllVehicles")
	public String findAllVehicles(HttpServletRequest httpServletRequest){
		System.out.println("size:"+motoTownServices.findAllVehicles().size());
		httpServletRequest.setAttribute("rAllVehicles", motoTownServices.findAllVehicles());
		return "vehicleList";
	}
}
