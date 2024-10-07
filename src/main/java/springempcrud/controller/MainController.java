package springempcrud.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import jakarta.servlet.http.HttpSession;
import springempcrud.dao.EmployeeDao;
import springempcrud.entity.Employee;

@Controller
public class MainController {
	@Autowired
	private EmployeeDao employeeDao;
	
	@RequestMapping(path="/home")
	public String home(Model m) {
		List<Employee> allEmp = employeeDao.getAllEmp();
		m.addAttribute("empployee", allEmp);
		return "redirect:/home";
	}
	

	
	@RequestMapping(path="/addEmp")
	public String addEmp() {
		return "addEmp";
	}
	
	@RequestMapping(path="/createEmp", method=RequestMethod.POST)
	public String createEmp(@ModelAttribute("employee") Employee employee, Model model) {
		System.out.println(employee);
		employeeDao.saveEmp(employee);
		model.addAttribute("msg", "Registered Successfully");
		return "redirect:/addEmp";
	}
	
	
}
