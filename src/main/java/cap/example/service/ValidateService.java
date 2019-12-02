package cap.example.service;

import cap.example.beans.User;

public class ValidateService 
{
	public static boolean validateService(User u1, String accountType, String confirmPassword)
	{
		if(u1.getUsername() == null)
		{
			return false;
		}
		else if(u1.getPassword() == null)
		{
			return false;
		}
		else if(!u1.getPassword().equals(confirmPassword))
		{
			return false;
		}
		else if(u1.getFirstName() == null)
		{
			return false;
		}
		else if(u1.getLastName() == null)
		{
			return false;
		}
		else if(u1.getDob() == null)
		{
			return false;
		}
		else if(u1.getSsn() == null)
		{
			return false;
		}
		else if(u1.getEmail() == null)
		{
			return false;
		}
		else if(u1.getPhone() == null)
		{
			return false;
		}
		else if(u1.getHomeAddress() == null)
		{
			return false;
		}
		else if(u1.getMailingAddress() == null)
		{
			return false;
		}
		else if("SAVINGS".equalsIgnoreCase(accountType))
		{
			if(u1.getBalanceS() == 0)
			{
				return false;
			}
		}
		else if("CHECKING".equalsIgnoreCase(accountType))
		{
			if(u1.getBalanceC() == 0)
			{
				return false;
			}
		}
		else if("CD".equalsIgnoreCase(accountType))
		{
			if(u1.getBalanceCD() == 0)
			{
				return false;
			}
		}
		return true;
	}
}
