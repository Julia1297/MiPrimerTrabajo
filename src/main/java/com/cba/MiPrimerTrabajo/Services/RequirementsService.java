package com.cba.MiPrimerTrabajo.Services;

import com.cba.MiPrimerTrabajo.Entities.Requirements;



public interface RequirementsService {
    Iterable<Requirements> listAllRequirements();

    void saveRequirements(Requirements requirements);

    Requirements getRequirements(Integer id);

    void deleteRequirements(Integer id);

    Iterable<Requirements> getRequirementsByDescription(String description);
    Iterable<Requirements> getRequirementsByCity( Integer cityid);
    Iterable<Requirements> getRequirementsByCategory(Integer categoryid);
    Iterable<Requirements> getRequirementsByAcademicLevel(String academicLevel);




}
