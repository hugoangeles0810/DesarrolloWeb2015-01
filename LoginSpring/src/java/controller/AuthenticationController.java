/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author Hugo
 */
@Controller
public class AuthenticationController {
    
    @RequestMapping(value = "/login.htm", method = RequestMethod.GET)
    public ModelAndView login(){
        return new ModelAndView("login");
    }
    
    @RequestMapping(value = "/login.htm", method = RequestMethod.POST)
    public Object validateLogin(@RequestParam(value = "usuario") String usuario, 
                                      @RequestParam(value = "password") String password,
                                      HttpServletRequest httpRequest){
        
        ModelAndView mv;
        
        if (usuario.equals("hugo") && password.equals("123456")) {
            HttpSession session = httpRequest.getSession(true);
            session.setAttribute("usuario", usuario);
            return "redirect:index.htm";
        } else {
            mv = new ModelAndView("login");
            mv.addObject("error", "Usuario y/o password incorrecto");
            
            return mv;
        }
    }
    
    @RequestMapping(value = "/logout.htm", method = RequestMethod.POST)
    public String logout(HttpServletRequest request){
        request.getSession().invalidate();
        return "redirect:index.htm";
    }
    
}
