package com.fys.timetable.service.impl;

import com.fys.timetable.dao.TableDAO;
import com.fys.timetable.model.Table;
import com.fys.timetable.service.TableService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class TableServiceImpl implements TableService {
    @Autowired
    private TableDAO tableDAO;

    @Override
    public List<Table> select(Integer date) {
        return tableDAO.select(date);
    }

    @Override
    public void delete(Table table) {
        tableDAO.delete(table);
    }

    @Override
    public Integer isExist(Table table) {
        return tableDAO.isExist(table);
    }

    @Override
    public void insert(Table table) {
        tableDAO.insert(table);
    }
}
