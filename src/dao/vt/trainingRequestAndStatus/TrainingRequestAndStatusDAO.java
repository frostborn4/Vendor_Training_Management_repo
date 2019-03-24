package dao.vt.trainingRequestAndStatus;

import java.util.List;

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
	
	public List<TrainingRequestAndStatus> getTrainingRequestDetail101() {
		String sql = "select  v.vendor_training_request_id, e.first_name, e.last_name, \r\n" + 
				"        t.request_training_module, t.request_training_module_scope, \r\n" + 
				"        t.request_training_mode, t.request_start_date, t.request_end_date, \r\n" + 
				"        t.request_location, t.request_approx_participant, t.time_requested,\r\n" + 
				"        t.justification_of_request \r\n" + 
				"from employee e inner join training_request t on e.employee_id = t.requester_id\r\n" + 
				"inner join vendor_training_request v on t.training_request_id = v.training_request_id\r\n" + 
				"inner join training_management_status tms on t.training_request_id = tms.training_request_id\r\n" + 
				"where tms.status = 101";
		List<TrainingRequestAndStatus> TrainingRequestAndStatus = temp.query(sql, new TrainingRequestAndStatusMapper());
		return TrainingRequestAndStatus;
	}
	
	public List<TrainingRequestAndStatus> getTrainingRequestDetail102() {
		String sql = "select  v.vendor_training_request_id, e.first_name, e.last_name, \r\n" + 
				"        t.request_training_module, t.request_training_module_scope, \r\n" + 
				"        t.request_training_mode, t.request_start_date, t.request_end_date, \r\n" + 
				"        t.request_location, t.request_approx_participant, t.time_requested,\r\n" + 
				"        t.justification_of_request \r\n" + 
				"from employee e inner join training_request t on e.employee_id = t.requester_id\r\n" + 
				"inner join vendor_training_request v on t.training_request_id = v.training_request_id\r\n" + 
				"inner join training_management_status tms on t.training_request_id = tms.training_request_id\r\n" + 
				"where tms.status = 102";
		List<TrainingRequestAndStatus> TrainingRequestAndStatus = temp.query(sql, new TrainingRequestAndStatusMapper());
		return TrainingRequestAndStatus;
	}
	
	public List<TrainingRequestAndStatus> getTrainingRequestDetail103() {
		String sql = "select  v.vendor_training_request_id, e.first_name, e.last_name, \r\n" + 
				"        t.request_training_module, t.request_training_module_scope, \r\n" + 
				"        t.request_training_mode, t.request_start_date, t.request_end_date, \r\n" + 
				"        t.request_location, t.request_approx_participant, t.time_requested,\r\n" + 
				"        t.justification_of_request \r\n" + 
				"from employee e inner join training_request t on e.employee_id = t.requester_id\r\n" + 
				"inner join vendor_training_request v on t.training_request_id = v.training_request_id\r\n" + 
				"inner join training_management_status tms on t.training_request_id = tms.training_request_id\r\n" + 
				"where tms.status = 103";
		List<TrainingRequestAndStatus> TrainingRequestAndStatus = temp.query(sql, new TrainingRequestAndStatusMapper());
		return TrainingRequestAndStatus;
	}
	
	public static void main(String[] args) {
		List<TrainingRequestAndStatus> list = new TrainingRequestAndStatusDAO().getTrainingRequestDetail101();
		System.out.println(list.toString());
	}
	
}
