package org.sgl.orc.controllers;

import java.util.List;

import org.sgl.orc.daos.LaboratorioDAO;
import org.sgl.orc.models.Laboratorio;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("laboratorios")
public class LaboratoriosController {
	
	@Autowired
    private LaboratorioDAO laboratorioDao;
	
	@RequestMapping("/form")
    public String form(){
        return "laboratorios/form";
    }
	
	@RequestMapping(method=RequestMethod.POST)
	public String gravar(Laboratorio laboratorio){
	    System.out.println(laboratorio); 
	    laboratorioDao.gravar(laboratorio);
	    return "/laboratorios/ok";
	}
	
	@RequestMapping(method=RequestMethod.GET)
	public ModelAndView listar(){
	    List<Laboratorio> labs = laboratorioDao.listar();
	    ModelAndView modelAndView = new ModelAndView("/laboratorios/lista");
	    modelAndView.addObject("laboratorios", labs);
	    return modelAndView;
	}

}
