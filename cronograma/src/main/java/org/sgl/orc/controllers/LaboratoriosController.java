package org.sgl.orc.controllers;

import org.sgl.orc.models.Laboratorio;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class LaboratoriosController {
	
	@RequestMapping("/laboratorios/form")
    public String form(){
        return "laboratorios/form";
    }
	
	@RequestMapping("/laboratorios")
	public String gravar(Laboratorio laboratorio){
	    System.out.println(laboratorio); 
	    return "/laboratorios/ok";
	}

}
