package com.br.emanuelap.geojsonproject.controller;

import com.br.emanuelap.geojsonproject.service.GeoJsonService;
import com.br.emanuelap.geojsonproject.service.TableService;
import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import java.util.List;

@Controller
@RequiredArgsConstructor
public class GeoJsonControllers {

    @Autowired
    private TableService tableService;


    @Autowired
    private GeoJsonService geoJsonService;

    @GetMapping("/")
    public String getTableNames(Model model) {
        List<String> tableNames = tableService.getTableNames();
        model.addAttribute("tableNames", tableNames);
        model.addAttribute("tablesQtd", tableNames.size());


        return "index";
    }


}
