package cap.example.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import cap.example.beans.User;
import cap.example.dao.UserRepo;
import cap.example.service.ValidateService;

@Controller
public class FormController 
{
	@Autowired
	private UserRepo userRepo;
	
	@GetMapping("/")
	public String homePage()
	{
		return "form";
	}
	
	@GetMapping("/opened")
	public String openedPage()
	{
		return "opened";
	}
	
	@PostMapping("/openAccount")
	public String openAccount( @RequestParam String username,  @RequestParam String password,
			 @RequestParam String firstName,  @RequestParam String lastName,
			 @RequestParam String dob,  @RequestParam String ssn, 
			 @RequestParam String email,  @RequestParam String phone, 
			 @RequestParam String homeAddress,  @RequestParam String mailingAddress,
			 @RequestParam String accountType,  @RequestParam String balance,
			 @RequestParam String confirmPassword)
	{
		User u1 = new User();
		u1.setUsername(username);
		u1.setPassword(password);
		u1.setFirstName(firstName);
		u1.setLastName(lastName);
		u1.setDob(dob);
		u1.setSsn(ssn);
		u1.setEmail(email);
		u1.setPhone(phone);
		u1.setHomeAddress(homeAddress);
		u1.setMailingAddress(mailingAddress);
		if("SAVINGS".equalsIgnoreCase(accountType))
		{
			u1.setBalanceS(Double.parseDouble(balance));
		}
		else if("CHECKING".equalsIgnoreCase(accountType))
		{
			u1.setBalanceC(Double.parseDouble(balance));
		}
		else if("CD".equalsIgnoreCase(accountType))
		{
			u1.setBalanceCD(Double.parseDouble(balance));
		}
		if(!ValidateService.validateService(u1, accountType, confirmPassword))
		{
			return "redirect:/";
		}
		userRepo.save(u1);
		
		return "redirect:/opened";
	}
	
}
