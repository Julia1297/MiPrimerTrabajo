package com.cba.MiPrimerTrabajo.Controllers;

import com.cba.MiPrimerTrabajo.Entities.Requirements;
import com.cba.MiPrimerTrabajo.Services.*;
import org.springframework.aop.target.LazyInitTargetSource;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.io.UnsupportedEncodingException;
import java.util.List;


@Controller
public class RequirementsControllers {
    private RequirementsService requirementsService;
    private CityService cityService;
    private CategoryService categoryService;

    private LinkService linkService;
    private CompanyService companyService;

    @Autowired
    public void setRequirementsService(RequirementsService requirementsService) {
        this.requirementsService = requirementsService;
    }

    @Autowired
    public void setCityService(CityService cityService) {
        this.cityService = cityService;
    }

    @Autowired
    public void setCategoryService(CategoryService categoryService) {
        this.categoryService = categoryService;
    }

    @Autowired
    public void setCompanyService(CompanyService companyService) {
        this.companyService = companyService;
    }

    @Autowired
    public void setLinkService(LinkService linkService) {
        this.linkService = linkService;
    }

    @RequestMapping("/")
    String home(Model model){
        model.addAttribute("categories",categoryService.listAllCategories());
        List <Requirements> requirements = (List<Requirements>) requirementsService.listAllRequirements();
        model.addAttribute("requirement1",requirements.get(0));
        model.addAttribute("requirements",requirements.subList(1,3));
        return  "home";
    }

    @RequestMapping("/searchCategory")
    String searchCategory(@RequestParam(value = "category", required = true, defaultValue = "1") Integer category, Model model){
        model.addAttribute("categories",categoryService.listAllCategories());
        model.addAttribute("category",categoryService.getCategory(category));
        model.addAttribute("requirements",requirementsService.getRequirementsByCategory(category));
        return  "viewSearchByCategory";
    }
    @RequestMapping("/searchByCategory/{category}")
    String searchByCategory(@PathVariable Integer category, Model model) throws UnsupportedEncodingException {
        model.addAttribute("categories",categoryService.listAllCategories());
        model.addAttribute("requirements",requirementsService.getRequirementsByCategory(category));
        model.addAttribute("category",categoryService.getCategory(category));

        return  "viewSearchByCategory";
    }

    @RequestMapping("/searchCity")
    String searchByCity(@RequestParam(value = "city", required = false, defaultValue = "0") Integer city, Model model){
        model.addAttribute("categories",categoryService.listAllCategories());
        model.addAttribute("requirements",requirementsService.getRequirementsByCity(city));
        return  "viewRequirements";
    }
    @RequestMapping("/searchAcademicLevel")
    String searchByAcademicLevel(@RequestParam(value = "academic", required = false, defaultValue = "") String academic, Model model){
        model.addAttribute("categories",categoryService.listAllCategories());
        model.addAttribute("requirements",requirementsService.getRequirementsByAcademicLevel(academic));
        return  "viewRequirements";
    }
    @RequestMapping("/searchDescription")
    String showRequirement(@RequestParam(value = "description", required = false, defaultValue = "") String description, Model model){
        model.addAttribute("requirements",requirementsService.getRequirementsByDescription(description));
        model.addAttribute("categories",categoryService.listAllCategories());
        return  "viewRequirements";
    }
    @RequestMapping("/showRequirement/{id}")
    String searchByDescription(@PathVariable Integer id, Model model) {
        model.addAttribute("categories",categoryService.listAllCategories());
        model.addAttribute("requirement", requirementsService.getRequirements(id));
        return  "viewOneRequirement";
    }
    @RequestMapping("/searchDetails")
    String searchDetails(Model model){
        model.addAttribute("categories",categoryService.listAllCategories());
        model.addAttribute("cities",cityService.listAllCities());
        model.addAttribute("companies",companyService.listAllCompanies());
        return  "viewSearchDetails";
    }
    @RequestMapping("/searchByDetails")
    String searchByDetails(@RequestParam(value = "academic", required = false, defaultValue = "") String academic,
                           @RequestParam(value = "experience", required = false, defaultValue = "") String experience,
                           @RequestParam(value = "languages", required = false, defaultValue = "") String languages,
                           @RequestParam(value = "knowledge", required = false, defaultValue = "") String knowledge,
                           @RequestParam(value = "city", required = false, defaultValue = "1") Integer city,
                           @RequestParam(value = "company", required = false, defaultValue = "1") Integer company,Model model){
        List<Requirements> requirements = (List<Requirements>) requirementsService.getRequirementsByDetails(languages,academic,experience,city,company,knowledge);
        model.addAttribute("categories",categoryService.listAllCategories());
        model.addAttribute("requirements",requirements);
        return  "viewRequirements";
    }
    @RequestMapping("/searchLinksByCategory")
    String searchLinksByCategory(@RequestParam(value = "category", required = false, defaultValue = "0") Integer category, Model model){

        if(category==0) {
            model.addAttribute("category",0);

            model.addAttribute("links", linkService.listAllLinks());
        }
        else {
            model.addAttribute("links", linkService.getLinksByCategory(category));
            model.addAttribute("category",categoryService.getCategory(category));

        }
        model.addAttribute("categories",categoryService.listAllCategories());
        return  "viewLinks";
    }
    @RequestMapping("/searchLinks/{category}")
    String searchLinks(@PathVariable Integer category, Model model){

        if(category==0) {
            model.addAttribute("category",0);

            model.addAttribute("links", linkService.listAllLinks());
        }
        else {
            model.addAttribute("links", linkService.getLinksByCategory(category));
            model.addAttribute("category",categoryService.getCategory(category));

        }
        model.addAttribute("categories",categoryService.listAllCategories());
        return  "viewLinks";
    }
    @RequestMapping("/announcements")
    String showAnnouncements(){


        return  "viewAnnouncement";
    }
    @RequestMapping("/questions")
    String questions(){


        return  "viewQuestions";
    }
    @RequestMapping("/presentation")
    String presentation(){


        return  "viewPresentation";
    }
}
