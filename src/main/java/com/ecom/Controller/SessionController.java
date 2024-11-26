package com.ecom.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.ecom.bean.UserBean;
import com.ecom.dao.UserDao;
import com.ecom.service.OtpService;

import jakarta.servlet.http.HttpSession;

@Controller
public class SessionController {

	@Autowired
	UserDao userDao;

	@Autowired
	BCryptPasswordEncoder passwordEncode;
	
	@Autowired
	OtpService otpService;

	@GetMapping("/")
	public String welcome() {
		return "Welcome";
	}
	
	@GetMapping("/signup")
	public String signup() {
		return "Signup";
	}

	@GetMapping("/login")
	public String login() {
		return "Login";
	}

	@GetMapping("/logout")
	public String logout(HttpSession session) {
		session.setAttribute("user", null);
		return "redirect:/login";
	}

	@GetMapping("/forgetpassword")
	public String forgetpassword() {
		return "ForgetPassword";
	}
	
	@GetMapping("/about")
	public String aboutUs() {
		return "AboutUs";
	}

	@PostMapping("/signup")
	public String reg(UserBean user, Model model) {

		// check email alrady exist
		try {
			UserBean dbUser = userDao.getUser(user.getEmail());
			System.out.println("User :: " + dbUser);
			if (dbUser != null) {
				model.addAttribute("error", "Email already Exist!");
				return "Signup";
			}
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}

		user.setPassword(passwordEncode.encode(user.getPassword()));
		userDao.insertUser(user);
		System.out.println("Singup Success");
		return "Login";
	}

	@PostMapping("/authenticate")
	public String login(@RequestParam String email, @RequestParam String password, Model model,HttpSession session) {
		try {
			UserBean dbUser = userDao.getUser(email);
			Boolean isRigthPassword = false;
			if (dbUser != null) {
				isRigthPassword = passwordEncode.matches(password, dbUser.getPassword());

				if (!isRigthPassword) {
					model.addAttribute("error", "Worng Password");
					return "Login";
				}
				if (dbUser.getRole().equals("ADMIN")) {
					session.setAttribute("user", dbUser);
					session.setAttribute("isAdmin", true);
					// admin@12345
					return "redirect:/dashboard";
				} else if (dbUser.getRole().equals("CUSTOMER")) {
//					model.addAttribute("user", dbUser);
//					return "redirect:/home";
					session.setAttribute("user", dbUser);
					session.setAttribute("isAdmin", false);
					session.setMaxInactiveInterval(36000);
					model.addAttribute("name", dbUser.getFirstName());
					return "redirect:/products";
				} else {
					return "Error";
				}
			}
		} catch (Exception e) {
			System.out.println("SessionController :: Error " + e.getMessage());
			System.out.println("User not found");
			model.addAttribute("error", "User not found with this email!");
			return "Login";
		}
		return "Error";
	}

	@PostMapping("/sendOTP")
	public String sendotp(@RequestParam String email, Model model) {
		try {
			UserBean user = userDao.getUser(email);

			if (user != null) {
//				String otp = otpService.genereateOtp();
//				System.out.println("OTP ::"+otp);
				
				String otp = otpService.sendOtp(email);
				System.out.println("OTP ::"+otp);
				userDao.updateOtp(email, otp);
				model.addAttribute("email", email);
				return "VerifyOtp";
			} else {
				model.addAttribute("error", "Email Not Found");
				return "ForgetPassword";
			}
		} catch (Exception e) {
			System.out.println("email not found....");
			model.addAttribute("error", "Email Not Found");
			return "ForgetPassword";
		}
	}
	
	@PostMapping("/verifyOtp")
	public String verfiyotp(UserBean user,Model model) {
		try {
			if(userDao.verfiyOtp(user.getEmail(),user.getOtp())) {
				userDao.updatePassword(user.getEmail(), passwordEncode.encode(user.getPassword()));
				return "redirect:/login";
			}else {
				model.addAttribute("error","Please try again password could not change yet");
				return "VerifyOtp";
			}
		}catch(Exception e) {
			e.printStackTrace();
			model.addAttribute("error","Some thing want wrong");
			return "VerifyOtp";
		}
	}
}
