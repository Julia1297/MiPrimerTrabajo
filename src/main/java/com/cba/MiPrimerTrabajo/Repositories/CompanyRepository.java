package com.cba.MiPrimerTrabajo.Repositories;

import com.cba.MiPrimerTrabajo.Entities.Company;
import org.springframework.data.repository.CrudRepository;

import javax.transaction.Transactional;

@Transactional
public interface CompanyRepository extends CrudRepository<Company, Integer> {
}
