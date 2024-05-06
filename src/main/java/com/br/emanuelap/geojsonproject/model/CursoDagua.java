package com.br.emanuelap.geojsonproject.model;

import jakarta.persistence.Entity;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.RequiredArgsConstructor;

import java.util.List;

@EqualsAndHashCode(callSuper = true)
@Entity
@RequiredArgsConstructor
@Data
public class CursoDagua extends ItemGeojson {


    private List<ItemGeojson> GeoJsonItems;



}
