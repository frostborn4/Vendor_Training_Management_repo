package trm.it.dao.trainingSchedule;

import java.util.List;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.jdbc.core.JdbcTemplate;

import trm.it.dao.trainingSchedule.TrainingSchedule;
import trm.it.dao.trainingSchedule.TrainingScheduleMapper;

@SuppressWarnings("deprecation")
public class TrainingScheduleDAO {

	ApplicationContext context;
	JdbcTemplate temp;

	public TrainingScheduleDAO() {
		context = new ClassPathXmlApplicationContext("spring-config.xml");
		temp = (JdbcTemplate) context.getBean("db");
	}
	
	public List<TrainingSchedule> getAllTrainingSchedules(){
		
		String sql = "select * from training_schedule";
		
		List<TrainingSchedule> TrainingScheduleList = temp.query(sql, new TrainingScheduleMapper());
		
		return TrainingScheduleList;
	}
	
	public String insertTrainingSchedule(String training_city, String training_state, String training_country, String training_zipcode, String training_time_zone, String training_location, String training_room_number, String training_start_date, String training_end_date, String training_break_down, String training_url, String training_phone) {		
		int schedule_id = temp.queryForInt("SELECT training_schedule_id_seq.nextval from dual");
		System.out.println("Schedule id is: "+ schedule_id);
		System.out.println(training_start_date.length());
		
		if(training_start_date.length() < 10){
			training_start_date = null;
		}
		if(training_end_date.length() < 10){
			training_end_date = null;
		} 
		
		String sql = "INSERT INTO training_schedule VALUES(?, ?, ?, ?, ?, ?, ?, ?, TO_DATE(?,  'yyyy/mm/dd hh24:mi:ss'), TO_DATE(?,  'yyyy/mm/dd hh24:mi:ss'), ?, ?, ?)";
		temp.update(sql, new Object[]{schedule_id, training_city, training_state, training_country, training_zipcode,training_time_zone,training_location,training_room_number, training_start_date, training_end_date, training_break_down, training_url, training_phone});
		
		return Integer.toString(schedule_id);
	}
	
	public void deleteTrainingSchedule(int training_schedule_id){
		
		String sql = "delete from training_schedule where training_schedule_id = ?";
		
		temp.update(sql, new Object[]{training_schedule_id});
	}
	
	public void updateTrainingSchedule(int trainingID, String training_city, String training_state, String training_country, String training_zipcode, String training_time_zone, String training_location, String training_room_number, String training_start_date, String training_end_date, String training_break_down, String training_url, String training_phone){
		if(training_start_date.length() < 10){
			training_start_date = null;
		}
		if(training_end_date.length() < 10){
			training_end_date = null;
		} 
		String sql = "update training_schedule set training_city = ?, training_state = ?, training_country = ?, training_zipcode = ?, training_time_zone = ?, training_location = ?, training_room_number = ?, training_start_date = TO_DATE(? , 'yyyy/mm/dd hh24:mi:ss'), training_end_date = TO_DATE(? , 'yyyy/mm/dd hh24:mi:ss'), training_break_down = ?, training_url = ?, training_phone = ? where training_schedule_id = ?";
		
		temp.update(sql, new Object[]{training_city,training_state,training_country, training_zipcode,training_time_zone,training_location, training_room_number, training_start_date, training_end_date, training_break_down, training_url, training_phone,trainingID});
	}	
	
	public TrainingSchedule getTrainingSchedule(String training_schedule_id){
		System.out.println("training schedule id is: " + training_schedule_id);
		String sql = "select * from training_schedule where training_schedule_id = ?";
		
		List<TrainingSchedule> ts = temp.query(sql, new Object[]{training_schedule_id}, new TrainingScheduleMapper());
		
		return ts.get(0);
	}
	public TrainingSchedule getTrainingScheduleByInternalTrainingRequest(String training_schedule_id){
		
		String sql = "SELECT s.* FROM training_schedule s JOIN internal_training_request it ON it.schedule_id = s.training_schedule_id WHERE it.schedule_id = ?";
		List<TrainingSchedule> ts = temp.query(sql, new Object[]{training_schedule_id}, new TrainingScheduleMapper());
		
		return ts.get(0);
	}
}
