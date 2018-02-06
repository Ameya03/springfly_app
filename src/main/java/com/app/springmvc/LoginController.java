package com.app.springmvc;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.app.jee.LoginService;
import com.app.jee.UserValidationService;
 
 
@Controller
public class LoginController {   
	
	LoginService service = new LoginService();
	
	@RequestMapping (value ="/login", method = RequestMethod.GET )
	
	public String sayHello() {
		
		return "login";
	}
	
	

	@RequestMapping (value ="/login", method = RequestMethod.POST )
	
	public String handleLoginRequest(@RequestParam String name,@RequestParam String password,ModelMap model) {
		if(service.validateUser(name, password)) {
			
			model.put("name",name);
		    model.put("password", password);
			
			return "welcome";
			
		};
		
		model.put("error","error");
		return "login";
			
			
		
		
	
	}
	
	
}
