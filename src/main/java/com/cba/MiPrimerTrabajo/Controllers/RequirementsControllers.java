package com.cba.MiPrimerTrabajo.Controllers;

import com.cba.MiPrimerTrabajo.Entities.Requirements;
import com.cba.MiPrimerTrabajo.Services.CategoryService;
import com.cba.MiPrimerTrabajo.Services.CityService;
import com.cba.MiPrimerTrabajo.Services.CompanyService;
import com.cba.MiPrimerTrabajo.Services.RequirementsService;
import org.springframework.aop.target.LazyInitTargetSource;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Controller
public class RequirementsControllers {
    private RequirementsService requirementsService;
    private CityService cityService;
    private CategoryService categoryService;
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


    @RequestMapping("/")
    String home(Model model){
        model.addAttribute("categories",categoryService.listAllCategories());
        return  "home";
    }

    @RequestMapping("/searchCategory")
    String searchByCategory(@RequestParam(value = "category", required = true, defaultValue = "0") Integer category, Model model){
        model.addAttribute("categories",categoryService.listAllCategories());
        model.addAttribute("requirements",requirementsService.getRequirementsByCategory(category));
        return  "viewRequirements";
    }

    @RequestMapping("/searchCity")
    String searchByCity(@RequestParam(value = "city", required = false, defaultValue = "0") Integer city, Model model){
        model.addAttribute("categories",categoryService.listAllCategories());
        model.addAttribute("requirements",requirementsService.getRequirementsByCity(city));
        return  "viewRequirements";
    }
    @RequestMapping("/searchDescription")
    String showRequirement(@RequestParam(value = "description", required = false, defaultValue = "") String description, Model model){
        model.addAttribute("requirements",requirementsService.getRequirementsByDescription(description));
        model.addAttribute("categories",categoryService.listAllCategories());
        return  "viewRequirements";
    }
    @RequestMapping("/showRequirement/{id}")
    String searchByDescription(@PathVariable Integer id, Model model){
        model.addAttribute("categories",categoryService.listAllCategories());
        model.addAttribute("requirement", requirementsService.getRequirements(id));
        return  "viewOneRequirement";
    }

}
