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
    Iterable<Requirements> getRequirementsByAcademicLevel(String academic);
    Iterable<Requirements> getRequirementsByDetails(String languages,String academic,String experience,Integer city, Integer company, String knowledge);
    Iterable<Requirements> getRequirementsByDetails1(String academic, String experience,Integer city,Integer company,String knowledge);
    Iterable<Requirements> getRequirementsByDetails2(String experience,Integer city,Integer company,String knowledge);
    Iterable<Requirements> getRequirementsByDetails3(Integer city,Integer company,String knowledge);
    Iterable<Requirements> getRequirementsByDetails4(Integer city,Integer company);
    Iterable<Requirements> getRequirementsByExperience(String experience);





}
