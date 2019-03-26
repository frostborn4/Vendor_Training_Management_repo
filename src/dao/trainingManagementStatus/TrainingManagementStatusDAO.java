package dao.trainingManagementStatus;

import java.util.List;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.jdbc.core.JdbcTemplate;

public class TrainingManagementStatusDAO {

	ApplicationContext context;
	JdbcTemplate temp;

	public TrainingManagementStatusDAO() {
		context = new ClassPathXmlApplicationContext("spring-config.xml");
		temp = (JdbcTemplate) context.getBean("db");
	}
	
	public List<TrainingManagementStatus> getAllTrainingManagementStatusDetails(){
		
		String sql = "select * from training_management_status";
		List<TrainingManagementStatus> TrainingStatusList = temp.query(sql,
				new TrainingManagementStatusMapper());
		return TrainingStatusList;
	}
	
	public void insertTrainingManagementStatus(int training_request_id, int status){
		
		String sql = "insert into training_management_status values(trng_management_status_id_seq.nextval, ?, ?)";
		
		temp.update(sql, new Object[]{training_request_id, status});
	}
	
	public void deleteTrainingManagementStatus(int training_management_stauts_id){
		
		String sql = "delete from training_management_status where training_management_status_id = ?";
		
		temp.update(sql, new Object[]{training_management_stauts_id});
	}
	
	public void updateTrainingManagementStatus(int training_management_status_id, int status){
		
		String sql = "update training_management_status set status = ? where training_management_status_id = ?";
		
		temp.update(sql, new Object[]{status, training_management_status_id});
	}
	
	public TrainingManagementStatus getTrainingManagementStatus(int training_management_status_id){
		
		String sql = "select * from training_management_status where training_management_status_id = ?";
		
		List<TrainingManagementStatus> tms = temp.query(sql, new Object[]{training_management_status_id}, new TrainingManagementStatusMapper());
		
		return tms.get(0);
	}
	
}
