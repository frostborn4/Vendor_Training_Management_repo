package dao.vt.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import dao.trainingManagementStatus.TrainingManagementStatus;
import dao.vt.trainingRequestAndStatus.TrainingRequestAndStatus;
import dao.vt.trainingRequestAndStatus.TrainingRequestAndStatusDAO;
import dao.vt.vendorTrainingRequest.VendorTrainingRequest;
import dao.vt.vendorTrainingRequest.VendorTrainingRequestDAO;

@Controller
public class VendorController {
	
	@RequestMapping(value="/")
	public String loginView(ModelMap map) {
		List<TrainingRequestAndStatus> list101 = new TrainingRequestAndStatusDAO().getTrainingRequestDetail101();
		map.addAttribute("vendorTrainingRequestList1", list101);
		List<TrainingRequestAndStatus> list102 = new TrainingRequestAndStatusDAO().getTrainingRequestDetail102();
		map.addAttribute("vendorTrainingRequestList2", list102);
		System.out.println(list102.toString());
		List<TrainingRequestAndStatus> list103 = new TrainingRequestAndStatusDAO().getTrainingRequestDetail103();
		map.addAttribute("vendorTrainingRequestList3", list103);
		return "index";
	}	
	
	@RequestMapping(value="/process")
	public String process(ModelMap map) {
		System.out.println("HERE-----------------------------------");
		return "redirect:/";
	}	
	
}
