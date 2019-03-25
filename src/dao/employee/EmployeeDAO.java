package dao.employee;

import java.util.List;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.jdbc.core.JdbcTemplate;

public class EmployeeDAO {

	ApplicationContext context;
	JdbcTemplate temp;
	
	public EmployeeDAO() {
		context = new ClassPathXmlApplicationContext("spring-config.xml");
		temp = (JdbcTemplate) context.getBean("db");
	}
	
	public List<Employee> getAllEmployee() {
		String sql = "select * from employee";
		List<Employee> employeeList = temp.query(sql, new EmployeeMapper());
		return employeeList; 
	}
	
	public static void main(String[] args) {
		List<Employee> list = new EmployeeDAO().getAllEmployee();
		System.out.println(list.toString());
	}
}
