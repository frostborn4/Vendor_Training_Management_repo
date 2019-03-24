package dao.trainingRequest;

import java.util.List;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.jdbc.core.JdbcTemplate;

public class TrainingRequestDAO {

	ApplicationContext context;
	JdbcTemplate temp;
	
	public TrainingRequestDAO() {
		context = new ClassPathXmlApplicationContext("spring-config.xml");
		temp = (JdbcTemplate) context.getBean("db");
	}
	
	public List<TrainingRequest> getAllTrainerDetail() {
		String sql = "select * from training_request";
		List<TrainingRequest> TrainingRequestList = temp.query(sql, new TrainingRequestMapper());
		return TrainingRequestList; 
	}
	
	public static void main(String[] args) {
		List<TrainingRequest> list = new TrainingRequestDAO().getAllTrainerDetail();
		System.out.println(list.toString());
	}
}
