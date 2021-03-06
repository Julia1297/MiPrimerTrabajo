package com.cba.MiPrimerTrabajo.Services;

import com.cba.MiPrimerTrabajo.Entities.Requirements;
import com.cba.MiPrimerTrabajo.Repositories.RequirementsRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

@Service
public class RequirementsServiceImpl implements  RequirementsService{

    private RequirementsRepository requirementsRepository;
    @Autowired
    @Qualifier(value="requirementsRepository")
    public  void setCityRepository(RequirementsRepository requirementsRepository){
        this.requirementsRepository = requirementsRepository;
    }



    @Override
    public Iterable<Requirements> listAllRequirements() {
        return requirementsRepository.findAll();
    }

    @Override
    public void saveRequirements(Requirements requirements) {
        requirementsRepository.save(requirements);
    }

    @Override
    public Requirements getRequirements(Integer id) {
        return requirementsRepository.findOne(id);
    }

    @Override
    public void deleteRequirements(Integer id) {
        requirementsRepository.delete(id);
    }

    @Override
    public Iterable<Requirements> getRequirementsByDescription(String description) {
        return requirementsRepository.getRequirementsByDescription(description);
    }

    @Override
    public Iterable<Requirements> getRequirementsByCity(Integer cityid) {
        return requirementsRepository.getRequirementsByCity(cityid);
    }

    @Override
    public Iterable<Requirements> getRequirementsByCategory(Integer categoryid) {
        return requirementsRepository.getRequirementsByCategory(categoryid);
    }

    @Override
    public Iterable<Requirements> getRequirementsByAcademicLevel(String academic) {
        return requirementsRepository.getRequirementsByAcademicLevel(academic);
    }

    @Override
    public Iterable<Requirements> getRequirementsByDetails(String languages, String academic, String experience, Integer city, Integer company, String knowledge) {
        return requirementsRepository.getRequirementsByDetails(languages,academic,experience,city,company,knowledge);
    }

    @Override
    public Iterable<Requirements> getRequirementsByDetails1(String academic, String experience, Integer city, Integer company, String knowledge) {
        return requirementsRepository.getRequirementsByDetails1(academic,experience,city,company,knowledge);

    }

    @Override
    public Iterable<Requirements> getRequirementsByDetails2(String experience, Integer city, Integer company, String knowledge) {
        return requirementsRepository.getRequirementsByDetails2(experience,city,company,knowledge);

    }

    @Override
    public Iterable<Requirements> getRequirementsByDetails3(Integer city, Integer company, String knowledge) {
        return requirementsRepository.getRequirementsByDetails3(city,company,knowledge);
    }

    @Override
    public Iterable<Requirements> getRequirementsByDetails4(Integer city, Integer company) {
        return requirementsRepository.getRequirementsByDetails4(city,company);

    }

    @Override
    public Iterable<Requirements> getRequirementsByExperience(String experience) {
        return requirementsRepository.getRequirementsByExperience(experience);
    }
}
