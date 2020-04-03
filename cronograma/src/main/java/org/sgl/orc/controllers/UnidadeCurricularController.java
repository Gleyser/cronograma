package org.sgl.orc.controllers;

import javax.servlet.http.HttpSession;

import org.sgl.orc.daos.LaboratorioDAO;
import org.sgl.orc.daos.UnidadeCurricularDAO;
import org.sgl.orc.models.UnidadeCurricular;
import org.sgl.orc.models.Usuario;
import org.sgl.orc.models.tipoCargo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class UnidadeCurricularController {
	
	@Autowired
    private UnidadeCurricularDAO disciplinaoDao;
	
	@RequestMapping("inserirunidadecurricularmodelo")
    public String form(){
        return "disciplinas/form";
    }
	
	@RequestMapping(value = "cadastrarunidadecurricular", method = RequestMethod.POST)
	public String salvaDisciplina(UnidadeCurricular disciplina) {
		disciplinaoDao.gravar(disciplina);		
	    return "disciplinas/ok";

	}


}
