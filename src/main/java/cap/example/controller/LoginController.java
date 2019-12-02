package cap.example.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import cap.example.beans.User;
import cap.example.dao.UserRepo;

@Controller
@SessionAttributes("user")
public class LoginController 
{
	@Autowired
	private UserRepo userRepo;
	
	@GetMapping("/login")
	public String loginPage(Model model)
	{
		User u1 = new User();
		model.addAttribute("user", u1);
		return "login";
	}
	
	@PostMapping("processLogin")
	public String processLogin(@RequestParam String username, @RequestParam String password,
			@ModelAttribute("user")User u1, Model model)
	{
		u1 = userRepo.findByUsername(username);
		if(u1 == null)
		{
			model.addAttribute("user", u1);
			return "redirect:/login";
		}
		if(u1.getPassword().equals(password))
		{
			model.addAttribute("user", u1);
			return "redirect:/account";
		}
		model.addAttribute("user", u1);
		return "redirect:/login";
	}
}
