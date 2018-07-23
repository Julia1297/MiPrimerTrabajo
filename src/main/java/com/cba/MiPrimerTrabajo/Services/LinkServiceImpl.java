package com.cba.MiPrimerTrabajo.Services;

import com.cba.MiPrimerTrabajo.Entities.Link;
import com.cba.MiPrimerTrabajo.Repositories.LinkRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

@Service
public class LinkServiceImpl implements LinkService  {
    private LinkRepository linkRepository;
    @Autowired
    @Qualifier(value="linkRepository")
    public  void setCityRepository(LinkRepository linkRepository){
        this.linkRepository = linkRepository;
    }
    @Override
    public Iterable<Link> listAllLinks() {
        return linkRepository.findAll();
    }

    @Override
    public Iterable<Link> getLinksByCategory(Integer categoryid) {
        return linkRepository.getLinksByCategory(categoryid);
    }
}
