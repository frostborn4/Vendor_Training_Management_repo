package bl;

import org.springframework.jdbc.core.JdbcTemplate;


import jt.MyTemplate;

public class SecurityCheck {
	public static boolean isUserValid(String username,String userpassword)
	{
		MyTemplate objTemplate = new MyTemplate();
		JdbcTemplate temp = objTemplate.geTemplate();
		
		int result = temp.queryForInt("select count(*) from employee where user_name=? "
				+ "and password=?",
				new Object[]{username,userpassword});
		
		if(result==1)
			return true;
		else
			return false;
	}
	
//	public static void main(String[] args) {
//		SecurityCheck objcheck = new SecurityCheck();
//		System.out.println(objcheck.isUserValid("JP3333333", "123"));
//				
//	}
}
