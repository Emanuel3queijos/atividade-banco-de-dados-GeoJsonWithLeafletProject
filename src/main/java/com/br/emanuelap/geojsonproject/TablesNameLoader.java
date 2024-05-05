package com.br.emanuelap.geojsonproject;

import com.br.emanuelap.geojsonproject.service.TableService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.CommandLineRunner;
import org.springframework.stereotype.Component;

import java.util.List;

@Component

public class TablesNameLoader implements CommandLineRunner {
    @Autowired
    private TableService tableService;

    @Override
    public void run(String... args) throws Exception {
        List<String> tableNames = tableService.getTableNames();
        System.out.println("Table Names:");
        for (String tableName : tableNames) {
            System.out.println(tableName);
        }

    }
}
