package springempcrud.dao;

import java.util.List;

import springempcrud.entity.Employee;

public interface EmployeeDao {
	
	public int saveEmp(Employee employee);
	public Employee getEmpById(int id);
	public List <Employee> getAllEmp();
	public void updateEmp(Employee employee);
	public void deleteEmp(int id);

}
