package com.br.emanuelap.geojsonproject.model;




import jakarta.persistence.Entity;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.RequiredArgsConstructor;
import org.w3c.dom.ls.LSInput;

import java.util.List;

@RequiredArgsConstructor
@Data
@EqualsAndHashCode(callSuper = true)
@Entity
public class Barragem extends ItemGeojson {


    private List<Barragem>barragems;



}
