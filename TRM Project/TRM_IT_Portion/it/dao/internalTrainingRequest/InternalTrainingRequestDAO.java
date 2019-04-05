package trm.it.dao.internalTrainingRequest;

import java.util.List;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.jdbc.core.JdbcTemplate;

public class InternalTrainingRequestDAO {
	ApplicationContext context;
	JdbcTemplate temp;
	
	/*
	  internal_training_id number(5) primary key,
	  training_request_id number(5) CONSTRAINT itr_tr_fk references training_request(training_request_id) unique not null,
	  training_type varchar(20)
	  schedule_id number(5) CONSTRAINT itr_sched_fk references training_schedule(training_schedule_id) unique,
	  confirmed_trainer_id number(7) CONSTRAINT itr_train_fk references internal_trainer(it_trainer_id),
	  executive_id number(7) CONSTRAINT tr_exec_fk references employee(employee_id),
	  description_of_status varchar(30)
	*/
	
	public InternalTrainingRequestDAO() {
		context = new ClassPathXmlApplicationContext("spring-config.xml");
		temp = (JdbcTemplate) context.getBean("db");
	}
	
	public List<InternalTrainingRequest> getAllInternalTrainingRequests(){
		String sql = "SELECT * FROM internal_training_request";
		List<InternalTrainingRequest> it = temp.query(sql, new InternalTrainingRequestMapper());
		return it;
	}
	
	public void insertInternalTrainingRequest(int training_request_id){
		String sql = "INSERT INTO Internal_Training_Request values(internal_training_id_seq.nextval, ?, null, null, null, getRandExec, null)";
		temp.update(sql, new Object[]{training_request_id});
	}
	
	public void deleteInternalTrainingRequest(int training_request_id){
		String sql = "DELETE FROM internal_training_request WHERE training_request_id = ?";
		temp.update(sql, new Object[]{training_request_id});
	}
	
	public void updateInternalTrainingRequest(int internal_training_id, String sID, String type, String trainerID, String description){
		System.out.println("Confirmed trainer is: " + trainerID);
		String sql = "UPDATE internal_training_request SET schedule_id = ?, training_type = ?, confirmed_trainer_id = ?, description_of_status = ? WHERE training_request_id = ?";
		temp.update(sql, new Object[]{sID, type, trainerID, description, internal_training_id});
	}
	
	public InternalTrainingRequest getInternalTrainingRequest(int internal_training_id){
		String sql = "SELECT * FROM internal_training_request WHERE internal_training_id = ?";
		List<InternalTrainingRequest> it = temp.query(sql, new Object[]{internal_training_id}, new InternalTrainingRequestMapper());
		System.out.println(it.size());
		return it.get(0);
	}
	public InternalTrainingRequest getInternalTrainingRequestByTrainingRequestId(String training_request_id){
		System.out.println("Training Request ID is: " + training_request_id);
		String sql = "SELECT * FROM internal_training_request WHERE training_request_id = ?";
		List<InternalTrainingRequest> it = temp.query(sql, new Object[]{training_request_id}, new InternalTrainingRequestMapper());
		return it.get(0);
	}
	
	public int getExecutive(int internal_training_id){
		String sql = "SELECT executive_id FROM internal_training_request WHERE internal_training_id = ?";
		int exid = temp.queryForInt(sql, new Object[]{internal_training_id});
		return exid;
	}

	public void updateInternalTrainingRequest(int trainingID, String sID,
			String mode, int trainerID, String description) {
		// TODO Auto-generated method stub
		
	}
}