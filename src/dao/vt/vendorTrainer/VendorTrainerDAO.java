package dao.vt.vendorTrainer;

import java.util.List;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.jdbc.core.JdbcTemplate;


public class VendorTrainerDAO {

	ApplicationContext context;
	JdbcTemplate temp;
	
	public VendorTrainerDAO() {
		context = new ClassPathXmlApplicationContext("spring-config.xml");
		temp = (JdbcTemplate) context.getBean("db");
	}
	
	public List<VendorTrainer> getAllTrainerDetail() {
		String sql = "select * from vendor_trainer";
		List<VendorTrainer> VendorTrainerList = temp.query(sql, new VendorTrainerMapper());
		return VendorTrainerList; 
	}
	
	public void insertVendorTrainer(int vendor_details_id, String vendor_trainer_name, String phone, String email, String profile, String evaluation_status, String vendor_trainer_log){
		
		String sql = "insert into vendor_trainer values(vendor_trainer_id_seq.nextval, ?,?,?,?,?,?,?)";
		
		temp.update(sql, new Object[]{vendor_details_id,vendor_trainer_name,phone,email,profile,evaluation_status,vendor_trainer_log});
	}
	
	public void deleteVendorTrainer(int vendor_trainer_id){
		
		String sql = "delete from vendor_trainer where vendor_trainer_id = ?";
		
		temp.update(sql, new Object[]{vendor_trainer_id});
	}
	
	public void updateVendorTrainer(int vendor_trainer_id, int vendor_details_id, String vendor_trainer_name, String phone, String email, String profile, String evaluation_status, String vendor_trainer_log){
		
		String sql = "update vendor_trainer set vendor_details_id = ?, vendor_trainer_name = ?, phone = ?, email = ?, profile = ?, evaluation_status = ?, vendor_trainer_log where vendor_trainer_id = ?";
		
		temp.update(sql, new Object[]{vendor_details_id,vendor_trainer_name,phone,email,profile,evaluation_status,vendor_trainer_log, vendor_trainer_id});
	}
	
	public VendorTrainer getVendorTrainer(int vendor_trainer_id){
		
		String sql = "select * from vendor_trainer where vendor_trainer_id = ?";
		
		List<VendorTrainer> vt = temp.query(sql, new Object[]{vendor_trainer_id}, new VendorTrainerMapper());
		
		return vt.get(0);
	}
}
