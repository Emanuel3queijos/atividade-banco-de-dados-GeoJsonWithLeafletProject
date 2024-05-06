package com.br.emanuelap.geojsonproject.model;


import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.RequiredArgsConstructor;


@RequiredArgsConstructor
@AllArgsConstructor
@Data
@Entity
public class ItemGeojson {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Integer id;
    private String description;
    private Double latitude;
    private Double longitude;
    private String name;

}
