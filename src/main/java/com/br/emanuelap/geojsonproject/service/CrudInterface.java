package com.br.emanuelap.geojsonproject.service;

import java.util.List;
import java.util.Optional;

public interface CrudInterface<T> {

    T save(T obj);

    List<T> findAll();

    Optional<T> findById(Long id);

    T update(Object obj);

    void deleteById(Long id);

}