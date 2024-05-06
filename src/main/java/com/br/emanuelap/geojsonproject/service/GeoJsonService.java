package com.br.emanuelap.geojsonproject.service;


import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import java.util.List;

@Service
@RequiredArgsConstructor
public class GeoJsonService {
//
//    private final TableService tableService;
//
//    public String getGeoJsonData() throws JsonProcessingException {
//        // Obter dados de objetos GeoData do serviço
//        List<GeoData> geoDataList = tableService.getGeoData();
//
//        // Converter os dados para o formato do GeoJSON
//        ObjectMapper objectMapper = new ObjectMapper();
//        StringBuilder geoJsonBuilder = new StringBuilder();
//        geoJsonBuilder.append("{ \"type\": \"FeatureCollection\", \"features\": [");
//        for (GeoData geoData : geoDataList) {
//            String featureJson = objectMapper.writeValueAsString(geoDataToFeature(geoData));
//            geoJsonBuilder.append(featureJson).append(",");
//        }
//        // Remover a vírgula extra no final
//        if (!geoDataList.isEmpty()) {
//            geoJsonBuilder.deleteCharAt(geoJsonBuilder.length() - 1);
//        }
//        geoJsonBuilder.append("]}");
//
//        return geoJsonBuilder.toString();
//    }
//
//    private String geoDataToFeature(GeoData geoData) throws JsonProcessingException {
//        ObjectMapper objectMapper = new ObjectMapper();
//        String geometryJson = objectMapper.writeValueAsString(
//                new GeoJsonPoint(geoData.getLongitude(), geoData.getLatitude())
//        );
//        String propertiesJson = objectMapper.writeValueAsString(
//                new GeoJsonProperties(geoData.getDescricao())
//        );
//
//        return "{ \"type\": \"Feature\", \"geometry\": " + geometryJson + ", \"properties\": " + propertiesJson + "}";
//    }
}
