package vc.com.cartorios.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import vc.com.cartorios.dao.CartorioDao;
import vc.com.cartorios.model.Cartorio;

@Controller
public class CartoriosController {
	
	@Autowired
	private CartorioDao dao;
	
	
	@RequestMapping(value="/lista", method=RequestMethod.GET)
	@ResponseBody
	public ModelAndView home() {
		ModelAndView view = new ModelAndView("index");
		List<Cartorio> cartorios = dao.getCartorios();
		view.addObject("cartorios", cartorios);
		return view;
	}
	
	@RequestMapping(value="/", method=RequestMethod.POST)
	public String create(Cartorio cartorio) {
		
		dao.cadastra(cartorio);
		return "redirect:/lista";
	}
	
	@RequestMapping(value="/delete", method=RequestMethod.POST)
	public String delete(Long id) {
		
		dao.deleta(id);
		return "redirect:/lista";
	}
	
	@RequestMapping(value="/detalhes/{id}")
	public ModelAndView detalhes(@PathVariable("id") Long id) {
		
		ModelAndView view = new ModelAndView("detalhe-cartorio");
		Cartorio cartorio = dao.find(id);
		view.addObject("cartorio", cartorio);
		return view;
	}
		
}

