/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author Hugo
 */
@Controller
public class SaludoController {
    
    @RequestMapping("/saludo.htm")
    public ModelAndView saluda(@RequestParam(value = "nombre") String saludo){
        ModelAndView mv = new ModelAndView("saludo");
        mv.addObject("saludo", saludo);
        return mv;
    }
}
