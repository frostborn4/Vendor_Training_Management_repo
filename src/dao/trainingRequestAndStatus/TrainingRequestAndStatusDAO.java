package dao.trainingRequestAndStatus;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.jdbc.core.JdbcTemplate;

public class TrainingRequestAndStatusDAO {
	
	ApplicationContext context;
	JdbcTemplate temp;

	public TrainingRequestAndStatusDAO() {
		context = new ClassPathXmlApplicationContext("spring-config.xml");
		temp = (JdbcTemplate) context.getBean("db");
	}
	
	
	
	
}
