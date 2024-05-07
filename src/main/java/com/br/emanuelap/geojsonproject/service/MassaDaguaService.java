package com.br.emanuelap.geojsonproject.service;

import com.br.emanuelap.geojsonproject.model.MassaDagua;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@RequiredArgsConstructor
@Service

public class MassaDaguaService implements CrudInterface<MassaDagua>{


    @Override
    public MassaDagua save(MassaDagua obj) {



        return null;
    }

    @Override
    public List<MassaDagua> findAll() {
        return List.of();
    }

    @Override
    public Optional<MassaDagua> findById(Long id) {
        return Optional.empty();
    }

    @Override
    public MassaDagua update(Object obj) {
        return null;
    }

    @Override
    public void deleteById(Long id) {

    }
}
