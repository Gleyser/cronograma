package org.sgl.orc.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {
	
	@RequestMapping("/")
    public String entrar(){
        //Entrando na home do sistema
        return "home";
    }
	
	@RequestMapping("sair")
    public String sair(){
        //Voltando para a home do sistema
        return "home";
    }

}
