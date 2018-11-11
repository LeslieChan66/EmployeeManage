package com.service;

import java.util.List;

import com.bean.Employee;
import com.dao.EmployeeDao;
import com.bean.PageBean;

public class EmployeeService {
    private EmployeeDao employeeDao=new EmployeeDao();

    //为查询一页数据提供业务逻辑
    public PageBean getPage(int pageSize,int pageNo) {

        List<Employee> employees=employeeDao.selectPage(pageSize, pageNo);
        long count=employeeDao.selectEmployeeCount();
        //如果一共count条数据，每一页数据有pageSize个，问，一共有多少页。
        //count/pageSize页。
        long pageSum=count/pageSize+(count%pageSize==0?0:1);
        PageBean pageBean=new PageBean();
        pageBean.setPageNo(pageNo);
        pageBean.setPageSize(pageSize);
        pageBean.setPageSum((int) pageSum);
        pageBean.setEmployees(employees);
        return pageBean;

    }
    public void addEmployee(int id, String name, int age, String position, double salary, String date) {
        EmployeeDao.insertToEmployee(id, name, age, position, salary, date);
    }
    public void delEmployee(int id) {
        EmployeeDao.deleteEmployee(id);
    }
    public void updateEmployee(int id, String name, int age, String position, double salary, String date) {
        EmployeeDao.updateEmployee(id, name, age, position, salary, date);
    }
    public Employee selectEmployee(int id) {
        return EmployeeDao.selectEmployee(id);
    }

    public Employee selectEmployeeName(String name) {
        return EmployeeDao.selectEmployeeName(name);
    }
}
