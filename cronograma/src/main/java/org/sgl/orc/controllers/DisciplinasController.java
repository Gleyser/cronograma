package org.sgl.orc.controllers;

import org.sgl.orc.daos.LaboratorioDAO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("disciplinas")
public class DisciplinasController {
	
	@Autowired
    private LaboratorioDAO laboratorioDao;
	
	@RequestMapping("/form")
    public String form(){
        return "disciplinas/form";
    }

}
