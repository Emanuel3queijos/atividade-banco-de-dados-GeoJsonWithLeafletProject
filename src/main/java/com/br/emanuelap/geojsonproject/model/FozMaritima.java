package com.br.emanuelap.geojsonproject.model;


import jakarta.persistence.Entity;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.RequiredArgsConstructor;

import java.util.List;

@RequiredArgsConstructor
@Data
@EqualsAndHashCode(callSuper = true)
@Entity
public class FozMaritima extends ItemGeojson {

    private List<PontoDrenagem> pontoDrenagems;

}
