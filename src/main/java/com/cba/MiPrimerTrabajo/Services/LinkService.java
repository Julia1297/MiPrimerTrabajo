package com.cba.MiPrimerTrabajo.Services;

import com.cba.MiPrimerTrabajo.Entities.Link;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;


public interface LinkService {


    Iterable<Link> listAllLinks();
    Iterable<Link> getLinksByCategory(Integer categoryid);



}
