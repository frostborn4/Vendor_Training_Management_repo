package dao.vt.vendorTrainingRequest;

import java.util.List;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.jdbc.core.JdbcTemplate;

public class VendorTrainingRequestDAO {
	
	ApplicationContext context;
	JdbcTemplate temp;
	
	public VendorTrainingRequestDAO() {
		context = new ClassPathXmlApplicationContext("spring-config.xml");
		temp = (JdbcTemplate) context.getBean("db");
	}
	
	public List<VendorTrainingRequest> getAllVendorTrainingRequests() {
		String sql = "select * from vendor_training_request";
		List<VendorTrainingRequest> VendorTrainingRequestList = temp.query(sql, new VendorTrainingRequestMapper());
		return VendorTrainingRequestList;
	}	
	
	public static void main(String[] args) {
		List<VendorTrainingRequest> list = new VendorTrainingRequestDAO().getAllVendorTrainingRequests();
		System.out.println(list.toString());
	}

}