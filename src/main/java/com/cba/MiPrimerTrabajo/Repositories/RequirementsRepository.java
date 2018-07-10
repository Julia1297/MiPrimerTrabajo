package com.cba.MiPrimerTrabajo.Repositories;

import com.cba.MiPrimerTrabajo.Entities.Requirements;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;

import javax.transaction.Transactional;

@Transactional
public interface RequirementsRepository extends CrudRepository<Requirements, Integer> {

    @Query("SELECT r from Requirements r where r.description LIKE %:description%")
    Iterable<Requirements> getRequirementsByDescription(@Param("description") String description);

    @Query("SELECT r from Requirements r where r.city.id = :cityid")
    Iterable<Requirements> getRequirementsByCity(@Param("cityid") Integer cityid);

    @Query("SELECT r from Requirements r where r.category.id = :categoryid")
    Iterable<Requirements> getRequirementsByCategory(@Param("categoryid") Integer categoryid);


}
