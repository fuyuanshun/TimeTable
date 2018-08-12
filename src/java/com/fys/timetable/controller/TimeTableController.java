package com.fys.timetable.controller;

import com.fys.timetable.model.Table;
import com.fys.timetable.service.impl.TableServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.List;

@Controller
public class TimeTableController {
    @Autowired
    private TableServiceImpl tableService;

    @RequestMapping("/index")
    public String index(HttpServletRequest req, HttpServletResponse resp) {
        List<Table> monday = tableService.select(1);
        List<Table> tuesday = tableService.select(2);
        List<Table> wednesday = tableService.select(3);
        List<Table> thursday = tableService.select(4);
        List<Table> friday = tableService.select(5);
        List<Table> saturday = tableService.select(6);
        List<Table> sunday = tableService.select(7);
        req.setAttribute("monday", monday);
        req.setAttribute("tuesday", tuesday);
        req.setAttribute("wednesday", wednesday);
        req.setAttribute("thursday", thursday);
        req.setAttribute("friday", friday);
        req.setAttribute("saturday", saturday);
        req.setAttribute("sunday", sunday);
        return "index";
    }

    @RequestMapping("/insert")
    public String insert(HttpServletRequest req, HttpServletResponse response) {
        String date = req.getParameter("date");
        String time = req.getParameter("time");
        String thing = req.getParameter("thing");
        Table table = new Table(date, time, thing);
        if (tableService.isExist(table) == 1) {
            tableService.delete(table);
            System.out.println("该时间段已经有安排，删除原来的事件！");
        }
        tableService.insert(table);
        return "index";
    }
}
