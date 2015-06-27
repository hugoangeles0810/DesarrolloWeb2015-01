/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import java.util.HashMap;
import java.util.Map;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.SimpleUrlHandlerMapping;

/**
 *
 * @author Hugo
 */
@Controller
public class SaludoController {
    
    @RequestMapping(value="/saludo.json")
    public @ResponseBody Map<String, Object> saluda(@RequestParam(value = "nombre") String nombre){
        Map<String, Object> map = new HashMap();
        map.put("nombre", nombre);
        map.put("saludo", "Holo Boli!");
        return map;
    }
}
