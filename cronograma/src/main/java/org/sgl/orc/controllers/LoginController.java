package org.sgl.orc.controllers;

import javax.servlet.http.HttpSession;

import org.sgl.orc.daos.UsuarioDAO;
import org.sgl.orc.models.Usuario;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("login")
public class LoginController {

	@Autowired
	private UsuarioDAO usuarioDao;

	@RequestMapping(method = RequestMethod.POST)
	public String efetuaLogin(Usuario usuario, HttpSession session) {
		Usuario usuarioRetornado = usuarioDao.retornaUsuarioSalvo(usuario);
		if (!(usuarioRetornado == null)) {
			// usuario existe, guardaremos ele na session
			session.setAttribute("usuarioLogado", usuarioRetornado);
			if (usuarioRetornado.getCargo().equals("Instrutor")) {
				return "inicioInstrutor";

			}

			else if (usuarioRetornado.getCargo().equals("Coordenador")) {
				return "inicioCoordenador";

			}

			
		}
		
		// O usuario errou a senha/email e volta para o formulario
		System.out.println("usuario digitou senha errada");
		return "home";

	}

}
