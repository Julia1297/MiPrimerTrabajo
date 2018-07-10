package com.cba.MiPrimerTrabajo.Services;

import com.cba.MiPrimerTrabajo.Entities.Company;

public interface CompanyService {
    Iterable<Company> listAllCompanies();

    void saveCompany(Company company);

    Company getCompany(Integer id);

    void deleteCompany(Integer id);
}
