/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.controller;


import com.dao.loginDao;
import com.dao.productDao;
import com.dao.registerDao;
import com.model.Product;
import com.model.Registration;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
/**
 *
 * @author shrey
 */
@Controller
public class ServletController{ 
    @Autowired
    registerDao regiDao;
    @Autowired
    loginDao logindao;
    @Autowired
    productDao productDao;
    
    ServletController()
    {
        System.out.println("Creating instance of servlet controller");
    }
  @RequestMapping({"/","/index"})
  public ModelAndView homePage()
  {      
      ModelAndView model=new ModelAndView("index");
      model.addObject("welcome message", "This is my first spring mvc code");
      return model;
  }
  @RequestMapping("/dbSave")
  public ModelAndView registerData(@ModelAttribute Registration register)          
  {
      register.setRole("ROLE_USER");
      register.setEnabled(true);
      regiDao.registerDetails(register);
      return new ModelAndView("redirect:/index");
  }
  @RequestMapping("/login")
  public ModelAndView loginpage()
  {
      return new ModelAndView("login");
  }
  @RequestMapping("/userlogin")
    public ModelAndView login(@RequestParam String username,@RequestParam String password,HttpSession session)
    {    
        boolean result=logindao.validateUser(username, password);
        if(result==true)
        {
        session.setAttribute("username", username);
        return new ModelAndView("index");
        }
        else{
            return new ModelAndView("login","errormessage","Invalid credentials");
            }
    }
    @RequestMapping("/logOut")
    public ModelAndView logout(HttpServletRequest request)
    {
        HttpSession session=request.getSession(false);
        session.setAttribute("username","");
        session.invalidate();
        return new ModelAndView("index");
    }
   @RequestMapping(value="/addProduct",method = RequestMethod.POST)
    public void addProduct(@ModelAttribute Product product)
    {
        productDao.saveProduct(product);
       
    }
    @RequestMapping("/edit/{productid}")  
    public ModelAndView editproduct(@PathVariable String productid) {  
        
		Product p=productDao.getProductById(productid);
        
        return new ModelAndView("editproduct","command",p);  
	}
//	@RequestMapping("/editsave")  
//    public ModelAndView editsaveproduct(@ModelAttribute Product p) {  
//        productDAO.updateProduct(p);
//        return new ModelAndView("redirect:/viewproduct");  
//	}

  @RequestMapping("/electronics")
  public ModelAndView electronics()
  {
      ModelAndView model=new ModelAndView("electronics");
      return model;
  }
  @RequestMapping("/clothes")
  public ModelAndView clothes()
  {
      ModelAndView model=new ModelAndView("clothes");
      return model;
  }
    
  
}
