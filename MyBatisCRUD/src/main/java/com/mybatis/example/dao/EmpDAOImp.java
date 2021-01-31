package com.mybatis.example.dao;

import java.util.List;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.mybatis.example.beans.Emp;

@Repository
public class EmpDAOImp implements EmpDAO {

	private static final String LIST = "Employees.Select";
	private static final String INSERT = "Employees.Insert";
	private static final String EDIT = "Employees.Edit";
	private static final String DELETE = "Employees.Delete";

	@Autowired
	private SqlSession sqlSession;

	@Override
	public void insertEmployee(Emp emp) {
		// TODO Auto-generated method stub
		sqlSession.insert(INSERT, emp);
	}

	@Override
	public List<Emp> selectEmployee() {
		// TODO Auto-generated method stub
		List<Emp> list = sqlSession.selectList(LIST);
		for(Emp e : list){
			System.out.println(e.getName());
		}
		return list;
	}
	
	@Override
	public void editEmployee(Emp emp) {
		// TODO Auto-generated method stub
		System.out.println("edit in DAO imp");
		sqlSession.update(EDIT, emp);
	}
	
	@Override
	public void deleteEmployee(Emp emp) {
		// TODO Auto-generated method stub
		sqlSession.delete(DELETE, emp);
	}
}
