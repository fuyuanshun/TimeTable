package com.fys.timetable.dao;

import com.fys.timetable.model.Table;

import java.util.List;

public interface TableDAO {
    List<Table> select(Integer date);

    void insert(Table table);

    void delete(Table table);

    Integer isExist(Table table);
}
