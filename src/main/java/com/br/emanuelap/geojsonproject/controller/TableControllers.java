package com.br.emanuelap.geojsonproject.controller;

import com.br.emanuelap.geojsonproject.service.TableService;
import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@Controller
@RequiredArgsConstructor
public class TableControllers {

    @Autowired
    private TableService tableService;

    @GetMapping("/")
    public String getTableNames(Model model) {
        System.out.println("bateu");
    List<String> tableNames = tableService.getTableNames();
        model.addAttribute("tableNames", tableNames);
        model.addAttribute("tablesQtd", tableNames.size());
        return "index";
    }



}
