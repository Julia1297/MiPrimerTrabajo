package com.cba.MiPrimerTrabajo.Services;

import com.cba.MiPrimerTrabajo.Entities.City;

public interface CityService {
    Iterable<City> listAllCities();

    void saveCity(City category);

    City getCity(Integer id);

    void deleteCity(Integer id);
}

