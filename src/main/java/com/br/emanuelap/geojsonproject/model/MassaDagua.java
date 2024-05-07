package com.br.emanuelap.geojsonproject.model;

import com.br.emanuelap.geojsonproject.enums.MassasDaguaEnums;
import jakarta.persistence.Entity;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.RequiredArgsConstructor;

import java.util.List;

@RequiredArgsConstructor
@Entity
@EqualsAndHashCode(callSuper = true)
@Data
public class MassaDagua extends ItemGeojson {


    private MassasDaguaEnums massasDaguaEnums;
    private List<MassaDagua> massasDagua;
    private List<Barragem> barragems;


}
