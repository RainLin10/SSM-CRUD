package com.yylnb.service.impl;

import com.yylnb.dao.EmployeeMapper;
import com.yylnb.entity.Employee;
import com.yylnb.service.EmployeeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author RainLin
 * @date 2019/12/30 - 18:56
 */
@Service
public class EmployeeServiceImpl implements EmployeeService {
    @Autowired
    EmployeeMapper employeeMapper;

    public List<Employee> queryAll(){
        return employeeMapper.queryAll();
    }
}
