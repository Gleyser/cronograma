package org.sgl.orc.controllers;

import java.util.ArrayList;
import java.util.List;

import org.sgl.orc.daos.CursoDAO;
import org.sgl.orc.daos.UnidadeCurricularDAO;
import org.sgl.orc.models.Curso;
import org.sgl.orc.models.UnidadeCurricular;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class CursoController {
	
	@Autowired
    private CursoDAO cursoDao;
	
	@Autowired
    private UnidadeCurricularDAO disciplinaoDao;
	
	@RequestMapping("inserircursomodelo")
    public String form(){
        return "cursos/inserir";
    }
	
	@RequestMapping(value = "salvarcursomodelo",method = RequestMethod.POST)
	public String salvaCursoModelo(Curso curso) {
		curso.transformeEmModelo();
		cursoDao.gravar(curso);		
	    return "cursos/ok";
	}
	
	@RequestMapping(value = "editarcursomodelo",method = RequestMethod.GET)
	public ModelAndView editarCursoModelo() {
		List<Curso> cursosModelos = cursoDao.getCursosModelos();
		ModelAndView modelAndView = new ModelAndView("cursos/editarcursomodeloparte1");
	    modelAndView.addObject("cursosModelos", cursosModelos);
	    //List<String> idCursos = new ArrayList<String>();
	    //modelAndView.addObject("addCursosModelos", idCursos);	
	    modelAndView.addObject("alterado", false);	    
	    return modelAndView;
		

	}
	
	@RequestMapping(value = "editarcursomodelo",method = RequestMethod.POST)
	public ModelAndView editarCursoModeloSalvar(@RequestParam(value = "inserirIds", required = false) int[] inserirIds, Curso curso) {
		curso.setDisciplinas(cursoDao.getUCDoCurso(curso.getId()));		
		for (int id : inserirIds) {
			UnidadeCurricular ucModelo = disciplinaoDao.getUnidadeCurricular(id);
			curso.addDisciplina(ucModelo);			
		}
		curso.transformeEmModelo();
		cursoDao.atualizaCurso(curso);	
				
		ModelAndView modelAndView = new ModelAndView("cursos/editarcursomodeloparte2");
		modelAndView.addObject("cursosModelo", curso);
	    List<UnidadeCurricular> listaDeUcModelo = disciplinaoDao.getUnidadesCurricularesModelo();
	    modelAndView.addObject("ucsModelos", listaDeUcModelo);
	    modelAndView.addObject("alterado", true);	    
	    return modelAndView;

	}
	
	@RequestMapping(value = "buscarcursomodelo",method = RequestMethod.POST)
	public ModelAndView salvaCursoModelo(Long id) {
		Curso cursoModelo = cursoDao.getCurso(id);
		ModelAndView modelAndView = new ModelAndView("cursos/editarcursomodeloparte2");
	    modelAndView.addObject("cursosModelo", cursoModelo);
	    List<UnidadeCurricular> listaDeUcModelo = disciplinaoDao.getUnidadesCurricularesModelo();
	    modelAndView.addObject("ucsModelos", listaDeUcModelo);
		return modelAndView;
		
	}

}
