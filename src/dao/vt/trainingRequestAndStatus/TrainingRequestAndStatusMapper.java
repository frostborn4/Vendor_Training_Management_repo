package dao.vt.trainingRequestAndStatus;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import dao.Employee.Employee;
import dao.trainingRequest.TrainingRequest;
import dao.vt.vendorTrainingRequest.VendorTrainingRequest;

public class TrainingRequestAndStatusMapper implements RowMapper<TrainingRequestAndStatus>{

	@Override
	public TrainingRequestAndStatus mapRow(ResultSet result, int arg1) throws SQLException {
		
		VendorTrainingRequest vtr = new VendorTrainingRequest();
		vtr.setVendor_training_request_id(result.getInt(1));
		
		Employee employee = new Employee();
		employee.setFirst_name(result.getString(2));
		employee.setLast_name(result.getString(3));
		
		TrainingRequest tr = new TrainingRequest();
		tr.setRequest_training_module(result.getString(4));
		tr.setRequest_training_module_scope(result.getString(5));
		tr.setRequest_training_mode(result.getString(6));
		String start_date = result.getString(7);
		String[] date = start_date.split(" ");
		tr.setRequest_start_date(date[0]);
		String end_date = result.getString(8);
		String[] edate = end_date.split(" ");
		tr.setRequest_end_date(edate[0]);
		tr.setRequest_location(result.getString(9));
		tr.setRequest_approx_participant(result.getInt(10));
		tr.setTime_requested(result.getString(11));
		tr.setJustification_of_request(result.getString(12));
		
		TrainingRequestAndStatus trs = new TrainingRequestAndStatus();
		trs.setEmployee(employee);
		trs.setTrainingRequest(tr);
		trs.setVendorTrainingRequest(vtr);
		
		return trs;
	}

}
