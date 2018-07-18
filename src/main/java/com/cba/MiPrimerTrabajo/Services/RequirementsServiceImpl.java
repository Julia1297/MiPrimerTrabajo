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
    public Iterable<Requirements> getRequirementsByAcademicLevel(String academicLevel) {
        return requirementsRepository.getRequirementsByAcademicLevel(academicLevel);
    }
}
