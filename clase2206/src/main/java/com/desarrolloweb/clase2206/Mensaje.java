/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.desarrolloweb.clase2206;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author arturo
 */
public class Mensaje {
    
    @RequestMapping(value="/index.htm")
    public ModelAndView resultado(){
        ModelAndView mv =  new ModelAndView("index");
       
        mv.addObject("respuesta","Hola A todos");
        
        return mv;
    }
}
