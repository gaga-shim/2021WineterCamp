package com.mybatis.example.dao;

import java.util.List;

import com.mybatis.example.beans.Emp;

public interface EmpDAO {
	
	public List<Emp> selectEmployee();
	public void insertEmployee(Emp emp);
	public void editEmployee(Emp emp);
	public void deleteEmployee(Emp emp);
}
