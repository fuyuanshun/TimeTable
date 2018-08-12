package com.fys.timetable.service;

import com.fys.timetable.model.Table;

import java.util.List;

public interface TableService {
    List<Table> select(Integer date);

    void delete(Table table);

    Integer isExist(Table table);

    void insert(Table table);
}
