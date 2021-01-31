package com.mybatis.example.service;

import java.util.List;

import com.mybatis.example.beans.Emp;

public interface EmpService {
	public void insertEmployee(Emp emp) throws Exception;
	public List<Emp> selectEmployee() throws Exception;
	public void editEmployee(Emp emp) throws Exception;
	public void deleteEmployee(Emp emp) throws Exception;
}
