package dao.vt.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import dao.vt.vendorTrainingRequest.VendorTrainingRequest;
import dao.vt.vendorTrainingRequest.VendorTrainingRequestDAO;

@Controller
public class VendorController {
	
	@RequestMapping(value="/")
	public String loginView(ModelMap map) {
		List<VendorTrainingRequest> list = new VendorTrainingRequestDAO().getAllVendorTrainingRequests();
		System.out.println(list.toString());
		map.addAttribute("vendorTrainingRequestList", list);
		return "index";
	}	
	
//	@RequestMapping(value="/")
//	public void getVendorTrainingRequests(ModelMap map) {
//		List<VendorTrainingRequest> list = dao.getAllVendorTrainingRequests();
//		System.out.println(list.toString());
//		map.addAttribute("vendorTrainingRequestList", list);
//	}
	
	
}
