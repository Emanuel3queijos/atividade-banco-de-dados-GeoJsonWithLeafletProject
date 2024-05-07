package com.br.emanuelap.geojsonproject.model;

import com.br.emanuelap.geojsonproject.enums.PontoDrenagemEnums;
import jakarta.persistence.Entity;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.RequiredArgsConstructor;

import java.util.List;

@RequiredArgsConstructor
@Data
@EqualsAndHashCode(callSuper = true)
@Entity
public class PontoDrenagem extends ItemGeojson {



    private PontoDrenagemEnums pontoDrenagemEnums;
    private List<AreiaUmida> AreiasUmidas;
    private List<ItemGeojson> pontosDrenagem;
    private List<TrechoMassaDagua> trechosMassaDagua;
    private List<Corredeira> corredeiras;
    private List<FozMaritima> fozMaritimas;
    private List<PontoInicioDrenagem> pontoInicioDrenagems;
    private List<QuebraDagua> quebraDaguas;
    private List<Barragem> barragems;

}
