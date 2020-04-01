package org.sgl.orc.controllers;

import org.sgl.orc.daos.CursoDAO;
import org.sgl.orc.daos.UnidadeCurricularDAO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("cursos")
public class CursoController {
	
	@Autowired
    private CursoDAO cursooDao;
	
	@RequestMapping("/iniciar")
    public String form(){
        return "cursos/iniciar";
    }

}
