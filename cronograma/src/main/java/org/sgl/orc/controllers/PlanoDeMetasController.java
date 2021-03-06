package org.sgl.orc.controllers;

import java.util.ArrayList;
import java.util.List;

import org.sgl.orc.daos.CursoDAO;
import org.sgl.orc.daos.ModalidadeDAO;
import org.sgl.orc.daos.PlanoDeMetaDAO;
import org.sgl.orc.models.Curso;
import org.sgl.orc.models.MetaAnual;
import org.sgl.orc.models.Modalidade;
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
	
	@Autowired
	private ModalidadeDAO modalidadeDao;
	
	@Autowired
	private CursoDAO cursoDao;
	
	@RequestMapping("inserirnovoplanodemeta")
    public String inserirNovoPlanoDeMeta(){
		return "plano/novo";
    }
	
	@RequestMapping(value = "inserirnovoplanodemeta", method = RequestMethod.POST)
	public ModelAndView inserir(PlanoDeMeta plano){
		plano.tornarPlanoRascunho();
		MetaAnual meta = planoDao.recuperaMetaAnualPeloAno(plano.getAno());
		plano.setMeta(meta);
		plano.inicializaListasDeCursos();
		planoDao.gravar(plano);
		ModelAndView modelAndView = new ModelAndView("plano/inserir");
		plano.inicializaModalidadesDoPlano();
		modelAndView.addObject("plano", plano);		
		
		modelAndView.addObject("modalidadesPagasDoPlano", plano.getModalidadesPagas());
		modelAndView.addObject("modalidadesGratuitasDoPlano", plano.getModalidadesGratuitas());	
						
		modelAndView.addObject("modalidadesPagasForaDoPlano", recuperarTodasModalidadesPagas());
		modelAndView.addObject("modalidadesGratuitasForaDoPlano",recuperarTodasModalidadesGratuitas());	
		
		// Inserir todos os cursos modelo
		modelAndView.addObject("cursosModelo",cursoDao.getCursosModelos());
		
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
		modelAndView.addObject("modalidadesPagasDoPlano", planoASerEditado.getModalidadesPagas());
		modelAndView.addObject("modalidadesGratuitasDoPlano", planoASerEditado.getModalidadesGratuitas());	
				
		List<Modalidade> modalidadesPagasForaDoPlano = retornaModalidadesForaDoPlano(recuperarTodasModalidadesPagas(), planoASerEditado);
		List<Modalidade> modalidadesGratuitasForaDoPlano = retornaModalidadesForaDoPlano(recuperarTodasModalidadesGratuitas(), planoASerEditado);
		
		modelAndView.addObject("modalidadesPagasForaDoPlano", modalidadesPagasForaDoPlano);
		modelAndView.addObject("modalidadesGratuitasForaDoPlano",modalidadesGratuitasForaDoPlano);	
		
		// Inserir todos os cursos modelo
		modelAndView.addObject("cursosModelo",cursoDao.getCursosModelos());
		
		return modelAndView;
	}
		
	
	@RequestMapping(value = "editaranotitulodameta", method = RequestMethod.POST)
	public ModelAndView editarMetas(Long id, String titulo, String ano, String [] modalidadesPagasDoPlano, String [] modalidadesGratuitasDoPlano) {
		PlanoDeMeta planoASerEditado = planoDao.recuperaPlanoDeMeta(id);
		planoASerEditado.setTitulo(titulo);
		planoASerEditado.setAno(ano);
		MetaAnual meta = planoDao.recuperaMetaAnualPeloAno(planoASerEditado.getAno());
		planoASerEditado.setMeta(meta);
		List<Modalidade> modalidadesAtualizadas = new ArrayList<Modalidade>();
		
		if (modalidadesGratuitasDoPlano != null) {
			for (String modalidadeGratuita : modalidadesGratuitasDoPlano) {
				Modalidade modalidade = modalidadeDao.recuperaModalidade(modalidadeGratuita, "GRATUITO");
				modalidadesAtualizadas.add(modalidade);
			}
		}
		
		if(modalidadesPagasDoPlano != null) {
			for (String modalidadePaga : modalidadesPagasDoPlano) {
				Modalidade modalidade = modalidadeDao.recuperaModalidade(modalidadePaga, "PAGO");
				modalidadesAtualizadas.add(modalidade);
			}
		}
				
		planoASerEditado.setModalidades(modalidadesAtualizadas);
			
		planoDao.atualizaPlano(planoASerEditado);
		ModelAndView modelAndView = new ModelAndView("plano/inserir");
					
		modelAndView.addObject("plano", planoASerEditado);
				
		modelAndView.addObject("modalidadesPagasDoPlano", planoASerEditado.getModalidadesPagas());
		modelAndView.addObject("modalidadesGratuitasDoPlano", planoASerEditado.getModalidadesGratuitas());	
				
		List<Modalidade> modalidadesPagasForaDoPlano = retornaModalidadesForaDoPlano(recuperarTodasModalidadesPagas(), planoASerEditado);
		List<Modalidade> modalidadesGratuitasForaDoPlano = retornaModalidadesForaDoPlano(recuperarTodasModalidadesGratuitas(), planoASerEditado);
		
		modelAndView.addObject("modalidadesPagasForaDoPlano", modalidadesPagasForaDoPlano);
		modelAndView.addObject("modalidadesGratuitasForaDoPlano",modalidadesGratuitasForaDoPlano);		
			
		// Inserir todos os cursos modelo
		modelAndView.addObject("cursosModelo",cursoDao.getCursosModelos());
		
		return modelAndView;
	}
	
	@RequestMapping("definirmetasanuais")
    public String definirMetasAnuais(){		
        return "plano/definirmetas";
    }
	
	@RequestMapping(value = "salvarmetaanual", method = RequestMethod.POST)
    public String salvarMetaAnual(MetaAnual meta){	
		planoDao.gravarMeta(meta);		
        return "inicioCoordenador";
    }
	
	// Recebe um plano e uma lista de modalidades e retorna as modalidades que não estão no plano
	private List<Modalidade> retornaModalidadesForaDoPlano(List<Modalidade> modalidades, PlanoDeMeta plano){
		List<Modalidade> retorno = new ArrayList<Modalidade>();
		for (Modalidade modalidade : modalidades) {
			if (!plano.getModalidades().contains(modalidade)) {
				retorno.add(modalidade);
			}
		}
		return retorno;
	}
	
	
	private List<Modalidade> recuperarTodasModalidadesPagas(){
		return modalidadeDao.recuperarModalidadesPagas();
	}
	
	private List<Modalidade> recuperarTodasModalidadesGratuitas(){
		return modalidadeDao.recuperarModalidadesGratuitas();
	}
	
	@RequestMapping(value = "inserircursogratuitonoplano", method = RequestMethod.POST)
	public ModelAndView inserirCursoGratuitoNoPlano(Long idPlano, Long idCurso, int quantidade, int modalidadeGratuitaDoPlano) {
		PlanoDeMeta planoASerEditado = planoDao.recuperaPlanoDeMeta(idPlano);
		Curso cursoModeloASerCopiado = cursoDao.getCurso(idCurso);
		Curso novoCurso = new Curso();
		novoCurso.removaModelo();
		novoCurso.setAno(planoASerEditado.getAno());
		novoCurso.setNome(cursoModeloASerCopiado.getNome());
		novoCurso.setCargaHorariaTotal(cursoModeloASerCopiado.getCargaHorariaTotal());
		novoCurso.setSetor(cursoModeloASerCopiado.getSetor());
		Modalidade modalidadeUnica = modalidadeDao.getModalidade(modalidadeGratuitaDoPlano);
		novoCurso.deixaComApenasUmaModalidade(modalidadeUnica);
		cursoDao.gravar(novoCurso);
		planoASerEditado.addCursoGratuito(novoCurso);
		planoDao.atualizaPlano(planoASerEditado);
		return editarRascunho(idPlano);	
		
	}
}
