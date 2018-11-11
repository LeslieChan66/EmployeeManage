package com.dao;

import com.bean.Employee;
import com.utils.C3P0Utils;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;
import org.apache.commons.dbutils.handlers.ScalarHandler;

import java.sql.SQLException;
import java.util.List;

public class EmployeeDao {
    //增删查改
    public static void insertToEmployee(int id, String name, int age, String position, double salary, String date)
    {
        QueryRunner queryRunner = new QueryRunner(C3P0Utils.getDataSource());
        String sql = "insert into employee(id, name, age, position, salary, date) values(?,?,?,?,?,?)";
        try {
            queryRunner.update(sql, id, name, age, position, salary, date);
        }
        catch (SQLException e)
        {
            e.printStackTrace();
        }
    }

    public static void deleteEmployee(int id)
    {
        QueryRunner queryRunner = new QueryRunner(C3P0Utils.getDataSource());
        String sql = "delete from employee where id = ?";
        try {
            queryRunner.update(sql, id);
        }
        catch (SQLException e)
        {
            e.printStackTrace();
        }
    }

    public static Employee selectEmployee(int id)
    {
        QueryRunner queryRunner = new QueryRunner(C3P0Utils.getDataSource());
        String sql = "select id,name,age,position,salary,date from employee where id=?";
        try {
            return queryRunner.query(sql,new BeanHandler<Employee>(Employee.class), id);
        }
        catch (SQLException e)
        {
            e.printStackTrace();
        }
        return null;
    }

    public static Employee selectEmployeeName(String name)
    {
        QueryRunner queryRunner = new QueryRunner(C3P0Utils.getDataSource());
        String sql = "select id,name,age,position,salary,date from employee where name=?";
        try {
            return queryRunner.query(sql,new BeanHandler<Employee>(Employee.class), name);
        }
        catch (SQLException e)
        {
            e.printStackTrace();
        }
        return null;
    }

    public static void updateEmployee(int id, String name, int age, String position, double salary, String date) {
        QueryRunner qr=new QueryRunner(C3P0Utils.getDataSource());
        String sql="update employee set name=?,age=?,position=?,salary=?,date=? where id=?";
        try {
            qr.update(sql,name,age,position,salary,date,id);
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
    }
    public long selectEmployeeCount() {
        QueryRunner qr=new QueryRunner(C3P0Utils.getDataSource());
        String sql="select count(*) from employee";
        try {
            return (long) qr.query(sql, new ScalarHandler());
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        return 0;
    }
    //查这一页数据的每一个product
    public List<Employee> selectPage(int pageSize, int pageNo){
        QueryRunner qr=new QueryRunner(C3P0Utils.getDataSource());
        //select * from tablename
        //where boolean1
        //group by columnname
        //having boolean1
        //order by columnname
        //limit ?,?
        //为啥要分页？
        //表的数据可能数十万条
        //一次性全查出来性能有问题。
        //所以我们想每一次只查询这个表数据的一部分。
        String sql="select  id, name, age, position, salary, date from employee limit ?,?";
        try {
            return qr.query(sql, new BeanListHandler<Employee>(Employee.class),(pageNo-1)*pageSize,pageSize);
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        return null;

    }
}
