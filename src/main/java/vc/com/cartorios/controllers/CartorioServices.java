package vc.com.cartorios.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import vc.com.cartorios.dao.CartorioDao;
import vc.com.cartorios.model.Cartorio;

@RestController
public class CartorioServices {

	@Autowired
	private CartorioDao dao;
	
	@GetMapping("/cartorios")
	public List<Cartorio> getCartorios(){
		
		return dao.getCartorios();
	}
	
	//OBS: achei interessante fazer o endpoint que retornar todos cartorios das duas manerias diferentes 
	//( uma com JsonViewResolver e outra criando uma classe utilizando o RestController) so para 
	//mostrar um pouco mais do meu conhecimento com o framework.
	
}
