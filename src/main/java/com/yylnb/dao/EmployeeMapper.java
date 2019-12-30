package com.yylnb.dao;


import com.yylnb.entity.Employee;

import java.util.List;

public interface EmployeeMapper {
     List<Employee> queryAll();
}