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
public class TrechoDrenagem extends ItemGeojson {



   private List<ItemGeojson> TrechosDrenagem;
    private List<MassaDagua> MassasDagua;
    private List<Corredeira> corredeiras;
    private  List<QuebraDagua> quebraDaguas;
    private List<Barragem> barragems;




}
