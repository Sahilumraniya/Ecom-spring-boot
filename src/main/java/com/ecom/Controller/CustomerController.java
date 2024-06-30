package com.ecom.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.ecom.bean.UserBean;

@Controller
public class CustomerController {

	@GetMapping("home")
	public String home(Model model) {
//		UserBean user = (UserBean) model.getAttribute("user");
//		if(user!=null) {
//			model.addAttribute("name", user.getFirstName());
//			return "Home";
//		}else {
//			model.addAttribute("error", "Please Login fisrt");
//			return "Login";
//		}
		return "Home";
	}
}
