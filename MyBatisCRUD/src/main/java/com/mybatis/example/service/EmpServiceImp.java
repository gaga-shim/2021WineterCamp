package com.mybatis.example.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mybatis.example.beans.Emp;
import com.mybatis.example.dao.EmpDAO;

@Service
public class EmpServiceImp implements EmpService {

	@Autowired
	private EmpDAO dao;

	@Override
	public void insertEmployee(Emp emp) throws Exception {
		// TODO Auto-generated method stub
		dao.insertEmployee(emp);
	}

	@Override
	public List<Emp> selectEmployee() throws Exception {
		// TODO Auto-generated method stub
		return dao.selectEmployee();
	}

	@Override
	public void editEmployee(Emp emp) throws Exception {
		// TODO Auto-generated method stub
		System.out.println("editEmployee in service impl");
		dao.editEmployee(emp);
	}

	@Override
	public void deleteEmployee(Emp emp) throws Exception {
		// TODO Auto-generated method stub
		dao.deleteEmployee(emp);
	}
	
}