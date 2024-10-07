package springempcrud.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import springempcrud.entity.Employee;
@Repository
public class EmployeeDaoImpl implements EmployeeDao{
	
	@Autowired
	private HibernateTemplate hibernateTemplate;

	public HibernateTemplate getHibernateTemplate() {
		return hibernateTemplate;
	}

	public void setHibernateTemplate(HibernateTemplate hibernateTemplate) {
		this.hibernateTemplate = hibernateTemplate;
	}

	@Transactional
	@Override
	public int saveEmp(Employee employee) {
		int save = (Integer)hibernateTemplate.save(employee);
		return save;
	}

	@Override
	public Employee getEmpById(int id) {
		Employee employee = hibernateTemplate.get(Employee.class, id);
		return employee;
	}

	@Override
	public List<Employee> getAllEmp() {
		List<Employee> allEmp = hibernateTemplate.loadAll(Employee.class);
		return allEmp;
	}
	
	@Transactional
	@Override
	public void updateEmp(Employee employee) {
		hibernateTemplate.update(employee);
	}

	@Transactional
	@Override
	public void deleteEmp(int id) {
		Employee employee = hibernateTemplate.get(Employee.class, id);
		hibernateTemplate.delete(employee);
	}

}
