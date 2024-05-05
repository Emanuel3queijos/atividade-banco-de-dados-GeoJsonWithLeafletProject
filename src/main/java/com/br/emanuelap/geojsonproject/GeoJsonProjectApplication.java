package com.br.emanuelap.geojsonproject;

import com.br.emanuelap.geojsonproject.service.TableService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

import java.util.List;

@SpringBootApplication
public class GeoJsonProjectApplication {


    public static void main(String[] args) {
        SpringApplication.run(GeoJsonProjectApplication.class, args);
    }

}