package com.yylnb.controller;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.yylnb.entity.Employee;
import com.yylnb.service.EmployeeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

/**
 * @author RainLin
 * @date 2019/12/30 - 18:53
 */
@Controller
@RequestMapping("/emp")
public class EmployeeController {
    @Autowired
    EmployeeService employeeService;

    @RequestMapping("/queryEmpByPage")
    public String queryEmpByPage(@RequestParam(value = "pn", defaultValue = "1") Integer pn, Model model) {
        //使用分页插件，pn是页面传来的页码，5为每页最大显示数
        PageHelper.startPage(pn, 10);
        //获取所有员工
        List<Employee> emp = employeeService.queryAll();
        //包装所有员工，获得更多方法，5为显示5个页码
        PageInfo page = new PageInfo(emp,10);
        model.addAttribute("page", page);
        return "list";
    }
}
