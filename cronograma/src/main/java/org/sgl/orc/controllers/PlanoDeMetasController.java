package org.sgl.orc.controllers;

import java.util.List;

import org.sgl.orc.daos.PlanoDeMetaDAO;
import org.sgl.orc.models.Curso;
import org.sgl.orc.models.PlanoDeMeta;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class PlanoDeMetasController {
	
	@Autowired
	private PlanoDeMetaDAO planoDao;
	
	@RequestMapping("inserirnovoplanodemeta")
    public String inserirNovoPlanoDeMeta(){
		
        return "plano/novo";
    }
	
	@RequestMapping(value = "inserirnovoplanodemeta", method = RequestMethod.POST)
	public ModelAndView inserir(PlanoDeMeta plano){
		plano.tornarPlanoRascunho();
		planoDao.gravar(plano);
		ModelAndView modelAndView = new ModelAndView("plano/inserir");
		modelAndView.addObject("plano", plano);
		return modelAndView;
		// Quando precisar redirecionar: return "redirect:listaContas";
		
	}
	
	@RequestMapping(value = "planosdemetarascunhos", method = RequestMethod.GET)
	public ModelAndView exibirPlanosDeMetasRascunhos(){
		List<PlanoDeMeta> planos = planoDao.recuperarPlanosDeMetaRascunho();
		ModelAndView modelAndView = new ModelAndView("plano/rascunho");
		modelAndView.addObject("planos", planos);
		return modelAndView;
		
	}
	
	@RequestMapping(value = "editarrascunho", method = RequestMethod.GET)
	public ModelAndView editarRascunho(Long id) {
		PlanoDeMeta planoASerEditado = planoDao.recuperaPlanoDeMeta(id);
		ModelAndView modelAndView = new ModelAndView("plano/inserir");
		modelAndView.addObject("plano", planoASerEditado);
		return modelAndView;
	}
	
	


}
