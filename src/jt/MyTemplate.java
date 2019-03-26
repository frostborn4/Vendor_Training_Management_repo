package jt;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.jdbc.core.JdbcTemplate;


public class MyTemplate {
	ApplicationContext context;
	JdbcTemplate temp;
	
	public MyTemplate() {
		context = new ClassPathXmlApplicationContext("spring-config.xml");
		temp = (JdbcTemplate) context.getBean("db");
	}
	
	public JdbcTemplate geTemplate(){
		return temp;
	}
	
	
	
//	public static void main(String s[]){
//		
//		
//		MyTemplate mtMyTemplate = new MyTemplate();
//
//		
//	}
}
