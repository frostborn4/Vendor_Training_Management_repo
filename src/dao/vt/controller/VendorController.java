package dao.vt.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import bl.SecurityCheck;
import dao.employee.Employee;
import dao.employee.EmployeeDAO;
import dao.vt.vendorDetail.VendorDetail;
import dao.vt.vendorDetail.VendorDetailDAO;
import dao.vt.vendorTrainingRequestAndStatus.VendorTrainingRequestAndStatus;
import dao.vt.vendorTrainingRequestAndStatus.VendorTrainingRequestAndStatusDAO;

@Controller
public class VendorController {
	
//	@RequestMapping(value="/login")
//	public String login(ModelMap map) {
//		System.out.println("Login Controller");
//		return "redirect:/";
//	}
	@RequestMapping(value="/login")
	public String login(HttpServletRequest request, ModelMap model) {
		bl.SecurityCheck ob = new SecurityCheck();
		boolean result = ob.isUserValid(request.getParameter("un"), request.getParameter("up"));
		
		if(result){
			String uid = request.getParameter("un");
			
			Employee user = new EmployeeDAO().getEmployee(uid);
			String uservertical = user.getVertical();
			model.addAttribute("userid", uid);
			model.addAttribute("uservert", uservertical);
			//model.addAttribute("newmessage", message);
			System.out.println("login controller");
			//return "redirect:/";
			return "index";
		}else{
			return "redirect:/loginerror";
		}		
		
	}
	
	@RequestMapping(value="/loginerror")
	public String loginerror(ModelMap map) {
		System.out.println("Logout Controller");
		return "login";
	}
	
	@RequestMapping(value="/logout")
	public String logout(ModelMap map) {
		System.out.println("Logout Controller");
		return "login";
	}
	
	@RequestMapping(value="/")
	public String loginView(ModelMap map) {
		List<VendorTrainingRequestAndStatus> list101 = new VendorTrainingRequestAndStatusDAO().getTrainingRequestDetail101();
		map.addAttribute("vendorTrainingRequestList1", list101);
		List<VendorTrainingRequestAndStatus> list102 = new VendorTrainingRequestAndStatusDAO().getTrainingRequestDetail102();
		map.addAttribute("vendorTrainingRequestList2", list102);
		List<VendorTrainingRequestAndStatus> list103 = new VendorTrainingRequestAndStatusDAO().getTrainingRequestDetail103();
		map.addAttribute("vendorTrainingRequestList3", list103);
		List<VendorDetail> vendorDetails = new VendorDetailDAO().getAllVendorDetail();
		map.addAttribute("vendorDetailList", vendorDetails);
		return "index";
	}		
	
	@RequestMapping(value="/process", method = RequestMethod.POST, produces = MediaType.APPLICATION_JSON_VALUE)
	public @ResponseBody String process(@RequestParam("id") int id, ModelMap map) {
		System.out.println("THE ID sent is: " + id);
		List<VendorDetail> vendorDetailList = new VendorDetailDAO().getAllVendorDetail();
		map.addAttribute("vendorDetailList", vendorDetailList);
		//System.out.println(map.toString());
		return map.toString();	
	}
	
/*	@RequestMapping(value="/process/{id}", method = RequestMethod.GET, produces = MediaType.APPLICATION_JSON_VALUE)
	public String process(@PathVariable("id") int id, ModelMap map) {
		System.out.println("THE ID sent is: " + id);
		List<VendorDetail> vendorDetailList = new VendorDetailDAO().getAllVendorDetail();
		map.addAttribute("vendorDetailList", vendorDetailList);
		//System.out.println(map.toString());
		//return map.toString();
		return "redirect:/";
		
	}	*/
}
