package web_applications;

public class UserValidationService {

	
	public  boolean isUser(String user ,String password)
	{
		if (user.equals("test")&& password.equals("test"))
		{
			return true;
			
		}
		
		return false ;
	}
	
}