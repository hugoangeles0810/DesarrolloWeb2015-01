/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.desarrolloweb.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author arturo
 */
@Controller
public class CalculadoraController {
    
    @RequestMapping(value = "/", method = RequestMethod.GET)
    public String index(){
        return "index";
    }

    @RequestMapping(value = "/index.htm", method = RequestMethod.GET)
    public ModelAndView resultado(@RequestParam(value = "cap") int cap, @RequestParam(value = "expr1") int expr1, @RequestParam(value = "expr2") int expr2) {
        ModelAndView mv = new ModelAndView("index");
        mv.addObject("respuesta", operacion_con_dos_numeros(cap, expr1, expr2));
        return mv;
    }

    @SuppressWarnings("empty-statement")
    private int operacion_con_dos_numeros(int cap, int expr1, int expr2) {
        int rspta = 0;
        if (cap == 1) {
            rspta = sumar(expr1, expr2);
        }
        if (cap == 2) {
            rspta = restar(expr1, expr2);
        }
        if (cap == 3) {
            rspta = multiplicar(expr1, expr2);
        }
        if (cap == 4) {
            rspta = dividir(expr1, expr2);
        }
        return rspta;

    }

    public int sumar(int numero1, int numero2) {
        return numero1 + numero2;
    }

    public int restar(int numero1, int numero2) {
        return numero1 - numero2;
    }

    public int multiplicar(int numero1, int numero2) {
        return numero1 * numero2;
    }

    public int dividir(int numero1, int numero2) {
        return numero1 / numero2;
    }

}
