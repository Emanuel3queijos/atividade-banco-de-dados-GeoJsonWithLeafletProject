package com.br.emanuelap.geojsonproject.model;

import jakarta.persistence.Entity;
import lombok.Data;
import lombok.EqualsAndHashCode;

import java.util.List;

@Entity
@EqualsAndHashCode(callSuper = true)

@Data
public class MassaDagua extends ItemGeojson {


    private List<ItemGeojson> massasDagua;


}
