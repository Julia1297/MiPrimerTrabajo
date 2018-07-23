package com.cba.MiPrimerTrabajo.Repositories;

import com.cba.MiPrimerTrabajo.Entities.Link;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;

import javax.transaction.Transactional;

@Transactional

public interface LinkRepository extends CrudRepository<Link, Integer> {

    @Query("SELECT l from Link l where l.category.id = :categoryid")
    Iterable<Link> getLinksByCategory(@Param("categoryid") Integer categoryid);
}
